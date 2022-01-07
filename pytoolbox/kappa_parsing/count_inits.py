import numpy as np
import glob
import sys
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import emtools
from emtools import do_humansorting
from natsort import natsorted
import matplotlib.pyplot as plt
import seaborn as snp


def count_inits(pathtofiles, timestart, timestop):
    """Answers the question: what is total number of variability of species
    produced over time.

    :param pathtofiles: path to files with snapshots both with
    :param timestart: time when snapshot taking was started
    :param timestop:  time when snapshot taking was stoped
    :returns: plots total variable number of species over time of snapshots
    :rtype:

    """
    count = []

    filelist= glob.glob(pathtofiles)
    fileSorted = natsorted(filelist)

    for i in fileSorted:
        with open(i, 'r') as f:
            readfile = f.readlines()
            inits = [j for j in readfile if '%init: ' in j]
            count.append(len(inits))

    snp.set(font_scale=2)
    x = np.linspace(timestart, timestop, len(fileSorted))
    plt.plot(x, count)
    plt.ylabel("species number")
    plt.xlabel("snapshot number")
    plt.title("Varying number of species between "+ str(timestart) +"s and "+ str(timestop) +"s")
    plt.show()


def count_inits2(pathtofiles, pathtofiles2, timestart, timestop):
    """Answers the question: what is total number of variability of species
    produced over time.

    :param pathtofiles: path to files with snapshots both with
    :param timestart: time when snapshot taking was started
    :param timestop:  time when snapshot taking was stoped
    :returns: plots total variable number of species over time of snapshots
    :rtype:

    """
    count = []
    count2 = []
    filelist= glob.glob(pathtofiles)
    fileSorted = natsorted(filelist)
    filelist2= glob.glob(pathtofiles2)
    fileSorted2 = natsorted(filelist2)

    for i in fileSorted:
        with open(i, 'r') as f:
            readfile = f.readlines()
            inits = [j for j in readfile if '%init: ' in j]
            count.append(len(inits))

    for i in fileSorted2:
        with open(i, 'r') as f:
            readfile2 = f.readlines()
            inits2 = [j for j in readfile2 if '%init: ' in j]
            count2.append(len(inits2))

    snp.set(font_scale=2)
    x = np.linspace(timestart, timestop, len(fileSorted))
    x2 = np.linspace(timestart, timestop, len(fileSorted2))
    plt.plot(x, count)
    plt.plot(x2, count2)
    plt.legend(['three binding sites', 'one binding site'])
    plt.ylabel("species number")
    plt.xlabel("snapshot number")
    plt.title("Varying number of species between "+ str(timestart) +"s and "+ str(timestop) +"s")
    plt.show()


pathtofiles = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/snapshots/snapshot_data/s_*.ka"
pathtofiles2 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/snapshots_oneBindingSite_DARPP/snapshot_data/s_*.ka"

count_inits2(pathtofiles, pathtofiles2, 200, 290)
