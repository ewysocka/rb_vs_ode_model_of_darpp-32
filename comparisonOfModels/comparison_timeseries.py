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

import comparison_timeseries_toolkit
from comparison_timeseries_toolkit import plot_paired

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
## ORIGNAL MODEL - transformed into copy-numbers on the level of COPASI
##
## General plotting of original model curves to get the feeling of the observables
##

###############   ORIGINAL MODEL DATA PATHAS ###################################
# outfile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults/tc_LSODA_700_1400.txt"

## TO PLOT:
outfile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/filesProducedWithGUI/tc_directmethod700_1400.txt"

# outfile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults_mutants/constSer_tc_LSODA_700_1400.txt"

# outfile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults_mutants/ser2Ala_tc_LSODA_700_1400.txt"

## ---- NAMES TO SAVE FILES WITH --------
name = "wild-type"
# name = "constitutive_Ser137"
# name = "serine_to_alanine"

## ------------------------------------------------------------------------------
mylabelsStripped = ['cAMP', 'Ca','PKA', 'CDK5', 'CK1', 'PP2A', 'PP2C', 'PP2B','PDE','D', '34','75','137']

# foldername = "original_model_plots/plots_original_summed_curves"
# foldername2 = "original_model_plots/plots_original_unsummed_curves"

# foldername = "/home/fewpills/projectrepo/original_fernandezModel/comparisonOfModels/forISMB-ECCB"
foldername = "/home/fewpills/projectrepo/original_fernandezModel/comparisonOfModels/forThesis"

# foldername = "original_model_plots_mutants/constSer_plots_original_summed"
# foldername2 = "original_model_plots_mutants/constSer_plots_original_unsummed"

# foldername = "original_model_plots_mutants/ser2Ala_plots_original_summed"
# foldername2 = "original_model_plots_mutants/ser2Ala_plots_original_unsummed"

# foldername = "original_model_plots_mutants/ser2Ala_plots_original_summed"
# foldername2 = "original_model_plots_mutants/ser2Ala_plots_original_unsummed"

## -----------------------------------------------------------------------------
# for lab in mylabelsStripped:
#     ### Not summed:
#     plot_timeseriesRe(outfile,
#                       lab,
#                       plottitle="*"+lab+"*",
#                       delim='\t',
#                       figfilename=foldername2+"/ODE_"+lab+".png")
#     try:
#         plot_timeseriesRe(outfile,
#                           "^"+lab+".ParticleNumber$",
#                           plottitle=lab+" free",
#                           delim='\t',
#                           figfilename=foldername2+"/ODE_"+lab+"_free.png")
#     except ZeroDivisionError:
#         plot_timeseriesRe(outfile,
#                           "D"+lab+".ParticleNumber$",
#                           plottitle=lab+" free",
#                           delim='\t',
#                           figfilename=foldername2+"/ODE_"+lab+"_free.png")

#     ### Summed:
#     plot_timeseriesRe(outfile,
#                       lab,
#                       plottitle=lab+" summed",
#                       delim='\t',
#                       figfilename=foldername+"/ODE_"+lab+"_summed.png",
#                       summed=True)


## ---------------------------------------------------------------------------
## Now to plot all together:
# 1.Translate all observables to patterns to fish and sum the right observables:
## -----------------------------------------------------------------------------
obstocomparewith = ["cAMP","Ca.ParticleNumber", "Ca", "PKA", "_CDK5", "CK1.ParticleNumber", "PP2AP", "PP2A*Ca", "_PP2C", "PP2B.ParticleNumber", "PDEP", "D.ParticleNumber", "34", "75", "137"]

# obstocomparewith = ["cAMP","Ca.ParticleNumber", "PKA", "_CDK5", "CK1.ParticleNumber", "PP2AP", "PP2A*Ca", "_PP2C", "PP2B.ParticleNumber", "PDEP", "D.ParticleNumber", "34", "75", "137"]

# obstocomparewith = ["_PP2C", "D.ParticleNumber", "34", "137"]

delim = '\t'
labels, ematrix = timeseries_2_array(outfile, delim = delim)
dfdata = pd.DataFrame(data = ematrix, columns=labels)

combodf = pd.DataFrame()

# 2. Get the above observables, sum them and save to dataframe:
for pattern in obstocomparewith:
    colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]
    cols = list(dfdata.columns[colsList])
    dftosum = pd.DataFrame(dfdata[cols].sum(axis=1), columns=[pattern])
    combodf = pd.concat([combodf, dftosum], axis=1,  ignore_index=True)


