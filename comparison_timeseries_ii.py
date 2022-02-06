import pandas as pd
import sys, os
sys.path.append(os.path.join(sys.path[0], "pytoolbox"))
from basic_tools import timeseries_2_array
from basic_tools import plot_df

from comparison_timeseries_toolkit import plot_modelsSelected_as_paper
from comparison_timeseries_toolkit import plot_mineSelected_as_paper_SD
from comparison_timeseries_toolkit import plot_modelsSelected_as_paper_SD
from comparison_timeseries_toolkit import plot_overlaid_ode2rb_SD
from comparison_timeseries_toolkit import plot_overlaid_rb2rb_SD

foldername = "./comparisonOfModels/thesisPlots"

## -----------------------------------
## PLOT STIMULI:
## -----------------------------------
f = "./rb_model/wildType/models/threeBindingSites_DARPP/out/wildType_ca-15_1.7_caStim-rateBased.out"
labels, arr = timeseries_2_array(f)
df = pd.DataFrame(arr, columns= labels)

plot_df(df[df.columns[:2]], "Ca2+ and cAMP stimuli")

## -----------------------------------
## PLOT ODE, W-T, deterministic model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile = "./ode_model/withCopasiGUI_SE/ODEresults/tc_LSODA_700_1400.txt"
prefix = ''
name = "wild-type"

plot_modelsSelected_as_paper(outfile, foldername, name, prefix)


## -----------------------------------
## PLOT ODE, W-T, stochastic model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile = "./ode_model/withCopasiGUI_SE/filesProducedWithGUI/tc_directmethod700_1400"
name = "wild-type"
prefix = "stochastic"

# plot_modelsSelected_as_paper(outfile, foldername, name, prefix)

## Ensemble of models: ---------------------------------------------------------
## In this file there are 40 runs
ensemblefile = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400"
ensemblefolder = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_out"

plot_modelsSelected_as_paper_SD(ensemblefile, ensemblefolder, name, prefix, foldername)

## ------------------------------------------------
## PLOT ODE, constitutive serine, deterministic model:
## ------------------------------------------------
## 1. Folder in + name + folder out
outfile = "./ode_model/withCopasiGUI_SE/ODEresults_mutants/constSer_tc_LSODA_700_1400.txt"
name = "constitutive_Ser137"
prefix = ''

plot_modelsSelected_as_paper(outfile, foldername, name, prefix)

## ------------------------------------------------
## PLOT ODE, serine2alanine, deterministic model:
## ------------------------------------------------
## 1. Folder in + name + folder out
outfile = "./ode_model/withCopasiGUI_SE/ODEresults_mutants/ser2Ala_tc_LSODA_700_1400.txt"
name = "serine_to_alanine"
prefix = ''

plot_modelsSelected_as_paper(outfile, foldername, name, prefix)


## -----------------------------------------------------------------------------
## MY STOCHASTIC MODEL
## -----------------------------------
## PLOT RB, W-T, tBS model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile3 = "/wildType/out_th75inhibitionFINAL/CaRates_15_1.7_CaStim_RateBased4.out"
name = "wild-type"
prefix = "tBS"
# plot_mineSelected_as_paper(outfile3, foldername, name, prefix)

## Ensemble of models: ---------------------------------------------------------
ensemblefolder = "./rb_model/wildType/models/threeBindingSites_DARPP/out_ensemble"
filepattern = "data_*.out"

plot_mineSelected_as_paper_SD(ensemblefolder, filepattern, name, prefix, foldername)

## -----------------------------------
## PLOT RB, constitutive serine, tBS model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile3 = "./rb_model/constitutiveSer137p/threeBindingSites_DARPP/out/constSer137_ca-15_1.7_caStim-rateBased.out"
name = "constitutive_serine"
prefix = "tBS"

# plot_mineSelected_as_paper(outfile3, foldername, name, prefix)

## Ensemble of models: ---------------------------------------------------------
ensemblefolder = "./rb_model/constitutiveSer137p/threeBindingSites_DARPP/out_ensemble"
filepattern = "data_*.out"

