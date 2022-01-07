from matplotlib import pyplot as plt
import numpy as np
import re
import pickle
from emtools import listOflist2dict
from igraph import *
import graph_tools

from graph_tools import visu_community
####################################################################################
### GET TRIPLETS OF VERTICES OF AN EDGE AND WEIGHT
#   (encodes to utf-8 and converts to integer )
# -----------------------------------------------------------------------------------

def edge_weight_trio(graph):
    """

    :param graph:
    :return: sorted edges (pairs of vertices) and associated weight
    """

    edge_weight = [(edge[0], edge[1], int(graph.get_edge_data(edge[0], edge[1])[0]['weight'].encode('utf-8')))
             for edge in graph.edges()]

    # Sort according to the weight value (third position in the tuple)
    edge_weight.sort(key = lambda x: x[2], reverse=True)

    return edge_weight



def weight_2_hist(edge_weight):

    """
    The histogram of the weights
    :param edge_weight: List of tuples : vertices pairs and associated weight
    :return: prints histogram plot
    """

    nozero_edgeweight = [item for item in edge_weight if item[2] > 0]

    to_hist = [item[2] for item in nozero_edgeweight]


    plt.hist(to_hist,normed=False, facecolor='b', alpha=0.75)

    plt.xlabel('Rule to rule impact strength')
    plt.ylabel('Frequency' )
    plt.title('Histogram of rule impacts')

    # plt.axis([40, 160, 0, 0.03])
    plt.grid(True)
    plt.show()



####################################################################################
### GENERAL: obs to rules mapping :
# -----------------------------------------------------------------------------------


def parse_obs(ka_file):

    """
    ### 1 . parsing observables
    :param ka_file:
    :return:
    """

    with open(ka_file, 'rb') as f:
        reader = f.read()

    parse1 = re.sub(r'\n%obs: |%obs: ', ';', reader)
    parse2 = parse1.split(';')[1:]
    parse3 = [re.sub(r'\' |\'', ';', i) for i in parse2]
    parse4 = [i.split(';')[1:] for i in parse3]

    return  parse4


def parseobs_dict(parse4):

    # todo: MORE GENERAL:

    resdict = listOflist2dict(parse4)

        # todo: add here : if len(v) > 1: replace all non-alphabetic signs and join all strings into one divided with a comma

    for k, v in resdict.iteritems():
        if k == 'FRET data':
            resdict[k] = [i for i in v if i!='' and i!= "\ " and i!= '\n']

        pars_v = [re.split("\(|\)|\,", i) for i in v]
        pars_vv = [j for i in pars_v for j in i]
        pars_vvv = [x for x in pars_vv if x and x!='/ ' and x !='\n']

        resdict[k] = pars_vvv

    return resdict



def parse_rules(ka_file):

    """
    ### 2. parsing rUles

    :param ka_file:
    :return:
    """

    with open(ka_file, 'rb') as f:
        reader = f.read()

    rules = reader.split('\n')
    # remove preciding '#'
    rules2 = [x.split("' ") for x in rules if x and not re.match('^#', x)]

    rules3 = listOflist2dict(rules2)

    for k, v in rules3.items():
        new_k = re.sub("^'", "", k)

        rules3[new_k] = rules3[k]
        del rules3[k]
        if len(v) != 1:
            rules3[new_k] = [', '.join(v)]

    return rules3


def match_obs2rules(obs_parsed, rules_parsed):

    """
    MATCH OBSERVABLES TO RULES VIA REGEX FUNCTIONS
    MAIN FUNCTION

    :param obs_parsed:
    :param rules_parsed:
    :return: DICT OF LISTS
    """
    obs_name2rl_name={}
    for keyO, valO in obs_parsed.iteritems():
        for keyR, valR in rules_parsed.iteritems():
            assert len(valR) == 1, "There is more than one string rule."
            if all(x in valR[0] for x in valO):
                obs_name2rl_name.setdefault(keyO, []).append(keyR)


    return obs_name2rl_name


def latent2dict(parsed_latentvar):

    """
    Helper function for pars_latentvar
    :param parsed_latentvar:
    :return:
    """

    latent_dict = {}
    for i in range(len(parsed_latentvar)):
        if re.match('^Group num: ', parsed_latentvar[i]):
            j = i
            while parsed_latentvar[i]:
                latent_dict.setdefault(parsed_latentvar[j][11], []).append(parsed_latentvar[i+1])
                i += 1
    return latent_dict


def pars_latentvar(txt_file):

    """
    LATENT VARIABLES OF TIMESERIES OBSERVABLES from txt file to dict
    :param txt_file:
    :return:
    """

    with open(txt_file, 'rb') as f:
        reader = f.read()

    latent = reader.split('\n')
    latent2 = [x for x in latent if not re.match(r'\=+', x)]

    for i in range(len(latent2)):
        if "Group num:" in latent2[i] and "Group num:" in latent2[i+1]:
            latent2 = latent2[:i]
            break

    return latent2dict(latent2)


def map_file2file(path1, path2):
    """

    :param path1:
    :param path2:
    :return:
    """


