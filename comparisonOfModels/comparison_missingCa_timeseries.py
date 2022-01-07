import  matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import sys, os
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
from corex_tools import plot_timeseriesRe
from corex_tools import plot_df
from corex_tools import plot_two_curves
import re
from macro2micro_rates import convert_concentrations_to_copies
import matplotlib.pyplot as plt
import statsmodels.api as sm
from pandas.stats.moments import rolling_window
import statsmodels.tsa.stattools as ts
import statsmodels
from statsmodels.tsa.stattools import coint
import seaborn as sns
import matplotlib.pyplot as plt
from corex_tools import factorise_2


## -----------------------------------------------------------------------------
## -- My model: plot only with these observables as in original model:
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_missingCa/notFull-CaRates_15_1.7_CaStim_RateBased_missingCa2+.out"

## outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_missingCa/CaRates_15_1.7_CaStim_RateBased_missingCa2+_33obs.out"

outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_oneBindingSite_DARPP/oBS_Ca+PP2B_ca-15_1.7_caStim-rateBased.out"


labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
dfdata3 = pd.DataFrame(data = ematrix3, columns=labels3)

## -----------------------------------------------------------------------------
## Sum to plot as in original

## with notFull:
# asorginal = dfdata3.columns[:-6]
## with 33 variables:
# asorginal = dfdata3.columns[:-16]

asorginal = dfdata3.columns[:-16]
asoriginalsum = pd.DataFrame(dfdata3[asorginal].sum(axis=1), columns=['asOriginal_Ca2+*'])

asoriginalsum.plot()
plt.show()

## Sum only last 6 of asoriginal and then combine with the rest:
unsum = dfdata3[asorginal[:-6]]
summed = pd.DataFrame(dfdata3[asorginal[-6:]].sum(axis=1), columns=[asorginal[-6]])

asOriginal = pd.concat([unsum,summed], axis=1)

## Sum first 13 of asoriginal; take as it is only first species that in RB is a sum of
## multipel species:
asoriginalsum2 = pd.DataFrame(dfdata3[asorginal[:-5]].sum(axis=1), columns=['asOriginal_Ca2+*_ii'])


## -----------------------------------------------------------------------------
## Sum the very last missing observables
missing = dfdata3.columns[-16:]
missingsum = pd.DataFrame( dfdata3[missing].sum(axis=1), columns=['summed_missing'])

dfdata3[missing].plot()
plt.show()



## Plotting separately side-by-side :
data = dfdata3[missing]

filename = "16_missing_as_ca_species.jpeg"
sns.set(font_scale=1)

ii = 4
jj = 4
xmax=1400
ymax=180

for i, j in enumerate(data):
    plt.subplot(ii, jj, i+1)
    #yaxis="copy-number of species"
    #xaxis="time-steps"
    plt.plot(data[j], linewidth = 2)
    plt.title(str(i), fontsize=10)
    #plt.ylabel(yaxis, fontsize=12)
    #plt.xlabel(xaxis, fontsize=12)
    #plt.xlim([0, xmax])
    #plt.ylim([0, ymax])
    plt.grid()

plt.tight_layout()
plt.savefig(filename, dpi=600, bbox_inches='tight')
plt.show()
plt.close()



## -----------------------------------------------------------------------------
## ORIGINAL MODEL transformed into copy-numbers by COPASI
outfile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults/tc_LSODA_700_1400.txt"



delim = '\t'
labels, ematrix = timeseries_2_array(outfile, delim = delim)
dfdata = pd.DataFrame(data = ematrix, columns=labels)

## ---- Summing only Ca:
pattern = "Ca"

colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]
cols = dfdata.columns[colsList]
caObssum = pd.DataFrame(dfdata[cols].sum(axis=1), columns=['original_Ca2+*'])

original = dfdata[cols]



## ---- Summing Ca and hidden Ca in active PP2B:
patterns = ["Ca", "PP2B.ParticleNumber"]

colsList = [i for i, item in enumerate(labels) for p in patterns if re.search(p, item)]
cols = dfdata.columns[colsList]
caObssum = pd.DataFrame(dfdata[cols].sum(axis=1), columns=['original_Ca2+*|PP2B'])

original = dfdata[cols]



### ------------- Plotting summed curves: -----------------------
sns.set(font_scale=1)

