import  matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy
import sys, os
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
from corex_tools import plot_timeseriesRe
from corex_tools import plot_df
from corex_tools import plot_two_curves
from macro2micro_rates import convert_concentrations_to_copies
from corex_tools import factorise_2
import re
import glob
from collections import defaultdict
import itertools

from matplotlib.offsetbox import AnchoredText
import statsmodels.api as sm
from pandas.stats.moments import rolling_window
import statsmodels.tsa.stattools as ts
import statsmodels
from statsmodels.tsa.stattools import coint
import seaborn as sns
import matplotlib.pyplot as plt
from corex_tools import factorise_2


def originalModel_2_selected_df(outfile, delim, obstocomparewith):
    """
    Loads the file as a matrix, selects observables that are in the provided
    list and summed under each name (multiple species under each observable).

    :param outfile:
    :param delim:
    :param obstocomparewith: names of observables like regex patterns to retrieve observables
    :returns:
    :rtype:

    """

    ## 2.1 Load file to dataframe:
    labels, ematrix = timeseries_2_array(outfile, delim = delim)
    dfdata = pd.DataFrame(data = ematrix, columns=labels)

    combodf = pd.DataFrame()

    ## 2.3 Get the above observables, sum them and save to dataframe:
    for pattern in obstocomparewith:
        colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]
        cols = list(dfdata.columns[colsList])
        dftosum = pd.DataFrame(dfdata[cols].sum(axis=1), columns=[pattern])
        combodf = pd.concat([combodf, dftosum], axis=1,  ignore_index=True)

    return combodf




def plot_originalSelected_as_paper(outfile, foldername, name, prefix=''):

    delim = '\t'

    ## 1. Process file:
    ## Choose patterns to retrieve the right observables:
    obstocomparewith = ["cAMP",
                        "Ca.ParticleNumber",
                        "Ca",
                        "PKA",
                        "_CDK5",
                        "CK1.ParticleNumber",
                        "PP2AP",
                        "PP2A*Ca",
                        "_PP2C",
                        "PP2B.ParticleNumber",
                        "PDEP",
                        "D.ParticleNumber",
                        "34",
                        "75",
                        "137"]

    ## File to dataframe:
    orgdf = originalModel_2_selected_df(outfile, delim, obstocomparewith)

    ## Set cleaned columns names:
    orgdf.columns = ["cAMP",
                     "free_Ca",
                     "all_Ca",
                     "PKA",
                     "_CDK5",
                     "CK1u",
                     "PP2AP",
                     "PP2ACa",
                     "_PP2C",
                     "PP2Bactive",
                     "PDEP",
                     "D",
                     "D34",
                     "D75",
                     "D137"]


    ## 3. Plot
    plot_df(orgdf[orgdf.columns[[0,1,11,12,13,14]]],
            plottitle="ODE model: "+name+prefix,
            figfilename=foldername+'/'+name+prefix+"_summedpatternsOriginal_selected_"+prefix+".png",
            xmax=1400,
            ymax=4400)


def plot_mineSelected_as_paper(outfile3, foldername, name, prefix):
    """FIXME! briefly describe function

    :param outfile3: kappa out file
    :param foldername: folder to save the plot in
    :param name: special name characterising the plot
    :param prefix: special prefix characterising the plot
    :returns: nothing, plots the figure to file
    :rtype:

    """

    labs = ['cAMP*',
            'free_Ca2+*',
            'all_Ca2+*',
            'PKA*',
            'CDK5_*',
            'CK1u*',
            'PP2Ap*',
            'PP2Aca_*',
            'PP2C_*',
            'PP2Ba*',
            'PDEp*',
            'D*',
            'Thr75*',
            'Thr34*',
            'Ser137*',
            'Thr75:Ser137*',
            'Thr34:Thr75*',
            'Thr34:Ser137*',
            'Thr34:Thru75:Ser137*',
            'D34*',
            'D75*',
            'D137*']

    labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
    dfdata3 = pd.DataFrame(data = ematrix3, columns=labs)

    ## Plot all curves as in the paper
    plot_df(dfdata3[dfdata3.columns[[0,1,11,19,20,21]]],
            plottitle="RB MODEL: " +name+prefix,
            figfilename=foldername+'/'+name+prefix+"_rb_model_selected.png",
            xmax=1400,
            ymax=4400)