# 3. Plot all curves as in the paper
combodf.columns = ["cAMP","free_Ca", "Ca*", "PKA", "_CDK5", "CK1u", "PP2AP", "PP2A*Ca", "_PP2C", "PP2Bactive", "PDEP", "D", "T34", "T75", "S137"]

# combodf.columns = ["cAMP","free_Ca", "PKA", "_CDK5", "CK1u", "PP2AP", "PP2A*Ca", "_PP2C", "PP2Bactive", "PDEP", "D", "D34", "D75", "D137"]

# combodf.columns = ["_PP2C", "D", "D34", "D137"]

plot_df(combodf, plottitle="ODE model: "+name, figfilename=foldername+'/'+name+"_summedpatternsOriginal.png", xmax=1400, ymax=4000)

plot_df(combodf[combodf.columns[[0,1,11,12,13,14]]], plottitle="ODE model: "+name, figfilename=foldername+'/'+name+"_summedpatternsOriginal_selected.png", xmax=1400, ymax=4400)

# plot_df(combodf[combodf.columns[[0,1,10,11,12,13]]], plottitle="ODE MODEL: "+name, figfilename=foldername+'/'+name+"_summedpatternsOriginal_selected.png", xmax=1400, ymax=4000)

# plot_df(dftosum, plottitle= "ODE model "+name, figfilename = name+"_Ca+PP2B.png")

# 4. Throw to a file:
# combodf.to_csv(name+"_fernandezTS_original_as_df_15.csv")


## -----------------------------------------------------------------------------
## ORIGNAL MODEL - transformed into copy-numbers with my function
##
## COPASI simulation with concentrations:
## **The results where the same as in COPASI with particle number setting so
##   it was abondoned**
## -----------------------------------------------------------------------------

# infile = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults/tc_LSODA_700_1400_concent.txt"

# # 1. Load data
# delim = '\t'
# labels2, ematrix2 = timeseries_2_array(infile, delim = delim)
# dfdata2 = pd.DataFrame(data = ematrix, columns=labels)

# # 1.1  Apply convertion to the time courses with concentrations:
# transdfdata2 = dfdata2.transform(convert_concentrations_to_copies)

# # 2.Translate all observables to patterns to fish and sum the right observables:

# obstocomparewith2 = ["cAMP","[Ca]", "Ca", "PKA", "_CDK5", "CK1]", "PP2AP", "PP2A*Ca", "_PP2C", "PP2B]", "PDEP", "[D]", "34", "75", "137"]

# combodf2 = pd.DataFrame()

# #pattern1 = "cAMP"
# #pattern2 = "PKA"

# # 2. Get the above observables, sum them and save to dataframe:

# for pattern in obstocomparewith2:
#     colsList = [i for i, item in enumerate(labels2) if re.search(pattern, item)]
#     cols = transdfdata2.columns[colsList]
#     dftosum = pd.DataFrame(transdfdata2[cols].sum(axis=1), columns=[pattern])
#     combodf2 = pd.concat([combodf2, dftosum], axis=1,  ignore_index=True)

# # 3. Plot all curves as in the paper
# combodf2.columns = ["cAMP","free_Ca", "Ca*", "PKA", "_CDK5", "CK1u", "PP2AP", "PP2A*Ca", "_PP2C", "PP2Bactive", "PDEP", "D", "T34", "T75", "S137"]

# sns.set(font_scale=1)
# plot_df(combodf2, plottitle="Original model (conc)", figfilename="summedpatternsOriginal_fromConc.png", xmax=1400, ymax=4000)
# plot_df(combodf2[combodf2.columns[[0,1,11,12,13,14]]], plottitle="Original model (conc)", figfilename="summedpatternsOriginal_selected_fromConc.png", xmax=1400, ymax=4000)



## -----------------------------------------------------------------------------
## MY STOCHASTIC MODEL STUFF
##
## Some trials at the beginning
## -----------------------------------------------------------------------------
# outfile2 = "/home/fewpills/projectrepo/original_fernandezModel/withCOPASIpy/results/stochastic_700_1400_ii.txt"
# plot_timeseriesRe(outfile2, "D75", plottitle="D75*", delim=', ',  figfilename="ODE_D75_summed.png", xmax=1400, summed=True)
# pattern = "D75"
# colsList = [i for i, item in enumerate(labels) if re.search(pattern, item)]
# cols = dfdata.columns[colsList]
# dftoplot = dfdata[cols].sum(axis=1)
# plot_df(dftoplot.astype(int), plottitle, figfilename, xmax=1400)
# plot_timeseriesRe(outfile2, "D34 separate curves", plottitle="D34 stochastic", delim="\t", figfilename="D34_stoch_700_1400.png")