plot_mineSelected_as_paper_SD(ensemblefolder, filepattern, name, prefix, foldername)

## -----------------------------------
## PLOT RB, serine to alanine, tBS model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile3 = "./rb_model/Ser137Ala/threeBindingSites_DARPP/out/ser2Ala_ca-15_1.7_caStim-rateBased.out"
name = "serine_to_alanine"
prefix = "tBS"
# plot_mineSelected_as_paper(outfile3, foldername, name, prefix)

## Ensemble of models: ---------------------------------------------------------
ensemblefolder = "./rb_model/Ser137Ala/threeBindingSites_DARPP/out_ensemble"
filepattern = "data_*.out"

plot_mineSelected_as_paper_SD(ensemblefolder, filepattern, name, prefix, foldername)

## -----------------------------------
## PLOT RB, W-T, oBS model:
## -----------------------------------
## 1. Folder in + name + folder out
outfile1 = "./rb_model/wildType/out_oneBindingSite_DARPP/CaRates_15_1.7_CaStim_RateBased_oneBindingSiteDARPP.out"
name = "wild-type"
prefix = "oBS"

# plot_mineSelected_as_paper(outfile1, foldername, name, prefix)

## Ensemble of models: ---------------------------------------------------------
ensemblefolder = "./rb_model/wildType/models/oneBindingSite_DARPP/out_ensemble"
filepattern = "data_*.out"

plot_mineSelected_as_paper_SD(ensemblefolder, filepattern, name, prefix, foldername)

## -----------------------------------
## PLOT RB, constitutive serine, oBS model:
## -----------------------------------
## 1. Folder in + name + folder out
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/constitutiveSer137p/oneBindingSite_DARPP/out/oBS_constSer_ca-15_1.7_caStim-rateBased.out"
# name = "constitutive_serine"
# prefix = "_one_binding_site"
# foldername = "/home/fewpills/projectrepo/models_fernandezModel/comparisonOfModels/forThesis"

# plot_mineSelected_as_paper(outfile1, foldername, name, prefix)

# ## -----------------------------------
# ## PLOT RB, serine to alanine, oBS model:
# ## -----------------------------------
# ## 1. Folder in + name + folder out
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/Ser137Ala/oneBindingSite_DARPP/out/oBS_ser2Ala_ca-15_1.7_caStim-rateBased.out"
# name = "serine_to_alanine"
# prefix = "_one_binding_site"
# foldername = "/home/fewpills/projectrepo/models_fernandezModel/comparisonOfModels/forThesis"

# plot_mineSelected_as_paper(outfile1, foldername, name, prefix)

## -----------------------------------------------------------------------------
## COMPARISON OF TWO MODELS:
## -----------------------------------------------------------------------------

## -----------------------------------
## PLOT RB to ODE deterministic, w-t, tBS model:
## -----------------------------------

# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/wildType/out_th75inhibitionFINAL/CaRates_15_1.7_CaStim_RateBased4.out"
# outfile = "/home/fewpills/projectrepo/models_fernandezModel/withCopasiGUI/ODEresults/tc_LSODA_700_1400.txt"
# name = "w-t_ode2rb"
# prefix = "deter2stoch"
# foldername = "/home/fewpills/projectrepo/phdthesis/img/fernandez/compared"

# plot_overlaid_ode2rb(outfile=outfile, outfile3=outfile3, name=name, prefix=prefix, foldername=foldername, paired=True)

## -----------------------------------
## PLOT RB to ODE stochastic, w-t, tBS model:
## -----------------------------------
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/wildType/out_th75inhibitionFINAL/CaRates_15_1.7_CaStim_RateBased4.out"
# outfile = "/home/fewpills/projectrepo/models_fernandezModel/withCopasiGUI/filesProducedWithGUI/tc_directmethod700_1400"

name = "w-t_ode2rb"
prefix = "stoch2stoch"
# foldername = "/home/fewpills/projectrepo/phdthesis/img/fernandez/compared"

# plot_overlaid_ode2rb(outfile=outfile, outfile3=outfile3, name=name, prefix=prefix, foldername=foldername, paired=True)