def plot_overlaid_ode2rb(outfile, outfile3, name, prefix, foldername, paired=False, separate=False,
                         quant=False):

    ## RB stuff:
    labs = ['cAMP*',
            'free_Ca2+*',
            'all_Ca2+*',
            'PKA*',
            'CDK5_*',
            'CK1u*',
            'PP2Ap*',
            'PP2Aca_*',
            'PP2C_*',
            'PP2Ba*',
            'PDEp*',
            'D*',
            'Thr75*',
            'Thr34*',
            'Ser137*',
            'Thr75:Ser137*',
            'Thr34:Thr75*',
            'Thr34:Ser137*',
            'Thr34:Thr75:Ser137*',
            'D34*',
            'D75*',
            'D137*']

    labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
    dfdata3 = pd.DataFrame(data = ematrix3, columns=labs)

    dfdata3SEL = dfdata3[dfdata3.columns[[0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]]]

    ## ODE stuff:

    delim = '\t'

    obstocomparewith = ["cAMP",
                        "Ca.ParticleNumber",
                        "Ca",
                        "PKA",
                        "_CDK5",
                        "CK1.ParticleNumber",
                        "PP2AP",
                        "PP2A*Ca",
                        "_PP2C",
                        "PP2B.ParticleNumber",
                        "PDEP",
                        "D.ParticleNumber",
                        "34",
                        "75",
                        "137"]

    ## File to dataframe:
    orgdf = originalModel_2_selected_df(outfile, delim, obstocomparewith)

    ## Set cleaned columns names:
    orgdf.columns = ["cAMP",
                     "free_Ca",
                     "all_Ca",
                     "PKA",
                     "_CDK5",
                     "CK1u",
                     "PP2AP",
                     "PP2ACa",
                     "_PP2C",
                     "PP2Bactive",
                     "PDEP",
                     "D",
                     "D34",
                     "D75",
                     "D137"]

    if paired == True:
        plot_paired(orgdf, dfdata3SEL, foldername=foldername, name=name+prefix)
    if separate == True:
        plot_paired_separate(orgdf, dfdata3SEL, foldername=foldername, name=name+prefix)
    if quant == True:
        plot_paired_quants(orgdf, dfdata3SEL, foldername=foldername, name=name+prefix)
    else:
        raise NameError("You have to set one of these to True: paired, separate, quant")



def plot_overlaid_rb2rb(outfile1, outfile3, name, prefix, foldername):

    # 1. Read both files in:
    labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
    dfdata3 = pd.DataFrame(data = ematrix3, columns=['three'+ i for i in labs])

    labels1, ematrix1 = timeseries_2_array(outfile1, delim = " ")
    dfdata1 = pd.DataFrame(data = ematrix1, columns=['one'+ i for i in labs])

    # 2. name the file and path:
    filename = foldername+"/"+"paired_"+name+prefix+".png"

    # 3. Set the same columns to compare, for now hard-coded:
    dfdata3SEL = dfdata3[dfdata3.columns[[0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]]]
    dfdata1SEL = dfdata1[dfdata1.columns[[0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]]]

    plot_paired(dfdata3SEL, dfdata1SEL, filename=filename)


def plot_paired(dfdata1, dfdata2, name, foldername, ii=None, jj=None, xmax=None, ymax=None):
    """FIXME! briefly describe function

    :param dfdata1:
    :param dfdata2:
    :param ii:
    :param jj:
    :param xmax:
    :param ymax:
    :param filename:
    :returns:
    :rtype:

    """

    colszipped = zip(dfdata1, dfdata2)

    sns.set(font_scale=1,style="darkgrid")
    if ii == None or jj == None:
        ii, jj = factorise_2(len(colszipped))

    for i, j in enumerate(colszipped):
        plt.subplot(ii, jj, i+1)
        ds = pd.concat([dfdata1[j[0]], dfdata2[j[1]]], axis=1, ignore_index=True)
        ds.columns  = [j[0], j[1]]
        plttitle = j[0]+" and "+j[1]
        yaxis="copy-number of species"
        xaxis="time-steps"
        plt.gca().set_color_cycle(['red', 'black'])
        plt.plot(ds, linewidth = 4, alpha=0.6)
        plt.title(plttitle, fontsize=12)
        #plt.ylabel(yaxis, fontsize=16)
        #plt.xlabel(xaxis, fontsize=16)
        if xmax!=None:
            plt.xlim([0, xmax])
        if ymax!=None:
            plt.ylim([0, ymax])
        plt.xticks(fontsize = 14)
        plt.yticks(fontsize = 14)
        plt.grid()

    plt.legend(ds, labels=['ODE','RB'], loc='upper-left', fontsize=14)
    plt.subplots_adjust(left=0.22, bottom=0.04, right=0.99, top=0.68, wspace=0.29, hspace=0.4)

    # plt.tight_layout()

    filename = foldername+"/"+name+"paired.png"
    plt.savefig(filename, dpi=300, bbox_inches='tight')
    plt.show()
    plt.close()