## ------------   DATA FILES   -------------------------------------------------
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_toBe_averaged/data_4_Cadestroy_CaInflux2400_?.out"

outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_th75inhibitionFINAL/CaRates_15_1.7_CaStim_RateBased4.out"

outfile1 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/out_oneBindingSite_DARPP/CaRates_15_1.7_CaStim_RateBased_oneBindingSiteDARPP.out"

# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/constitutiveSer137p/threeBindingSites_DARPP/out/constSer137_ca-15_1.7_caStim-rateBased.out"

# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/Ser137Ala/threeBindingSites_DARPP/out/ser2Ala_ca-15_1.7_caStim-rateBased.out"

# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/constitutiveSer137p/oneBindingSite_DARPP/out/oBS_constSer_ca-15_1.7_caStim-rateBased.out"

# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/Ser137Ala/oneBindingSite_DARPP/out/oBS_ser2Ala_ca-15_1.7_caStim-rateBased.out"

## -----------------------------------------------------------------------------
## Retrive data
## -----------------------------------------------------------------------------
labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
dfdata3 = pd.DataFrame(data = ematrix3, columns=labels3)

labels1, ematrix1 = timeseries_2_array(outfile1, delim = " ")
dfdata1 = pd.DataFrame(data = ematrix1, columns=labels1)

## -----------------------------------------------------------------------------
## To compare oneBindingSite with threeBindingSites:
labs = ['cAMP*', 'free_Ca2+*', 'all_Ca2+*', 'PKA*', 'CDK5_*', 'CK1u*', 'PP2Ap*', 'PP2Aca_*', 'PP2C_*', 'PP2Ba*', 'PDEp*', 'D*', 'Thr75*', 'Thr34*', 'Ser137*', 'Thr75:Ser137*', 'Thr34:Thr75*', 'Thr34:Ser137*', 'Thr34:Thr75:Ser137*', 'D34*', 'D75*', 'D137*']

labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
dfdata3 = pd.DataFrame(data = ematrix3, columns=['three'+ i for i in labs])

labels1, ematrix1 = timeseries_2_array(outfile1, delim = " ")
dfdata1 = pd.DataFrame(data = ematrix1, columns=['one'+ i for i in labs])

#####
labels3, ematrix3 = timeseries_2_array(outfile3, delim = " ")
dfdata3 = pd.DataFrame(data = ematrix3, columns=labs)

labels1, ematrix1 = timeseries_2_array(outfile1, delim = " ")
dfdata1 = pd.DataFrame(data = ematrix1, columns=labs)

#######
dfdata3.columns = ['cAMP*', 'free_Ca2+*', 'all_Ca2+*', 'PKA*', 'CDK5_*', 'CK1u*', 'PP2Ap*', 'PP2Aca_*', 'PP2C_*', 'PP2Ba*', 'PDEp*', 'D*', 'Thr75*', 'Thr34*', 'Ser137*', 'Thr75:Ser137*', 'Thr34:Thr75*', 'Thr34:Ser137*', 'Thr34:Thr75:Ser137*', 'D34*', 'D75*', 'D137*']

## Plot all curves as in the paper
plot_df(dfdata3[dfdata3.columns[[0,1,11,19,20,21]]], plottitle="RB MODEL: " + name, figfilename=foldername+'/'+name+"rb_model_selected.png", xmax=1400, ymax=4000)


##############################################################################
name = "one binding site"
dfdata1.columns = ['cAMP*', 'free_Ca2+*', 'all_Ca2+*', 'PKA*', 'CDK5_*', 'CK1u*', 'PP2Ap*', 'PP2Aca_*', 'PP2C_*', 'PP2Ba*', 'PDEp*', 'D*', 'Thr75*', 'Thr34*', 'Ser137*', 'Thr75:Ser137*', 'Thr34:Thr75*', 'Thr34:Ser137*', 'Thr34:Thr75:Ser137*', 'D34*', 'D75*', 'D137*']

plot_df(dfdata1[dfdata1.columns[[0,1,11,19,20,21]]], plottitle="RB MODEL: " + name, figfilename=foldername+'/'+name+"rb_model_selected.png", xmax=1400, ymax=4000)

## -----------------------------------------------------------------------------
## COMPARISON OF TWO MODELS:

