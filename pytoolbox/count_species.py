import sys, os
sys.path.append(os.path.join(sys.path[0], "pytoolbox"))
from multiSnapshots_as_obsFile import snapshotDictParsing
import re

## -----------------------------------------------------------------------------
##  AIM OF THIS SCRIPT:
## -----------------------------------------------------------------------------

# What are all possible species bound Ca2+; how many multibound kinase phosphatase
#    species are there?
#    To make my earlier analysis disciplined I have to first establish
#    how many species with Ca2+ do I have from more than one snapshot:
#    . load each snapshot to Python, remove '%init: ' lines
#    . take only complexes/mixture specifications
#    . fuse it into one file
#    . find all with Ca2+ and count
# To compare all other complexes that appear over time:
# . how many
# . what kind of
# . histogram
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## For species caught between 0 to 700, every E+ 10000

## Command in Kappa language:

## %mod: repeat ([E+] [mod] 10000 )=0 do $SNAPSHOT "./rb_model/wildType/snapshots_threeBindingSites_DARPP/snapshots_0-700_E10000/s_" until [T]=700
## -----------------------------------------------------------------------------



def get_uniqueSnapshotSpecies(snapfiles, snappattern):
    """FIXME! briefly describe function

    :param snapfiles: folder where are all snapshots
    :param snappattern: regex for species name pattern
    :returns: a list of unique species definitions
    :rtype:

    """

    allsnaps = snapshotDictParsing(snapfiles, snappattern)
    ## With or without this part the number or unique species is the same
    ## it can be dropped or just run on the side to check if the enumeration rule
    ## is always that strict:
    ## allsnapsC = map(lambda x:re.sub('![0-9]', '!',x), allsnaps)
    allsnapsCC = [s.rstrip('\n').split(')')[:-1] for s in allsnaps]

    allsnapsCC2 = [map(lambda x: x.lstrip(',')+')', item) for item in allsnapsCC ]

    ## First order according to usual sorting
    [l.sort() for l in allsnapsCC2]
    ## Then order to get the longest species
    [l.sort(key = len, reverse=True) for l in allsnapsCC2]
    allsnapsCCSN = [','.join(l) for l in allsnapsCC2]
    allsnapsCCSNset = list(set(allsnapsCCSN))
    return sorted(allsnapsCCSNset)


def get_allComplexesWith(snapfiles, snappattern, agentname):
    """FIXME! briefly describe function

    :param snapfiles: folder where are all snapshots
    :param snappattern: regex for species name pattern
    :param agentname: agent name
    :returns: a list of species
    :rtype:

    """
    allsnaps = get_uniqueSnapshotSpecies(snapfiles, snappattern)
    return [c for c in allsnaps if re.search(agentname, c)]


def speciesSet_2_obs(speciesset, name):
    """
    :param speciesSet: list of cleaned species in a form of :
    'PP2B(ca1,ca2,ca3!0,ca4!1,state~i),Ca2+(a!1),Ca2+(a!0)\n',
    :return: saves file as observable file
    """
    tex = ['%obs: '+"'"+speciesset[i]+"' "+speciesset[i]+'\n' for i in range(len(speciesset))]
    
    with open("obs_"+name+str(len(speciesset))+".ka", 'wb') as f:
        f.writelines(tex)
        f.close()

    print("Obs file saved in the current directory")