def plot_paired_quants(dfdata1, dfdata2, name, foldername, ii=None, jj=None, xmax=None, ymax=None):
    """ Plotting it all together with quantitative comparisons.

    :returns:
    :rtype:

    """

    left, width = .25, .6
    bottom, height = .25, .6
    right = left + width
    top = bottom + height

    colszipped = zip(dfdata1, dfdata2)

    if ii == None or jj == None:
        ii, jj = factorise_2(len(colszipped))

    for i, j in enumerate(colszipped):
        ax = plt.subplot(ii, jj, i+1)
        a = dfdata1[j[0]]
        b = dfdata2[j[1]]
        corrab = round(a.corr(b), 2)
        cointab = round(coint(a,b)[1], 2)
        plttitle = j[0]+" and "+j[1]
        ds = pd.concat([dfdata1[j[0]], dfdata2[j[1]]], axis=1, ignore_index=True)
        ds.columns  = [j[0], j[1]]
        plt.gca().set_color_cycle(['red', 'black'])
        plt.plot(ds, linewidth = 4, alpha=0.6)
        plt.title(plttitle, fontsize=12)

        ax.text(top, right, "CORR: "+ str(corrab)+ "\n COINT: "+ str(cointab),
                color = "green", fontweight="bold")
        # plt.ylabel(yaxis, fontsize=12)
        # plt.xlabel(xaxis, fontsize=12)
        if xmax!=None:
            plt.xlim([0, xmax])
        if ymax!=None:
            plt.ylim([0, ymax])

        plt.grid()
        # plt.legend(ds)

    # plt.tight_layout()
    plt.legend(ds, labels=['ODE','RB'], loc='upper-left', fontsize=14)
    plt.subplots_adjust(left=0.22, bottom=0.04, right=0.99, top=0.68, wspace=0.29, hspace=0.4)
    filename = foldername+"/"+name+"paired_quant.png"
    plt.savefig(filename, dpi=300) # , bbox_inches='tight')
    plt.show()
    plt.close()



def plot_paired_separate(dfdata1, dfdata2, foldername, name, xmax=None, ymax=None):

    sns.set(font_scale=1,style="darkgrid")

    colszipped = zip(dfdata1, dfdata2)

    for i, j in enumerate(colszipped):
        ds = pd.concat([dfdata1[j[0]], dfdata2[j[1]]], axis=1, ignore_index=True)
        ds.columns  = [j[0], j[1]]
        plttitle = j[0]+" and "+j[1]
        yaxis="copy-number of species"
        xaxis="time-steps"
        plt.gca().set_color_cycle(['red', 'black'])
        plt.plot(ds, linewidth = 2, alpha=0.6)
        plt.title(plttitle, fontsize=12)
        #plt.ylabel(yaxis, fontsize=12)
        #plt.xlabel(xaxis, fontsize=12)
        if xmax!=None:
            plt.xlim([0, xmax])
        if ymax!=None:
            plt.ylim([0, ymax])

        plt.grid()
        plt.legend(ds, loc='upper-left', fontsize=10)
        plt.tight_layout()
        filename = foldername+"/"+j[0]+"_"+j[1]+"paired_"+name+".png"
        plt.savefig(filename, dpi=300, bbox_inches='tight')
        plt.show()
        plt.close()

#  LocalWords:  png