def list2weighted_graph(listoflists):
    """

    :param listoflists: A list of list with every entry as a triplet: [ vertice_1, vertice_2, weight]
    :return: a graph
    """

    vertices = set()
    for line in listoflists:
        vertices.update(line[:2])
    vertices = sorted(vertices)

    edges = [line[:2] for line in listoflists]
    weights = [int(line[2]) for line in listoflists]

    # create an empty graph
    g = Graph()

    # add vertices to the graph
    g.add_vertices(vertices)

    # add edges to the graph
    g.add_edges(edges)

    # set the weight of every edge to 1
    g.es["weight"] = weights

    return g


def slim_fluxmap(graph, weight_lessthan ):
    """

    :param graph:
    :param weight_lt:
    :return:
    """
    graph2 = graph.copy()
    graph2.es.select(weight_lt=weight_lessthan).delete()

    graph2.vs["degree"] = graph2.degree()
    graph2.vs.select(degree_eq=0).delete()

    return graph2


def extend_fluxmap_with_obs(fm_graph, mapped, save_as):
    """
    Extends flux map graph of rules with observable nodes.

    :param fm_graph: A reduced flux map weighted undirected graph of rule to rule influence
    :param mapa: A mapping dictionary of observables to rules
    :return: A graph copy of passed one
    """
    # fm_graph = g2
    # mapa = o2r
    g_copy = fm_graph.copy()

    g_copy.vs["attr"] = "red"
    g_copy.vs["shape"] = "circle"

    for k, v in mapped.items():
        for item in v:
            if item in fm_graph.vs["name"]:
                print item

                if k in g_copy.vs["name"]:
                    g_copy.vs[idx]["attr"] = "blue"
                    g_copy.vs[idx]["shape"] = "square"
                    g_copy.add_edge(g_copy.vs.find(name=k), g_copy.vs.find(name=item))

                else:
                    g_copy.add_vertex(name=k)
                    idx = g_copy.vs.find(k).index
                    g_copy.vs[idx]["attr"] = "blue"
                    g_copy.vs[idx]["shape"] = "square"
                    g_copy.add_edge(g_copy.vs.find(name=k), g_copy.vs.find(name=item))


    # visualise:
    graph_tools.visu_weighted_graph(g_copy, save_as)


    return g_copy



def clust_mixed2obs(graph, observables, graphname):
    """
    Clusters of graph is turned into subgraphs and these nodes which are not observables are removed and a
    list of lists is returned

    :param graph: Graph of rules mixed with observables
    :param community: output of any of igraph algorithms
    :return: List of clustered observables is returned
    """
    community = graph_tools.community_detect(graph, alg_no=4)


    listout = []
    for i in community:
        sub = graph.subgraph(i,"create_from_scratch")
        sub.vs.select(shape_eq="circle").delete()
        sub2 = sub.vs['name']
        listout.append(sub2)

    visu_community(graph, community,name=graphname, label_color="attr")

    return listout




def mixed2obs(graph, observables):
    """
    Clusters of graph is turned into subgraphs and these nodes which are not observables are removed and a
    list of lists is returned

    :param graph: Graph of rules mixed with observables
    :param community: output of any of igraph algorithms
    :return: List of clustered observables is returned
    """
    graph_c = graph.copy()
    graph_c.vs.select(shape_eq="circle").delete()
    names_c = graph_c.vs['name']
    return names_c




def listoflist2set(listoflists):
    return [set(x) for x in listoflists]




def latent_dict2list_sets(latent_dict):
    """

    :param latent_dict:
    :return:
    """
    coreexpset = [v for k,v in latent_dict.items()]

    templist=[]
    coreexpset2=[]

    for val in coreexpset:
        for v in val:
            if v:
                templist.append(v.split(', ')[0])
            else:
                coreexpset2.append(templist)
                templist =[]


    return listoflist2set(coreexpset2)


import scipy.stats as ss
import rpy2.robjects as robjects



def counts_interesection(setlist_1, setlist_2):
    """

    :param setlist_1:
    :param setlist_2:
    :return:
    """
    import numpy as np

    lista = []
    for i in setlist_1:
        len_i = len(i)

        for j in setlist_2:
            len_j = len(j)

            intersect = len(i.intersection(j))

            # x, M, n, N = intersect, 31+31, 31, len_j+len_i
            # x, M, n, N = intersect, len_i+len_j, len_i, len_j+len_i
            x, M, n, N = intersect, len_j+len_i, len_i, len_j+len_i

            cdf = ss.hypergeom.cdf(x, M, n, N)
            # sf = ss.hypergeom.sf(x, M, n, N)

            lista.append((intersect, len_i, len_j, cdf))

    return lista



def counts_interesection2(setlist_1, list_2):
    """

    :param setlist_1:
    :param setlist_2:
    :return:
    """
    import scipy.stats as ss

    lista = []
    set_2 = set(list_2)

    for j in setlist_1:
        len_j = len(j)
        len_s = len(set_2)

        intersect = len(set_2.intersection(j))

        # x, M, n, N = intersect, 31+31, 31, len_j+len_i
        # x, M, n, N = intersect, len_i+len_j, len_i, len_j+len_i
        x, M, n, N = intersect, len_j+len_s, len_s, len_j+len_s

        # cdf = ss.hypergeom.cdf(x, M, n, N)
        sf = ss.hypergeom.sf(x, M, n, N)

        lista.append((intersect, len_s, len_j, sf))

    return lista
