import glob
import sys, os
sys.path.append(os.path.join(sys.path[0], "pytoolbox"))
from natsort import natsorted
import matplotlib.pyplot as plt
import seaborn as snp


def collect_times(readfile):
    """
    Parses the following string in the snapshot files:
    ## Snapshot [Event: 0, Time: 0.000002]
    """
    
    return float(readfile[0].split('Time: ')[-1].rstrip(']\n'))


def count_speciesNum(pathtofolder, filepattern, pathout):
    """ Plots the total number of produced species over time 
    representing species variability in the model.

    :param pathtofolder: path to files with snapshots for a model
    :param filepattern: prefix of snapshot files
    :returns: plots change in the number of species over time
    :rtype:

    """
    count = []

    figfilename = os.path.join(pathout, "speciesNum_per_time.png")
    pathtofiles = os.path.join(pathtofolder, filepattern)

    filelist= glob.glob(pathtofiles)
    if not filelist:
        raise Exception("Empty list. The path to the folder or the pattern is wrong.")

    fileSorted = natsorted(filelist)

    for i in fileSorted:
        with open(i, 'r') as f:
            readfile = f.readlines()
            timeperfile = collect_times(readfile)
            inits = [j for j in readfile if '%init: ' in j]
            count.append((timeperfile, len(inits)))


    count.sort(key=lambda x: x[0])
    snp.set(font_scale=2, style='darkgrid')
    x = [i for i, j in count]
    y = [j for i, j in count]
    timestart = int(x[0])
    timestop = int(x[-1])
    plt.plot(x, y, 'ro')
    xaxis = "time-steps (s)"
    yaxis = "species counts"
    plottitle = "Number of set species between "+ str(timestart) +"s and "+ str(timestop) +"s"

    plt.title(plottitle, fontsize=26)
    plt.ylabel(yaxis, fontsize=20)
    plt.xlabel(xaxis, fontsize=20)
    plt.xticks(fontsize = 18)
    plt.yticks(fontsize = 18)

    figure = plt.gcf()
    figure.set_size_inches(20, 10)
    plt.subplots_adjust(left=0.50, bottom=0.07, right=0.98, top=0.70, wspace=0.29, hspace=0.4)
    plt.savefig(figfilename, dpi=400)
    plt.show()
    plt.close("all")


def count_speciesNum2(pathtofiles, pathtofiles2, legendlabels, pathout):
    """ Compares the total number of produced species over time 
    of two models.

    :param pathtofiles: path to files with snapshots for model A
    :param pathtofiles2: path to files with snapshots for model B
    :param legendlabels:  courve labels
    :returns: plots total variable number of species over time of snapshots 
    :rtype:

    """
    count = []
    count2 = []
    filelist= glob.glob(pathtofiles)
    fileSorted = natsorted(filelist)

    filelist2= glob.glob(pathtofiles2)
    fileSorted2 = natsorted(filelist2)

    figfilename = os.path.join(pathout, "speciesNum_per_time_"+legendlabels[0]+"_"+legendlabels[1]+"2.png")

    for ff in fileSorted:
        with open(ff, 'r') as f:
            readfile = f.readlines()
            timeperfile = collect_times(readfile)
            inits = [j for j in readfile if '%init: ' in j]
            count.append((timeperfile, len(inits)))

    for ff in fileSorted2:
        with open(ff, 'r') as f:
            readfile2 = f.readlines()
            timeperfile2 = collect_times(readfile2)
            inits2 = [j2 for j2 in readfile2 if '%init: ' in j2]
            count2.append((timeperfile2, len(inits2)))


    count.sort(key=lambda x: x[0])
    count2.sort(key=lambda x: x[0])

    snp.set(font_scale=2, style='darkgrid')

    x = [i for i, j in count]
    x2 = [i2 for i2, j2 in count2]
    y = [j for i, j in count]
    y2 = [j2 for i2, j2 in count2]

    timestart = int(x[0])
    timestop = int(x[-1])
    timestart2 = int(x2[0])
    timestop2 = int(x2[-1])

    color = ['red', 'black']
    plt.plot(x, y, 'o', color=color[0])
    plt.plot(x2, y2,'o',  color=color[1])

    xaxis = "time-steps (s)"
    yaxis = "species counts"
    plottitle = "Number of set species between "+ str(timestart) +"s and "+ str(timestop) +"s"
    plt.legend(legendlabels)
    plt.title(plottitle, fontsize=26)
    plt.ylabel(yaxis, fontsize=20)
    plt.xlabel(xaxis, fontsize=20)
    plt.xticks(fontsize = 18)
    plt.yticks(fontsize = 18)

    figure = plt.gcf()
    figure.set_size_inches(20, 10)
    plt.subplots_adjust(left=0.50, bottom=0.07, right=0.98, top=0.70, wspace=0.29, hspace=0.4)
    plt.savefig(figfilename, dpi=400)
    plt.show()
    plt.close("all")