def prepare_ensemble_rb_models(ensemblefolder, pattern, defcols=True):
    """FIXME! briefly describe function

    :param ensemblefolder:
    :param pattern:
    :returns:
    :rtype:

    """
    ensfiles = glob.glob(ensemblefolder+'/'+pattern)
    if not ensfiles:
        raise Exception("Empty list. The path to the folder or the pattern is wrong.")

    if defcols:
        cols = ['cAMP*',
                'free_Ca2+*',
                'all_Ca2+*',
                'PKA*',
                'CDK5_*',
                'CK1u*',
                'PP2Ap*',
                'PP2Aca_*',
                'PP2C_*',
                'PP2Ba*',
                'PDEp*',
                'D*',
                'Thr75*',
                'Thr34*',
                'Ser137*',
                'Thr75:Ser137*',
                'Thr34:Thr75*',
                'Thr34:Ser137*',
                'Thr34:Thr75:Ser137*',
                'D34*',
                'D75*',
                'D137*']

        listofdfs = []
        for i in ensfiles:
            _ , a = timeseries_2_array(i)
            listofdfs.append(pd.DataFrame(a, columns = cols))

    else:
        listofdfs = []
        for i in ensfiles:
            cols0 , a = timeseries_2_array(i)
            cols = [c +'*' for c in cols0]
            listofdfs.append(pd.DataFrame(a, columns = cols))

    dic = defaultdict(list)
    for i in listofdfs:
        for n in cols:
            dic[n].append(list(i[n]))

    dicarr = {key:np.array(val) for key,val in dic.iteritems()}
    return dicarr, cols




def plot_mineSelected_as_paper_SD(ensemblefolder, filepattern, name, prefix, foldername):
    """FIXME! briefly describe function

    :param ensemblefolder: path to all out files
    :param filepattern:
    :param name: main part of the plot file name
    :param prefix: part of the plot file name
    :param foldername: path to place where write the plot to
    :param xmax: x axis maximal range; can be unspecified
    :param ymax: y axis maximal range; can be unspecified
    :returns:
    :rtype:

    """
    ## Transform files in the folder to a dict of arrays:
    dicarr, cols = prepare_ensemble_rb_models(ensemblefolder, filepattern)

    ## Selected list of the only ones which are in the paper:
    selected = [0,1,11,19,20,21]

    ## Select them as names:
    selectedcols = [n for idx, n in enumerate(cols) if idx in selected]

    yaxis="copy-number of species"
    xaxis="time-steps"
    plottitle="RB MODEL: " +name+' '+prefix
    figfilename=foldername+'/'+name+prefix+"_rb_model_selected_SD.png"
    xmax=1400
    ymax=4400

    sns.set(font_scale=1,style="darkgrid")
    palette = itertools.cycle(sns.color_palette())

    for n in selectedcols:
        x = np.linspace(0, len(dicarr[n][1]), len(dicarr[n][1]))
        y = np.mean(dicarr[n], axis=0)
        error = np.std(dicarr[n], axis=0)

        color = next(palette)

        plt.plot(x, y, color=color, linewidth=2)
        plt.fill_between(x, y-error, y+error,
                         alpha=0.4, edgecolor=color)

    plt.title(plottitle, fontsize=26)
    plt.ylabel(yaxis, fontsize=20)
    plt.xlabel(xaxis, fontsize=20)
    plt.xticks(fontsize = 18)
    plt.yticks(fontsize = 18)
    plt.xlim([0, xmax])
    plt.ylim([0, ymax])

    plt.legend(labels=selectedcols, loc='upper-left', fontsize=20)
    figure = plt.gcf()
    figure.set_size_inches(20, 14)
    plt.subplots_adjust(left=0.06, bottom=0.07, right=0.98, top=0.99, wspace=0.29, hspace=0.4)
    plt.savefig(figfilename, dpi=400)
    plt.show()
    plt.close("all")



def divide_ensembleFile_to_files(ensemblefile, foldertosave, delim = '\t'):

    with open(ensemblefile) as f:
        ensembleline = f.readlines()

    enslines2 = [i.rstrip('\n').split('\t') for i in ensembleline]

    fileidx = itertools.cycle(list(range(40)))

    for idx, line in enumerate(enslines2):
        if line[0] == 'Time':
            cols = idx
            start = idx+1
        if line[0] == '700':
            end = idx+1
            slicedf = pd.DataFrame(enslines2[start:end], columns=list(enslines2[cols]))
            slicedf[list(slicedf.columns)] = slicedf[list(slicedf.columns)].astype(float)
            slicedf.to_csv(foldertosave+'/data_'+str(next(fileidx)), sep='\t', index=False)
    print("List of file in the folder:")
    print(os.listdir(foldertosave))
    print("Count number of lines in each file:")
    print(os.system("wc -l "+foldertosave+"/data*"))



