import pandas as pd
import matplotlib
from matplotlib import pyplot as plt
import numpy as np
import sys, os
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
from corex_tools import plot_timeseriesRe
from corex_tools import plot_df


f = "/home/fewpills/projectrepo/model/model_phenotypes_ii/basic/original/oneBindingSite_DARPP/output-kade/time-course.txt"
labels, arr = timeseries_2_array(f, delim='\t')
df = pd.DataFrame(arr, columns= labels)

plot_df(df, "odes from rules test")

plot_timeseriesRe(outfile=f, pattern='ser137~p', plottitle="ser137p", delim='\t', figfilename='plot.png', xmax=1200, ymax=4000, yaxis='concentrations', xaxis='time-steps', summed=False)


### PROOF OF CONCEPT DONE. ONE CAN GENERATE ODEs FROM KAPPA RULES ###
