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
from macro2micro_rates import convert_concentrations_to_copies
import re

import matplotlib.pyplot as plt
import statsmodels.api as sm
from pandas.stats.moments import rolling_window
import statsmodels.tsa.stattools as ts
import statsmodels
from statsmodels.tsa.stattools import coint

## -----------------------------------------------------------------------------
## ORIGNAL MODEL - transformed into copy-numbers on the level of COPASI

#outplotfolder = "stoch2stoch_ss_plots"

outplotfolder = "stoch2stoch_ss_plots/summed_plots_paired_curves_oneBindingSite_DARPP"
outfile = "../withCOPASIpy/results/stochastic_700_1400_ii.txt"

## ---------------------------------------------------------------------------
## Now to plot all together:
# 1.Translate all observables to patterns to fish and sum the right observables:
obstocomparewith = ["cAMP","Ca$", "Ca", "PKA", "_CDK5", "CK1$", "PP2AP", "PP2A*Ca", "_PP2C", "PP2B$", "PDEP", "D$", "34", "75", "137"]

# 2. Load data:
delim = ', '
labels, ematrix = timeseries_2_array(outfile, delim = delim)
dfdata = pd.DataFrame(data = ematrix, columns=labels)

# 2.1  Apply convertion to the time courses with concentrations:
transdfdata = dfdata.transform(convert_concentrations_to_copies)

combodf = pd.DataFrame()

for pattern in obstocomparewith:
    colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]
    cols = transdfdata.columns[colsList]
    dftosum = pd.DataFrame(transdfdata[cols].sum(axis=1), columns=[pattern])
    combodf = pd.concat([combodf, dftosum], axis=1,  ignore_index=True)

# 3. Plot all curves as in the paper
combodf.columns = ["cAMP","free_Ca", "Ca*", "PKA", "_CDK5", "CK1u", "PP2AP", "PP2A*Ca", "_PP2C", "PP2Bactive", "PDEP", "D", "T34", "T75", "S137"]

plot_df(combodf[combodf.columns[[0,1,11,12,13,14]]], plottitle="Original model as stochastic at steady state ", figfilename=outplotfolder+"/summedpatternsOriginal_selected_STOCH_conc.png")

## -----------------------------------------------------------------------------
## MY STOCHASTIC MODEL STUFF
##
# outfile3 = "../../postmodel_pipeline/model_phenotypes_ii/basic/out_steady_state/CaRates_15_1.7_SS.out"
outfile3 = "../../postmodel_pipeline/model_phenotypes_ii/basic/out_oneBindingSite_DARPP/no_stimulus_ss.out"

labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
dfdata3 = pd.DataFrame(data = ematrix3, columns=labels3)

plot_df(dfdata3[dfdata3.columns[[0,1,11,19,20,21]]], plottitle="RB model; at steady state", figfilename=outplotfolder+"/rb_model_selected_SS.png")

## -----------------------------------------------------------------------------
## PLOT THEM TOGETHER
##

dfdata3SEL = dfdata3[dfdata3.columns[[0,1,2,3,4,5,6,7,8, 9,10,11,19,20,21]]]
colszipped = zip(combodf.columns, dfdata3SEL)

### ------------- Plotting all curves ONLY: -----------------------
import seaborn as sns
import matplotlib.pyplot as plt
from corex_tools import factorise_2

# filename = "all_paired_ss_fixed_axes_oBS.png"
filename = "all_paired_ss_NONfixed_axes.png"

sns.set(font_scale=1)
ii, jj = factorise_2(len(colszipped))

ii = 3
jj = 5

for i, j in enumerate(colszipped):
    plt.subplot(ii, jj, i+1)
    ds = pd.concat([combodf[j[0]], dfdata3SEL[j[1]]], axis=1, ignore_index=True)
    ds.columns  = [j[0], j[1]]
    plttitle = j[0]+" and "+j[1]
    #xmax=1400
    #ymax=3500
    #yaxis="copy-number of species"
    #xaxis="time-steps"
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
plt.savefig(filename, dpi=600, bbox_inches='tight')
plt.show()
plt.close()