def get_ode_obstocomparewith(ensemblefile, patternslist):

    delim = '\t'
    with open(ensemblefile) as f:
        lines = f.readlines()

    cols = lines[0].split('\t')[1:]
    colsList = [i for i in cols for p in patternslist if re.search(p, i)]

    return colsList



def prepare_ensemble_ode_models(ensemblefile, foldertosave, defcols=True, obstocomparewith=None):

    ## 1. Divide file with 40 model runs to a separate files:
    divide_ensembleFile_to_files(ensemblefile, foldertosave)

    ## 2. Get a list of dataframes:
    ## 1. Process file:
    delim = '\t'
    orgdflist = []

    if defcols:
        ## Choose patterns to retrieve the right observables:
        obstocomparewith = ["cAMP",
                            "Ca.ParticleNumber",
                            "Ca",
                            "PKA",
                            "_CDK5",
                            "CK1.ParticleNumber",
                            "PP2AP",
                            "PP2A*Ca",
                            "_PP2C",
                            "PP2B.ParticleNumber",
                            "PDEP",
                            "D.ParticleNumber",
                            "34",
                            "75",
                            "137"]

        cols = ["cAMP",
                "free_Ca",
                 "all_Ca",
                 "PKA",
                 "_CDK5",
                 "CK1u",
                 "PP2AP",
                 "PP2ACa",
                 "_PP2C",
                 "PP2Bactive",
                 "PDEP",
                 "D",
                 "D34",
                 "D75",
                 "D137"]


        for outf in glob.glob(foldertosave+'/data_*'):
            orgdf = originalModel_2_selected_df(outf, delim, obstocomparewith)
            ## Set cleaned columns names:
            orgdf.columns = cols
            orgdflist.append(orgdf)

    else:
        if not obstocomparewith:
            raise Exception("Provide list of patterns to retrieve.")

        for outf in glob.glob(foldertosave+'/data_*'):
            orgdf = originalModel_2_selected_df(outf, delim, obstocomparewith)
            orgdf.columns = [o.lstrip('^').replace('.ParticleNumber$', '') for o in obstocomparewith]
            orgdflist.append(orgdf)

        cols = list(orgdf.columns)


    dic = defaultdict(list)
    for i in orgdflist:
        for n in cols:
            dic[n].append(list(i[n]))

    dicarr = {key:np.array(val) for key,val in dic.iteritems()}

    return dicarr, cols



def plot_originalSelected_as_paper_SD(ensemblefile, ensemblefolder, name, prefix, foldername):
    """FIXME! briefly describe function

    :param ensemblefile: the output file of COPASI_SE; all runs were saved in one file
    :param ensemblefolder: the output folder to save all divided files
    :param name: main part of the plot file name
    :param prefix: part of the plot file name
    :param foldername: path to place where write the plot to
    :returns:
    :rtype:

    """

    ## Transform files in the folder to a dict of arrays:
    dicarr, cols = prepare_ensemble_ode_models(ensemblefile, ensemblefolder)

    ## Selected list of the only ones which are in the paper:
    selected = [0,1,11,12,13,14]

    ## Select them as names:
    selectedcols = [n for idx, n in enumerate(cols) if idx in selected]

    yaxis="copy-number of species"
    xaxis="time-steps"
    plottitle="ODE MODEL: " +name+' '+prefix
    figfilename=foldername+'/'+name+'_'+prefix+"_ode_model_selected_SD.png"
    xmax=1400
    ymax=4400

    sns.set(font_scale=1,style="darkgrid")
    palette = itertools.cycle(sns.color_palette())

    for n in selectedcols:
        x = np.linspace(0, len(dicarr[n][1]), len(dicarr[n][1]))
        y = np.mean(dicarr[n], axis=0)
        error = np.std(dicarr[n], axis=0)

        color = next(palette)

        plt.plot(x, y, color=color, linewidth=2)
        plt.fill_between(x, y-error, y+error,
                         alpha=0.4, edgecolor=color)

    plt.title(plottitle, fontsize=26)
    plt.ylabel(yaxis, fontsize=20)
    plt.xlabel(xaxis, fontsize=20)
    plt.xticks(fontsize = 18)
    plt.yticks(fontsize = 18)
    plt.xlim([0, xmax])
    plt.ylim([0, ymax])

    plt.legend(labels=selectedcols, loc='upper-left', fontsize=20)
    figure = plt.gcf()
    figure.set_size_inches(20, 14)
    plt.subplots_adjust(left=0.06, bottom=0.07, right=0.98, top=0.99, wspace=0.29, hspace=0.4)
    plt.savefig(figfilename, dpi=200)
    plt.show()
    plt.close("all")



