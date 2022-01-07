import  matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import sys, os
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import matplotlib.pyplot as plt
import statsmodels.api as sm
from pandas.stats.moments import rolling_window
import statsmodels.tsa.stattools as ts
import statsmodels
from statsmodels.tsa.stattools import coint


## ------------- Load data  ------------------------------------
# bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_?.csv")
bothback = pd.read_csv("fernandezTimeSeries_ode_rulebased_CaRateStim.csv")


## ------------- Cointegration ---------------------------------
x = bothback['D34']
y = x

def calc_adf(x, y):
    result = sm.OLS(x, y).fit()
    return ts.adfuller(result.resid)

for i in range(len(both.columns)/2):
    a = both.columns[i]
    b = both.columns[i+13]
    print "ADF for " + a + " & " + b +": ", calc_adf(both[a], both[b]), "\n"

print calc_adf(bothback['D34*~?'], bothback['D34*~?'])
# (-2.748803015734969, 0.065967191692444249, 16, 1384, {'5%': -2.8636305925955159, '1%': -3.4350837211576697, '10%': -2.5678830271851716}, -84578.188446346336)

print calc_adf(bothback['D34'], bothback['D34'])
# (-2.9269511119804648, 0.042302516616682793, 12, 1388, {'5%': -2.8636245613945297, '1%': -3.4350700539558847, '10%': -2.5678798154000115}, -84648.291446131421)

################### What the fuck ??

## ------------- Cointegration with COINT ---------------------------------

result = coint(bothback['D34'], bothback['D34'])
 # /usr/local/lib/python2.7/dist-packages/statsmodels/tsa/stattools.py:1018: UserWarning: y0 and y1 are perfectly colinear.  Cointegration test is not reliable in this case.
 #  warnings.warn("y0 and y1 are perfectly colinear.  Cointegration test "

coint(bothback['D34*~?'], bothback['D34*~?'])
# (0,
# 0.98590025802596426,
# array([-3.90427989, -3.34049784, -3.04748082]))
## NO COINTEGRATION !!

coint(bothback['D34*~?'], bothback['D34'])
# (-3.806818830712031,
#  0.013274757772210854,
#  array([-3.90427989, -3.34049784, -3.04748082]))
## COINTEGRATION ONLY AT 5%

######################### It has more sense

## (see also: timeseries_comparison/cointegration_timeseries_tutorial.py)
## but it's not exactly this metric

for i in range(1, len(bothback.columns)/2):
    a = bothback[bothback.columns[i]]
    b = bothback[bothback.columns[i+13]]
    print "Coinegration between "+ a.name +" and " +b.name, coint(a,b), "\n"


## ------------- Time warping -----------------------------------
import numpy as np
from scipy.spatial.distance import euclidean
import matplotlib.pyplot as plt

from fastdtw import fastdtw

distance, path = fastdtw(bothback['D34*~?'], bothback['D34'], dist=euclidean)
print(distance)

######################## BOTH PATH HAVE TO BE SMOOTH !!!

## ------------- Sliding window correlation  -----------------------------------
print bothback['D34*~?'].cov(bothback['D34'])
print bothback['D34'].cov(bothback['D34'])

a = bothback['D34*~?']

r = a.rolling(window=60)

a.plot(style='k--')
r.mean().plot(style='k')

plt.show()

##########################################
### TAKING MEAN VALUE IS NOT A GOOD IDEA
a = bothback['D34*~?']
b =  bothback['D34']

plt.plot(pd.rolling_corr(a, a, window = 10), 'ro')
plt.show()

### Correlation:
for i in range(1, len(bothback.columns)/2):
    a = bothback[bothback.columns[i]]
    b = bothback[bothback.columns[i+13]]
    print "Correlation between "+ a.name +" and " +b.name, b.corr(a), "\n"
