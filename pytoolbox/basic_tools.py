import numpy as np
import seaborn as sns
import pickle
import pandas as pd
import matplotlib.pyplot as plt
import math
import re
from collections import defaultdict

def drop_columns(arr, listofcols):
    return  np.delete(arr, listofcols, 1)


def to_dict_of_clusters(varName2clust):
    dic = defaultdict(list)
    for i, j in varName2clust:
        dic[j].append(i)
    return dic


def kafile_to_ratesdict(kafile):

    with open(kafile) as f:
        readka = f.readlines()

    ka_1 = [line.rstrip('\n').lstrip("%var: '") for line in readka]

    ka_2 = [line.split('#')[0] for line in ka_1]

    ka_3 = [line.split('/')[0].rstrip(" ").split("' ") for line in ka_2 if line]

    return {key: float(val) for key, val in ka_3 if re.search("^k", key)}


def is_prime(n):
    if n % 2 == 0 and n > 2:
        return False
    for i in range(3, int(math.sqrt(n)) + 1, 2):
        if n % i == 0:
            return False
    return True



def factorise_2(integer, i=9):
    if is_prime(integer) and integer > 3:
        integer += 1

    if (integer%i == 0) and (i!=0):
        return integer/i, i
    else:
        return factorise_2(integer, i-1)


def get_main_shape(list_of_arrays):
    """
    Counts how often shapes of arrays are reoccurring and returns
    the one which is most common.
    :param list_of_arrays: list of arrays
    :return : a tuple with the most common shape of arrays in the list
    """
    shapes = [a.shape for a in list_of_arrays]
    setshapes = list(set(shapes))
    countedshapes = {s: shapes.count(s) for s in setshapes}

    return max(countedshapes, key=countedshapes.get)


def get_equal_arrays(list_of_arrays):
    """
    Takes a list of arrays, checks with the function
    'get_main_shape' which is the most prevailing shape and

    Because all arrays in the list have to be of the same file
    and there might be a case that some simulations terminated
    earlier (a bug ?).
    """
    shape = get_main_shape(list_of_arrays)
    equal = [a for a in list_of_arrays if a.shape == shape]
    return equal


def _divide_to_chunks(lista, no):
    """
    Divide list into chunks of size no.
    :param lista: input list to be divided
    :param no: size of the chunk in int
    :return:
    """
    output = [lista[i:i+no] for i in range(0, len(lista), no)]
    return output


def timeseries_2_array(outfile, delim = ' '):
    """
    Transform raw KaSim output simulation into numpy array

    :param tsfile:
    :param delim:
    :return: two variables; column labels as list and array of data
   """
    try:
        tsdata = open(outfile, 'r').readlines()
        # cleaning from artefacts in Kappa .out file:
        tsdataC = [i.strip('\n').lstrip('# ') for i in tsdata]

        # remove column with time:
        tsdata2 = [i.split(delim)[1:] for i in tsdataC]

        try:
            # remove empty string at the end from each time point and don't take empty lists
            tsdata3 = [filter(None, i) for i in tsdata2 if i != []]
            labels = [i.strip("''") for i in tsdata3[0]]
            # check if the number of elements in each list is right:
            ncols = len(labels)
            for col in tsdata3:
                assert len(col) == ncols,"Not equal number of columns. Missing value ? in columns: "+str(col)
            # turn strings to float:
            tsdata4 = [map(float,i)  for i in tsdata3[1:]]
            return labels, np.array(tsdata4, dtype=float)
        except ValueError as  e:
            print("Error ", e, " with case ", i)
            return 0
    except IOError:
        print("Error: file doesn't exist.")
        return 0


def snapshot_2_obs(snapshot_file):
    """
    :param snapshot_file:
    :return:
    """

    with open(snapshot_file, 'r') as f:
        snapstr = f.read()

    tex = snapstr.split('\n')
#   tex1 = [i.split(',') for i in tex]

    for i in range(1, len(tex)-2, 2):
        tex[i] = '%obs: '+"'species_"+str(i-1)+"'"

    tex2 = [tex[0]]
    for i in range(1, len(tex)-1, 2):
        tex2.append(tex[i]+' '+tex[i+1]+"\n")

    with open(snapshot_file.split('.')[0] + "_obs.ka", 'w') as f:
        f.writelines(tex2)
        f.close()