def plot_paired_SD(dicarr0, cols0, dicarr1, cols1, name, foldername, legendlabels, ii=None, jj=None, xmax=None, ymax=None, format='landscape'):
    """FIXME! briefly describe function

    :param dicarr0:
    :param cols0:
    :param dicarr1:
    :param cols1:
    :param name:
    :param foldername:
    :param legendlabels:
    :param ii:
    :param jj:
    :param xmax:
    :param ymax:
    :param format: either 'landscape' or 'portrait', default landscape
    :returns:
    :rtype:

    """
    color = ['red', 'black']
    colszipped = zip(cols0,cols1)

    sns.set(font_scale=1, style="darkgrid")

    if ii == None or jj == None:
        if format == 'portrait':
            ii, jj = factorise_2(len(colszipped))
        if format =='landscape':
            jj, ii = factorise_2(len(colszipped))


    for i, j in enumerate(colszipped):
        plt.subplot(jj,ii, i+1)
        x0 = np.linspace(0, len(dicarr0[j[0]][1]), len(dicarr0[j[0]][1]))
        y0 = np.mean(dicarr0[j[0]], axis=0)
        error0 = np.std(dicarr0[j[0]], axis=0)
        yy0 = y0-error0
        yy0[yy0<0.0] = 0.0

        x1 = np.linspace(0, len(dicarr1[j[1]][1]), len(dicarr1[j[1]][1]))
        y1 = np.mean(dicarr1[j[1]], axis=0)
        error1 = np.std(dicarr1[j[1]], axis=0)
        yy1 = y1-error1
        yy1[yy1<0.0] = 0.0

        plt.plot(x0, y0, color=color[0], linewidth=2)
        plt.fill_between(x0, yy0, y0+error0,
                         alpha=0.4, edgecolor=color[0])

        plt.plot(x1, y1, color=color[1], linewidth=2)
        plt.fill_between(x1, yy1, y1+error1,
                         alpha=0.4, edgecolor=color[1])

        # plottitle = j[0]+" and "+j[1]
        plottitle = j[0]
        # yaxis="copy-number of species"
        # xaxis="time-steps"

        plt.title(plottitle, fontsize=14)
        if xmax!=None:
            plt.xlim([0, xmax])
        if ymax!=None:
            plt.ylim([0, ymax])
        plt.xticks(fontsize = 12)
        plt.yticks(fontsize = 12)

        plt.legend(labels=legendlabels, loc='upper left', fontsize=12)

    figure = plt.gcf()
    if format =='landscape':
        figure.set_size_inches(14,9)
        plt.subplots_adjust(left=0.06, bottom=0.03, right=0.99, top=0.99, wspace=0.30, hspace=0.30)
    if format == 'portrait':
        figure.set_size_inches(10, 16)
        plt.subplots_adjust(left=0.06, bottom=0.03, right=0.99, top=0.97, wspace=0.35, hspace=0.30)
    filename = foldername+"/"+name+"paired.png"

    plt.savefig(filename, dpi=300, bbox_inches='tight')
 #   plt.show()
    plt.close("all")



