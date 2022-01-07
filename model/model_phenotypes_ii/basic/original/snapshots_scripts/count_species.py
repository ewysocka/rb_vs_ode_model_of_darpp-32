import glob
import sys
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import multiSnapshots_as_obsFile
from multiSnapshots_as_obsFile import snapshotDictParsing
import re


## ---------------------------------------
##  AIM OF THIS SCRIPT:

# What are all possible species bound Ca2+; how many multibound kinase phosphatase
#    species are there?
#    To make my earlier analysis disciplined I have to first establish
#    how many species with Ca2+ do I have from more than one snapshot:
#    . load each snapshot to Python, remove '%init: ' lines
#    . take only complexes/mixture specifications
#    . fuse it into one file
#    . find all with Ca2+ and count
#    . write it as a generic function because it might be reused
# To compare all other complexes that appear over time:
# . how many
# . what kind of
# . histogram



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




## -----------------------------------------------------------------------------
## FOR SPECIES CAUGHT BETWEEN 200 TO 290, 0.96 +event/event ratio
## %mod: repeat [T]>200 && ([E+]/[E])>0.96  && ([E+] [mod] 100000 )=0 do $SNAPSHOT "../snapshots/s_" until [T]=290
## :
# snapfiles = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/snapshots_threeBindingSites_DARPP/snapshot_200-290_.96"

# snapfiles = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/snapshots_oneBindingSite_DARPP/snapshots_200-290_E100000_096"

# ### in three-binding site is 122
# ### in one-binding site is 90

# a = get_uniqueSnapshotSpecies(snapfiles,snappattern)

# ## Get all Ca2+:
# ca2 = get_allComplexesWith(snapfiles, snappattern, 'Ca2+') ## 33 !
# camp = get_allComplexesWith(snapfiles, snappattern, 'cAMP') ## 22 !

# speciesSet_2_obs(ca2, "c2+_")
# speciesSet_2_obs(camp, "camp_")


## -----------------------------------------------------------------------------
## For species caught between 0 to 700, every E+ 10000
## %mod: repeat ([E+] [mod] 10000 )=0 do $SNAPSHOT "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/snapshots_threeBindingSites_DARPP/snapshots_0-700_E10000/s_" until [T]=700

## FOR tBS:
# snapfiles = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/snapshots_threeBindingSites_DARPP/snapshots_0-700_E10000"

## FOR oBS:
snapfiles = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/snapshots_oneBindingSite_DARPP/snapshots_0-700_E10000"


### in three-binding site is 135 / in one binding site is 91

snappattern = "s_*"
a = get_uniqueSnapshotSpecies(snapfiles,snappattern)

## Get all Ca2+:
ca2 = get_allComplexesWith(snapfiles, snappattern, 'Ca2+') ##  43 / 24
camp = get_allComplexesWith(snapfiles, snappattern, 'cAMP') ##  22 / 22
darpp = get_allComplexesWith(snapfiles, snappattern, 'ser137')


print(len(a))
print(len(ca2))
print(len(camp))

speciesSet_2_obs(ca2, "c2+_")
speciesSet_2_obs(camp, "camp_")

# speciesSet_2_obs(a, "tBS_allsnapshotspecies_")

speciesSet_2_obs(a, "oBS_allsnapshotspecies_")