## Ensemble of models: ---------------------------------------------------------
ensembleRB = "./rb_model/wildType/models/threeBindingSites_DARPP/out_ensemble"
pattern = "data_*.out"
ensembleODE = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400"
ensembleODEfolder = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_out"

legendlabels = ['ODE','RB']

plot_overlaid_ode2rb_SD(ensembleRB,
                        pattern,
                        ensembleODE,
                        ensembleODEfolder,
                        name,
                        prefix,
                        foldername+'/separate_tBS',
                        legendlabels,
                        separate=True)

plot_overlaid_ode2rb_SD(ensembleRB,
                        pattern,
                        ensembleODE,
                        ensembleODEfolder,
                        name,
                        prefix,
                        foldername,
                        legendlabels,
                        paired=True)


## -----------------------------------
## PLOT RB to ODE stochastic, w-t, oBS model:
## -----------------------------------
# outfile3 = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/wildType/out_th75inhibitionFINAL/CaRates_15_1.7_CaStim_RateBased4.out"
# outfile = "/home/fewpills/projectrepo/models_fernandezModel/withCopasiGUI/filesProducedWithGUI/tc_directmethod700_1400"

name = "w-t_ode2rb"
prefix = "stoch2stoch"
# foldername = "/home/fewpills/projectrepo/phdthesis/img/fernandez/compared"

# plot_overlaid_ode2rb(outfile=outfile, outfile3=outfile3, name=name, prefix=prefix, foldername=foldername, paired=True)

## Ensemble of models: ---------------------------------------------------------
ensembleRB = "./rb_model/wildType/models/oneBindingSite_DARPP/out_ensemble"
pattern = "data_*.out"
ensembleODE = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400"
ensembleODEfolder = "./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_out"

legendlabels = ['ODE','RB']

plot_overlaid_ode2rb_SD(ensembleRB,
                        pattern,
                        ensembleODE,
                        ensembleODEfolder,
                        name,
                        prefix,
                        foldername+'/separate_oBS',
                        legendlabels,
                        separate=True)

plot_overlaid_ode2rb_SD(ensembleRB,
                        pattern,
                        ensembleODE,
                        ensembleODEfolder,
                        name,
                        prefix,
                        foldername,
                        legendlabels,
                        paired=True)


## ----------------------------------------------------------
## PLOT RB to ODE stochastic, constitutive Serine, tBS model:
## ----------------------------------------------------------
name = "constSer_ode2rb"
prefix = "stoch2stoch"
# foldername = "/home/fewpills/projectrepo/phdthesis/img/fernandez/compared"

## Ensemble of models: ---------------------------------------------------------
ensembleRB = "./rb_model/constitutiveSer137p/threeBindingSites_DARPP/out_ensemble"
pattern = "data_*.out"
ensembleODE = "./ode_model/withCopasiGUI_SE/DirMethresults_mutants/constSer_directMethod_700_1400.txt"
ensembleODEfolder = "./ode_model/withCopasiGUI_SE/DirMethresults_mutants/ensemble_out_constSer"

legendlabels = ['ODE','RB']

plot_overlaid_ode2rb_SD(ensembleRB,
                        pattern,
                        ensembleODE,
                        ensembleODEfolder,
                        name,
                        prefix,
                        foldername,
                        legendlabels,
                        paired=True)




## -----------------------------------
## PLOT RB w-t, tBS to RB w-t, oBS
## -----------------------------------
name = "w-t_rb2rb"
prefix = "stoch2stoch"
#foldername = "/home/fewpills/projectrepo/phdthesis/img/fernandez/compared"

ensemblefolder_0 = "./rb_model/wildType/models/threeBindingSites_DARPP/out_ensemble"
pattern = "data_*.out"
ensemblefolder_1 = "./rb_model/wildType/models/oneBindingSite_DARPP/out_ensemble"

legendlabels = ['tBS','oBS']

plot_overlaid_rb2rb_SD(ensemblefolder_0,
                       ensemblefolder_1,
                       pattern,
                       name,
                       prefix,
                       foldername,
                       legendlabels,
                       paired=True)