def plot_paired_separate_SD(dicarr0, cols0, dicarr1, cols1, name, foldername, legendlabels, ii=None, jj=None, xmax=None, ymax=None):
    """FIXME! briefly describe function

    :param dicarr0:
    :param cols0:
    :param dicarr1:
    :param cols1:
    :param name:
    :param foldername:
    :param legendlabels:
    :param ii:
    :param jj:
    :param xmax:
    :param ymax:
    :returns:
    :rtype:

    """

    color = ['red', 'black']
    colszipped = zip(cols0,cols1)

    sns.set(font_scale=1, style="darkgrid")

    sns.set(font_scale=1,style="darkgrid")

    for i, j in enumerate(colszipped):
        x0 = np.linspace(0, len(dicarr0[j[0]][1]), len(dicarr0[j[0]][1]))
        y0 = np.mean(dicarr0[j[0]], axis=0)
        error0 = np.std(dicarr0[j[0]], axis=0)
        yy0 = y0-error0
        yy0[yy0<0.0] = 0.0


        x1 = np.linspace(0, len(dicarr1[j[1]][1]), len(dicarr1[j[1]][1]))
        y1 = np.mean(dicarr1[j[1]], axis=0)
        error1 = np.std(dicarr1[j[1]], axis=0)
        yy1 = y1-error1
        yy1[yy1<0.0] = 0.0

        plt.plot(x0, y0, color=color[0], linewidth=2)
        plt.fill_between(x0, yy0, y0+error0,
                         alpha=0.4, edgecolor=color[0])

        plt.plot(x1, y1, color=color[1], linewidth=2)
        plt.fill_between(x1, yy1, y1+error1,
                         alpha=0.4, edgecolor=color[1])

        # plottitle = j[0]+" and "+j[1]
        plottitle = j[0]
        yaxis="copy-number of species"
        xaxis="time-steps"

        plt.ylabel(yaxis, fontsize=24)
        plt.xlabel(xaxis, fontsize=24)
        plt.title(plottitle, fontsize=30)
        if xmax!=None:
            plt.xlim([0, xmax])
        if ymax!=None:
            plt.ylim([0, ymax])
        plt.xticks(fontsize = 18)
        plt.yticks(fontsize = 18)

        plt.legend(labels=legendlabels, loc='upper left', fontsize=24)
        figure = plt.gcf()
        figure.set_size_inches(10, 6)
        filename = foldername+"/"+j[0]+"_"+j[1]+"paired_"+name+".png"
        plt.subplots_adjust(left=0.07, bottom=0.07, right=0.98, top=0.9, wspace=0.29, hspace=0.4)
        plt.savefig(filename, dpi=300, bbox_inches='tight')
#        plt.show()
        plt.close("all")




def plot_overlaid_ode2rb_SD(ensembleRB, pattern, ensembleODE, ensembleODEfolder, name, prefix, foldername, legendlabels, paired=False, separate=False, quant=False, format='landscape'):

    ## RB stuff:
    rb_dicarr, rb_cols = prepare_ensemble_rb_models(ensembleRB, pattern)
    rbselected = [0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]
    rb_cols_2 = [n for i, n in enumerate(rb_cols) if i in rbselected]
    rb_dicarr_2 = {key:val for key, val in rb_dicarr.iteritems() if key in rb_cols_2}

    ## ODE stuff:
    ode_dicarr, ode_cols = prepare_ensemble_ode_models(ensembleODE, ensembleODEfolder)

    if paired == True:
        plot_paired_SD(ode_dicarr, ode_cols, rb_dicarr_2, rb_cols_2,
                       foldername=foldername, legendlabels=legendlabels, name=name+'_'+prefix,
                       format=format)
    elif separate == True:
        plot_paired_separate_SD(ode_dicarr, ode_cols, rb_dicarr_2, rb_cols_2,
                             foldername=foldername, legendlabels=legendlabels, name=name+'_'+prefix)
    # if quant == True:
    #     plot_paired_quants(orgdf, dfdata3SEL, foldername=foldername, name=name+prefix)
    else:
        raise NameError("You have to set one of these to True: paired, separate, quant")




def plot_overlaid_rb2rb_SD(ensemblefolder_0, ensemblefolder_1, pattern, name, prefix, foldername, legendlabels,  paired=False, separate=False, quant=False, format='landscape'):

    rbselected = [0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]
    ## RB 0 stuff:
    rb_dicarr0, rb_cols0 = prepare_ensemble_rb_models(ensemblefolder_0, pattern)
    rb_cols00 = [n for i, n in enumerate(rb_cols0) if i in rbselected]
    rb_dicarr00 = {key:val for key, val in rb_dicarr0.iteritems() if key in rb_cols00}

    ## RB 1 stuff:
    rb_dicarr1, rb_cols1 = prepare_ensemble_rb_models(ensemblefolder_1, pattern)
    rb_cols11 = [n for i, n in enumerate(rb_cols1) if i in rbselected]
    rb_dicarr11 = {key:val for key, val in rb_dicarr1.iteritems() if key in rb_cols11}

    if paired == True:
        plot_paired_SD(rb_dicarr00, rb_cols00, rb_dicarr11, rb_cols11,
                       foldername=foldername, legendlabels=legendlabels,name=name+'_'+prefix,
                       format=format)
    # if separate == True:
    #     plot_paired_separate( dfdata3SEL, foldername=foldername, name=name+prefix)
    # if quant == True:
    #     plot_paired_quants(orgdf, dfdata3SEL, foldername=foldername, name=name+prefix)
    else:
        raise NameError("You have to set one of these to True: paired, separate, quant")
