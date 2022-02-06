import os
import glob

def snapshotKa_2_dict(snapsdir, snapfiles):
    """
    Given path to .ka snapshots and file pattern (e.g.: '*.ka') turn it into
    dictionary (key is a snapshot name)
    :param snapsdir: path to all snapshots
    :param snapfiles: file pattern to be taken into account; the least it can be just
    asterisk;
    :return: dictionary of snapshots
    """
    dictsnaps = {}
    for f in glob.glob(os.path.join(snapsdir,snapfiles)):
        with open(f, 'r') as infile:
            if '~' not in f:
                snapname = '0'
            else:
                snapname = f.split('~')[1].split('.ka')[0]
                snaplines = infile.readlines()
                dictsnaps[snapname] = snaplines
    return dictsnaps

def snapshotDictParsing(snapsdir, snapfiles):
    """
    Its wont give you the unique species from a mixture !!!

    :param snapsdir:
    :param snapfiles:

    """
    dictsnaps = snapshotKa_2_dict(snapsdir, snapfiles)
    snapslist = []
    for k,v in dictsnaps.iteritems():
        ## remove all comments and '%init' calling from the list
        piece = [line for line in v if '#' not in line and '%init' not in line]
        snapslist.extend(piece)

    # len(snapslist)   ### 345 snapashots -- all together 24,008 observables
    return(list(set(snapslist)))


def species_2_obs(speciesset):
    """
    :param speciesSet: list of cleaned species in a form of :
    'PP2B(ca1,ca2,ca3!0,ca4!1,state~i),Ca2+(a!1),Ca2+(a!0)\n',
    :return: saves file as observable file
    """
    tex = ['%obs: '+"'species_"+str(i)+"' "+speciesset[i] for i in range(len(speciesset))]

    with open("obs_"+str(len(speciesset))+".ka", 'wb') as f:
        f.writelines(tex)
        f.close()

    print("Obs file saved in the current directory")


## execution:
# speciesset = species_2_obs(snapshotDictParsing(snapshotKa_2_dict(snapsdir, snapfiles)))