def network_2_dataframe_html(netcsvfile, namesdict):
    """
    Creates dataframe and save it as html from a file to create a network created with
    'data_2_network_format' method

    :param netcsvfile:
    :param namesdict:
    :return:
    """

    netf = open(netcsvfile, 'rb').readlines()
    nettup = [tuple(i.rstrip('\n').split(',')[:-1]) for i in netf]

    df = {}
    for item in nettup[11:]:
        df.setdefault('obs',[]).append(namesdict[item[0]])
        df.setdefault('cluster', []).append(item[1])
        df.setdefault('strength', []).append(item[2])

    dfnet = pd.DataFrame(df)

    dfnetsorted = dfnet.sort(columns=['cluster']).reset_index(drop=True)
    dfnetsorted.to_html(buf=open(netcsvfile.rstrip('.csv')+'.html', 'wb'))


def obs_2_namesdict(kafile):

    sl = open(kafile).readlines()
    sl2 = [i.lstrip("%obs: ").rsplit('\n')[:-1] for i in sl]
    sl3 = [i.split(' ', 1) for item in sl2[1:-1] for i in item]
    sl4 = {key.strip("'"):val for key, val in sl3}

    assert len(sl4) == len(sl3), "There are duplicated speciees."

    return sl4

def pick_cols2plot(pickledcorex):
    """ Pick columns to plot from the list of members of the strongest CorEx cluster. """

    cres = pickle.load(open(pickledcorex))
    allcolumns = np.array(cres["column_names"])
    # get indexes of array where is a member of cluster 0
    maxClust = np.argmax(cres["tcs"])
    misMax = cres["mis"][maxClust]
    ### THRESHOLD THAT MIMICS HOW
    columns = list(allcolumns[misMax>0.03])
    return columns


def plot_df(dftoplot, plottitle, 
            figfilename="plot.png", 
            xmax=None, 
            ymax=None , 
            yaxis="copy-number of species", 
            xaxis="time-steps"):
    sns.set(font_scale=1,style="darkgrid")
    plt.figure(figsize=(20,10))
    plt.plot(dftoplot, linewidth = 2)
    plt.title(plottitle, fontsize=26)
    plt.ylabel(yaxis, fontsize=20)
    plt.xlabel(xaxis, fontsize=20)
    plt.xticks(fontsize = 18)
    plt.yticks(fontsize = 18)
    if xmax != None:
        plt.xlim([0, xmax])
    if ymax != None:
        plt.ylim([0, ymax])

    # If you want the legend outside
    #plt.legend(dftoplot, loc='upper-right', fontsize=8, bbox_to_anchor=(1.3, 1.0))
    plt.legend(dftoplot, loc='upper right', fontsize=20)
    plt.subplots_adjust(left=0.05, bottom=0.07, right=0.98, top=0.90, wspace=0.29, hspace=0.4)
    plt.savefig(figfilename, dpi=300)
    plt.show()
    plt.close('all')


def plot_timeseries(outfile, colsList, plottitle, delim=" ", xmax=None, ymax=None, 
                    figfilename="plot.png", yaxis="copy-number of species", xaxis="time-steps"):
    """ Plot selected columns (members of the strongest CorEx cluster) to timeseries. """

    labels, ematrix = timeseries_2_array(outfile=outfile, delim=delim)
    dfdata = pd.DataFrame(data = ematrix, columns=labels)
    ## dfdata.dropna(inplace=True)

    cols = dfdata.columns[colsList]
    plot_df(dfdata[cols], plottitle, figfilename, xmax, ymax, yaxis, xaxis)


def plot_timeseriesRe(outfile, pattern, plottitle, delim, figfilename="plot.png",xmax=1200, ymax=4000, yaxis="copy-number of species", xaxis="time-steps", summed=False):
    """ Plot selected columns having the pattern (members of the strongest CorEx cluster) to timeseries. """
    import re

    labels, ematrix = timeseries_2_array(outfile, delim = delim)
    dfdata = pd.DataFrame(data = ematrix, columns=labels)
    #    dfdata.dropna(inplace=True)
    colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]

    cols = dfdata.columns[colsList]
    if summed:
        dftoplot = dfdata[cols].sum(axis=1)
    else:
        dftoplot = dfdata[cols]
    plot_df(dftoplot, plottitle, figfilename, xmax, ymax, yaxis, xaxis)


def plot_two_curves(dfdata1, dfdata2, column1, column2):
    ds = pd.concat([dfdata1[column1], dfdata2[column2]], axis=1, ignore_index=True)
    ds.columns  = [column1, column2]
    plttitle = column1+" and "+column2
    filename = column1+"_"+column2+".png"
    plot_df(ds, plottitle=plttitle, figfilename=filename, xmax=1400, ymax=4000)


def read_rates_as_list(f):
    with open(f, 'rb') as fi:
        r = fi.readlines()
        fi.close()
    return r