ds = pd.concat([caObssum, asoriginalsum], axis=1, ignore_index=True)
ds.columns  = ['original_Ca2+*', 'asOriginal_Ca2+*_ii']
plttitle = ds.columns[0]+" and "+ds.columns[1]
#xmax=1400
#ymax=4000
yaxis="copy-number of species"
xaxis="time-steps"
plt.gca().set_color_cycle(['red', 'black'])
plt.plot(ds, linewidth = 2, alpha=0.6)
plt.title(plttitle, fontsize=12)
#plt.ylabel(yaxis, fontsize=12)
#plt.xlabel(xaxis, fontsize=12)
#plt.xlim([0, xmax])
#plt.ylim([0, ymax])
plt.grid()
plt.legend(ds, loc='upper-left', fontsize=10)
plt.tight_layout()
filename = "determ2stoch_plots/summed_missingCa2+_case/"+ds.columns[0]+"_"+ds.columns[1]+"paired.png"
plt.savefig(filename, dpi=600, bbox_inches='tight')
plt.show()
plt.close()



### ------------- Plotting each pair separately : ----------------------
filename = "all_paired_Ca*.png"

colszipped = zip(original.columns, asOriginal.columns)

sns.set(font_scale=1)
ii, jj = factorise_2(len(colszipped))

ii = 3
jj = 5

for i, j in enumerate(colszipped):
    plt.subplot(ii, jj, i+1)
    ds = pd.concat([original[j[0]], asOriginal[j[1]]], axis=1, ignore_index=True)
    ds.columns  = [j[0], j[1]]
    #plttitle = j[0]+" and "+j[1]
    #xmax=1400
    #ymax=4000
    #yaxis="copy-number of species"
    #xaxis="time-steps"
    plt.gca().set_color_cycle(['red', 'black'])
    plt.plot(ds, linewidth = 2, alpha=0.6)
    #plt.title(plttitle, fontsize=12)
    #plt.ylabel(yaxis, fontsize=12)
    #plt.xlabel(xaxis, fontsize=12)
    #plt.xlim([0, xmax])
    #plt.ylim([0, ymax])
    plt.grid()
    plt.legend(ds, loc='upper-left', fontsize=10)

plt.tight_layout()
plt.savefig(filename, dpi=600, bbox_inches='tight')
plt.show()
plt.close()


#######################################################################
## THERE IS SOMETHING WRONG WITH THE COPY-NUMBERS TRANSLATED BY COPASI
## NEED MORE EXAMINATION:

# 1. Run COPASI with concentrations
# 2. transform by my own function
# 3. plot again paired curves

## -----------------------------------------------------------------------------
## ORIGNAL MODEL - transformed into copy-numbers with my function
## COPASI simulation with concentrations:
##

outfile2 = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults/tc_LSODA_700_1400_concent.txt"

# 1. Apply convertion to the time courses with concentrations:
delim = '\t'
labels2, ematrix2 = timeseries_2_array(outfile2, delim = delim)
dfdata2 = pd.DataFrame(data = ematrix2, columns=labels2)
transdfdata2 = dfdata2.transform(convert_concentrations_to_copies)

pattern = "Ca"

colsList2 = [i for i, item in enumerate(labels2) if re.search(pattern, item)]
cols2 = transdfdata2.columns[colsList2]
caObssum2 = pd.DataFrame(transdfdata2[cols2].sum(axis=1), columns=['original_Ca2+*'])

original2 = transdfdata2[cols2]




### ------------- Plotting all curves ONLY: -----------------------
import seaborn as sns
import matplotlib.pyplot as plt
from corex_tools import factorise_2

filename = "all_paired_Ca*_conc.png"

colszipped = zip(original2.columns, asOriginal.columns)

sns.set(font_scale=1)
ii, jj = factorise_2(len(colszipped))

ii = 3
jj = 5

for i, j in enumerate(colszipped):
    plt.subplot(ii, jj, i+1)
    ds = pd.concat([original2[j[0]], asOriginal[j[1]]], axis=1, ignore_index=True)
    ds.columns  = [j[0], j[1]]
    #plttitle = j[0]+" and "+j[1]
    #xmax=1400
    #ymax=4000
    #yaxis="copy-number of species"
    #xaxis="time-steps"
    plt.gca().set_color_cycle(['red', 'black'])
    plt.plot(ds, linewidth = 2, alpha=0.6)
    #plt.title(plttitle, fontsize=12)
    #plt.ylabel(yaxis, fontsize=12)
    #plt.xlabel(xaxis, fontsize=12)
    #plt.xlim([0, xmax])
    #plt.ylim([0, ymax])
    plt.grid()
    plt.legend(ds, loc='upper-left', fontsize=10)

plt.tight_layout()
plt.savefig(filename, dpi=600, bbox_inches='tight')
plt.show()
plt.close()


################  CONCLUSIONS:  ###################################
# All look just the same as with COPASI translated copy-numbers.
# There are half species everywhere.