dfdata3SEL = dfdata3[dfdata3.columns[[0,1,3,4,5,6,7,8,9,10,11,19,20,21]]]
dfdata3SEL = dfdata3[dfdata3.columns[[8,11,19,21]]]
# colszipped = zip(combodf.columns, dfdata3SEL)

filename = foldername+"/"+"paired_"+name+"4.png"

# plot_paired(combodf, dfdata3SEL, filename=filename)

dfdata1 = combodf
dfdata2 = dfdata3SEL

colszipped = zip(dfdata1, dfdata2)

sns.set(font_scale=1)
ii, jj = factorise_2(len(colszipped))

ii = 2
jj = 2

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
    #plt.xlim([0, xmax])
    #plt.ylim([0, ymax])
    plt.xticks(fontsize = 14)
    plt.yticks(fontsize = 14)
    plt.grid()

# plt.legend(ds, labels=['ODE','RB'], loc='upper-left', fontsize=14)

plt.tight_layout()
plt.savefig(filename, dpi=200, bbox_inches='tight')
plt.show()
plt.close()

## To compare oneBindingSite with threeBindingSites:
dfdata3SEL = dfdata3[dfdata3.columns[[0,1,3,4,5,6,7,8,9,10,11,19,20,21]]]
dfdata1SEL = dfdata1[dfdata1.columns[[0,1,3,4,5,6,7,8,9,10,11,19,20,21]]]


## ------------- Throw data out -----------------------------------
# both = pd.concat([dfdata3SEL, combodf], axis=1)
## both.to_csv("fernandezTimeSeries_ode_rulebased_?.csv")
# both.to_csv("fernandezTimeSeries_ode_rulebased_CaRateStim_"+name+".csv")


### ------------- Plotting all curves ONLY ( no metrics ): ------------------
# pref = "oBS_"
pref = "oBS_tBS"

filename = foldername+'/'+"all_paired_"+pref+name+".png"

plot_paired(dfdata3SEL, dfdata1SEL, filename=filename)



### ------------- Plotting each pair separately : ----------------------

## foldername = "determ2stoch_plots/summed_plots_paired_curves_oneBindingSite_DARPP"
foldername = "determ2stoch_plots/summed_plots_constitutive137"
foldername = "determ2stoch_plots/summed_plots_ser2ala"

sns.set(font_scale=1)

for i, j in enumerate(colszipped):
    ds = pd.concat([combodf[j[0]], dfdata3SEL[j[1]]], axis=1, ignore_index=True)
    ds.columns  = [j[0], j[1]]
    plttitle = j[0]+" and "+j[1]
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
    filename = foldername+"/"+j[0]+"_"+j[1]+"paired_"+name+".png"
    plt.savefig(filename, dpi=600, bbox_inches='tight')
    plt.show()
    plt.close()


## ------------- Load data  ------------------------------------
# bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_?.csv")
# bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_CaRateStim.csv")
# bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_CaRateStim_oneBindingSite_DARPP.csv")

bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_CaRateStim_"+name+".csv")
filename = "all_CaRateStim+corr+coint_"+name+".png"

## -- Plotting it all together with quantitative comparisons ---

left, width = .25, .5
bottom, height = .25, .5
right = left + width
top = bottom + height

ii = 3
jj = 5

for i in range(1, (len(bothback.columns)-1)/2+1):
    plt.subplot(ii, jj, i)
    b = bothback[bothback.columns[i]]
    a = bothback[bothback.columns[i+15]]
    corrab = round(a.corr(b), 2)
    cointab = round(coint(a,b)[1], 2)
    ds = pd.concat([a,b], axis=1, ignore_index=True)
    ds.columns  = [a.name, b.name]
    plttitle = a.name+" and "+b.name
    xmax=1400
    ymax=4000
    # yaxis="copy-number of species"
    # xaxis="time-steps"
    plt.gca().set_color_cycle(['red', 'black'])
    plt.plot(ds, linewidth = 2, alpha=0.6)
    plt.title(plttitle, fontsize=10)
    plt.text(top, right, "CORR: "+ str(corrab)+ "\n COINT: "+ str(cointab), verticalalignment='bottom', horizontalalignment='left', color = "orange", fontweight="bold")
    # plt.ylabel(yaxis, fontsize=12)
    # plt.xlabel(xaxis, fontsize=12)
    # plt.xlim([0, xmax])
    # plt.ylim([0, ymax])
    plt.grid()
    # plt.legend(ds)
    #, loc='upper-left', fontsize=10)

# plt.tight_layout()
plt.savefig(filename, dpi=600) # , bbox_inches='tight')
plt.show()
plt.close()
