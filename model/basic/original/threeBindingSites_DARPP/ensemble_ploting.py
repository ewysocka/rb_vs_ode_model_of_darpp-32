# coding: utf-8

import numpy as np; np.random.seed(22)
import seaborn as sns; sns.set(color_codes=True)
import matplotlib.pyplot as plt
from glob import glob
import os,sys
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
import pandas as pd
import collections
from collections import defaultdict


### --------- From the example :
# x = np.linspace(0, 15, 31)
# data = np.sin(x) + np.random.rand(10, 31) + np.random.randn(10, 1)
# ax = sns.tsplot(data=data)

# # Show the trace from each sampling unit:
# ax = sns.tsplot(data=data, err_style="unit_traces")

# plt.show()

# # ----
# gammas = sns.load_dataset("gammas")
# ax = sns.tsplot(time="timepoint", value="BOLD signal",
#                 unit="subject", condition="ROI",
#                 data=gammas)


### -------- MINE:: GET the data -----------------
## x -  1400
## data.shape = (40,1401)

ensemblefolder = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/original/threeBindingSites_DARPP/out_ensemble/"
fpattern = "data_*.out"


ensfiles = glob(ensemblefolder+fpattern)
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

dic = defaultdict(list)
for i in listofdfs:
    for n in cols:
        dic[n].append(list(i[n]))

dicarr = {key:np.array(val) for key,val in dic.iteritems()}

### ------------  Picking up which error bars to show -------------------------
# err_style : string or list of strings or None
# Names of ways to plot uncertainty across units from set of {ci_band, ci_bars, boot_traces, boot_kde, unit_traces, unit_points}. Can use one or more than one method.

# ci : float or list of floats in [0, 100] or “sd” or None
# Confidence interval size(s). If a list, it will stack the error plots for each confidence interval. If "sd", show standard deviation of the observations instead of boostrapped confidence intervals. Only relevant for error styles with “ci” in the name.

# sns.set(color_codes=True)
# # errors = ["ci_bars", "boot_traces", "unit_traces", "unit_points"]

# ii, jj = 2,2

# for idx, e in enumerate(errors):
#     plt.subplot(ii, jj, idx+1)
#     ax = sns.tsplot(data=np.array(dic[n]), err_style=e)
#     plt.title(e)

# plt.show()

## ---------- CONCLUSION:  ----------------------
## Decision is to plot the sd only; with "unit_traces" is too much information;
## the rest is not good



## -------- PLOTTING EACH VARIABLE WITH SD ------
sns.set(font_scale=1)

selected = [0,1,2,3,4,5,6,7,8,9,10,11,19,20,21]
selectedcols = [n for idx, n in enumerate(cols) if idx in selected]

ii, jj = 3, 5

for idx, n in enumerate(selectedcols):
    plt.subplot(ii, jj, idx+1)
    plttitle = n
    yaxis="copy-number of species"
    xaxis="time-steps"
    # ax = sns.tsplot(data=np.array(dic[n]), ci="sd")
    ax = sns.tsplot(data=dic[n], err_style="unit_traces")
    plt.title(plttitle, fontsize=12)
    #plt.ylabel(yaxis, fontsize=16)
    #plt.xlabel(xaxis, fontsize=16)
    # if xmax!=None:
    #     plt.xlim([0, xmax])
    # if ymax!=None:
    #     plt.ylim([0, ymax])
    plt.xticks(fontsize = 14)
    plt.yticks(fontsize = 14)
    plt.grid()

# plt.title("sd")
# plt.title("unit_traces")

plt.subplots_adjust(left=0.22, bottom=0.04, right=0.99, top=0.68, wspace=0.29, hspace=0.4)
filename = ensemblefolder+"/all_unit_traces.png"
#filename = ensemblefolder+"/all_sd.png"
plt.savefig(filename, dpi=300, bbox_inches='tight')
plt.show()
plt.close()

#plt.show()
# plt.tight_layout()


## --------  Test of multiple curves on one plot in a loop : -----------------
import itertools

sns.set(font_scale=1,style="darkgrid")
palette = itertools.cycle(sns.color_palette())

fig, ax = plt.subplots()

for n in selectedcols:
    yaxis="copy-number of species"
    xaxis="time-steps"
    sns.tsplot(data=np.array(dicarr[n]), ci="sd", color=next(palette))
    # plt.title(plttitle, fontsize=12)
    # #plt.ylabel(yaxis, fontsize=16)
    # #plt.xlabel(xaxis, fontsize=16)
    # # if xmax!=None:
    # #     plt.xlim([0, xmax])
    # # if ymax!=None:
    # #     plt.ylim([0, ymax])
    # plt.xticks(fontsize = 14)
    # plt.yticks(fontsize = 14)
    # plt.grid()

plt.legend(dicarr, labels=selectedcols, loc='upper-left', fontsize=14)
plt.show()

## -------- Sanity check if numpy does the same but 'na pieszo' ---------------
x = np.linspace(0, len(dicarr[n][1]), len(dicarr[n][1]))
y = np.mean(dicarr[n], axis=0)
error = np.std(dicarr[n], axis=0)

plt.plot(x, y, 'k', color='#CC4F1B')
plt.fill_between(x, y-error, y+error,
    alpha=0.5, edgecolor='#CC4F1B', facecolor='#FF9848')

### Both curves does the same stuff;
