import  matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import copy
import sys, os
import re
import seaborn as sns
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
from corex_tools import plot_timeseriesRe
from corex_tools import plot_df
from corex_tools import plot_two_curves
from corex_tools import factorise_2

import comparison_timeseries_toolkit
from comparison_timeseries_toolkit import prepare_ensemble_ode_models
from comparison_timeseries_toolkit import prepare_ensemble_rb_models
from comparison_timeseries_toolkit import plot_mineSelected_as_paper_SD
from comparison_timeseries_toolkit import plot_originalSelected_as_paper_SD
from comparison_timeseries_toolkit import plot_overlaid_ode2rb_SD
from comparison_timeseries_toolkit import plot_overlaid_rb2rb_SD
from comparison_timeseries_toolkit import get_ode_obstocomparewith
from comparison_timeseries_toolkit import plot_paired_SD
from comparison_timeseries_toolkit import plot_paired_separate_SD


## -----------
##  DATA prep:
## -----------

foldername = "/home/fewpills/projectrepo/comparisonOfModels/all_ca_case"

legendlabels = ["ODE","RB"]

### RB model ---------------
ensembleRB = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/original/threeBindingSites_DARPP/out_ensemble_ca_all"
pattern = "data_*"

rbdicarr, rbcols =  prepare_ensemble_rb_models(ensembleRB, pattern, defcols = False)


### ODE model stochastic ----------------
ensembleODE = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400"
ensemblefolder = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI_SE/DirMethresults/ensemble_out"

patternslist = ['Ca']

separate_caall = get_ode_obstocomparewith(ensembleODE, patternslist)
separate_caall_2 = ['^'+ c +'$' for c in separate_caall]

odedicarr, odecols = prepare_ensemble_ode_models(ensembleODE, ensemblefolder, defcols = False, obstocomparewith = separate_caall_2)


## ----------------------------------------------------------
## 1. Plot separate paired all_Ca with the first instance of PP2B:
## ----------------------------------------------------------
name = "all_Ca"
# plot_paired_SD(odedicarr, odecols, rbdicarr, rbcols, foldername = foldername, name = name, legendlabels = legendlabels, format='portrait', ii=3, jj=5)

#foldername = "/home/fewpills/projectrepo/comparisonOfModels/forUCBTalk"
plot_paired_SD(odedicarr, odecols, rbdicarr, rbcols, foldername = foldername, name = name, legendlabels = legendlabels, format='portrait', ii=3, jj=5)


## ----------------------------------------------------------
## 2. Plot separate paired all_Ca with the summed instance of PP2B:
## ----------------------------------------------------------

## make deep copy of rbdicarr:
rbdicarrCopy = copy.deepcopy(rbdicarr)
rbcolsCopy = copy.copy(rbcols)

##############################
name = "all_Ca_summed_PP2B"
tosumovercols = ['PP2BinactiveCa2_1*', 'PP2BinactiveCa2_2*', 'PP2BinactiveCa2_3*', 'PP2BinactiveCa2_4*', 'PP2BinactiveCa2_5*', 'PP2BinactiveCa2_6*']

tosumover = [val for key,val in rbdicarr.iteritems() if key in tosumovercols]
[rbdicarrCopy.pop(i, None) for i in tosumovercols]
summed = reduce(np.add, tosumover)

rbdicarrCopy['PP2BinactiveCa2_all*'] = summed
rbcolsCopy = sorted(list(rbdicarrCopy.keys()))

# plot_paired_SD(odedicarr, odecols, rbdicarrCopy, rbcolsCopy, foldername = foldername, name = name, legendlabels=legendlabels, format='portrait', ii=3, jj=5 )

# foldername = "/home/fewpills/projectrepo/comparisonOfModels/forUCBTalk"
plot_paired_SD(odedicarr, odecols, rbdicarrCopy, rbcolsCopy, foldername = foldername, name = name, legendlabels=legendlabels, format='portrait', ii=3, jj=5)

name='sep'

plot_paired_separate_SD(odedicarr, odecols, rbdicarrCopy, rbcolsCopy, foldername = foldername+"/separate", name = name, legendlabels=legendlabels)


## ----------------------------------------------------------
## 3. Plot separate paired all_Ca with all instances of PP2B:
## ----------------------------------------------------------
name = "all_ca_rb_18_ode_13"

rbtosumall = [val for val in rbdicarr.itervalues()]
rbtosumall2 = reduce(np.add, rbtosumall)
rbcolssummed = "all_Ca*"

rbdicSum = {rbcolssummed:rbtosumall2}

odetosumall = [val for val in odedicarr.itervalues()]
odetosumall2 = reduce(np.add, odetosumall)
odecolssummed = "all_Ca2+"

odedicSum = {odecolssummed:odetosumall2}

plot_paired_separate_SD(odedicSum, [odecolssummed], rbdicSum, [rbcolssummed], foldername = foldername, name = name, legendlabels=legendlabels)



## ----------------------------------------------------------
## 4. Plot separate paired all_Ca with one instance of PP2B:
## ----------------------------------------------------------

name = "all_ca_summed_first_instance_of_PP2B"
rbcols2 = rbcols[:13]
rbdicarr2 = {key: rbdicarr[key] for key in rbcols2}

####################

rbtosumall = [val for val in rbdicarr2.itervalues()]
rbtosumall2 = reduce(np.add, rbtosumall)
rbcolssummed = "all_Ca*"

rbdicSum = {rbcolssummed:rbtosumall2}

odetosumall = [val for val in odedicarr.itervalues()]
odetosumall2 = reduce(np.add, odetosumall)
odecolssummed = "all_Ca2+"

odedicSum = {odecolssummed:odetosumall2}

plot_paired_separate_SD(odedicSum, [odecolssummed], rbdicSum, [rbcolssummed], foldername = foldername, name = name, legendlabels=legendlabels)
