# coding: utf-8

import matplotlib.pyplot as plt
import statsmodels.api as sm
from pandas.stats.moments import rolling_window
import pandas as pd
import numpy as np
import statsmodels.tsa.stattools as ts

### ----- DATA --------------------------------------------

data_loader = sm.datasets.sunspots.load_pandas()
data = data_loader.data.values
N = len(data)

t = np.linspace(-2 * np.pi, 2 * np.pi, N)
sine = np.sin(np.sin(t))

noise = np.random.normal(0, .01, N)
noise2 = np.random.normal(0, .01, N)

cosine = 100 * np.cos(t) + 10


### --- ONE METHOD ---------------------------------------
def calc_adf(x, y):
    result = sm.OLS(x, y).fit()
    return ts.adfuller(result.resid)

print "Self ADF", calc_adf(sine, sine)
print "ADF sine with noise", calc_adf(sine, sine + noise2)
print "ADF both sine with noise", calc_adf(sine + noise, sine + noise2)

plt.plot(sine)
plt.show()

print "ADF sine vs cosine with noise", calc_adf(sine,cosine + noise)

## OLS - ordinary least squares model.

# Self ADF (
#     -5.0383000037165746e-16,
#     0.95853208606005591,
#     0,
#     308,
#     {'5%': -2.8709700936076912,
#      '1%': -3.4517611601803702,
#      '10%': -2.5717944160060719},
#     -21533.113655477719)

# Timeseries are cointegrated if 1st value is very close to 0, p-value also high;

# ADF sine with noise (
#     -17.215738001345834,
#     6.3266164158294891e-30,
#     0,
#     308,
#     {'5%': -2.8709700936076912,
#      '1%': -3.4517611601803702,
#      '10%': -2.5717944160060719},
#     -1911.4199295350763)

# ADF both sine with noise (
#     -16.26429027193916,
#     3.5400627695007351e-29,
#     0,
#     308,
#     {'5%': -2.8709700936076912,
#      '1%': -3.4517611601803702,
#      '10%': -2.5717944160060719},
#     -1694.5832308536847)

# ADF sine vs cosine with noise (
#     -21.275540674867379,
#     0.0,
#     16,
#     292,
#     {'5%': -2.8714895534256861,
#      '1%': -3.4529449243622383,
#      '10%': -2.5720714378870331},
#     -11257.365321536632)


# To use cointegration, it is necessary to work on deterministic output, not stochastic
# But: "Kointegracja - własność szeregów czasowych wykorzystywana w ekonometrii,
# która ma miejsce wówczas, jeżeli dwa szeregi czasowe nie są stacjonarne, ale
# ich kombinacja liniowa jest stacjonarna."
# A moze to sie w ogole nie nadaje skoro mi nie chodzi o trend ale o podobienstwo
# krzywych?

## ----------------------------- DIFFERENT METHOD ------------------------------
import statsmodels
from statsmodels.tsa.stattools import coint


print "Sine and noise: ", coint(sine, sine+noise)

print "Sine+noise and sine+noise: ", coint(sine+noise2, sine+noise)

# Sine and noise:  (-4.6922636047923101, 0.00058145558807278354, array([-3.93235154, -3.35603991, -3.0582488 ]))

# Sine+noise and sine+noise:  (-4.1941088655655294, 0.0037235238022055328, array([-3.93235154, -3.35603991, -3.0582488 ]))


### Conclusion: noise in both signals gives worst scores for cointegration than only in one

score = result[0]
pvalue = result[1]

diff_series = sine - sine+noise

def zscore(series):
    return (series - series.mean()) / np.std(series)

plt.plot(zscore(diff_series))
#plt.axhline(zscore(diff_series).mean(), color='black')
plt.axhline(1.0, color='red', linestyle='--')
plt.axhline(-1.0, color='green', linestyle='--')

plt.show()


## From the coint documentation
# The Null hypothesis is that there is no cointegration, the alternative hypothesis is that there is cointegrating relationship. If the pvalue is small, below a critical size, then we can reject the hypothesis that there is no cointegrating relationship.

# P-values and critical values are obtained through regression surface approximation from MacKinnon 1994 and 2010.

# In [32]: coint(sine, cosine)
# Out[32]:
# (-6.5583107419480233e-08,
#  0.98590025650251301,
#  array([-3.93235154, -3.35603991, -3.0582488 ]))

# In [33]: coint(sine, sine+noise)
# Out[33]:
# (-3.9556832997203948,
#  0.0082973488908490971,
#  array([-3.93235154, -3.35603991, -3.0582488 ]))

## That makes more sense bbut it's not very precise
