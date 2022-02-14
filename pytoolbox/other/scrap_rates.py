from bs4 import BeautifulSoup
import sys, os
sys.path.append(os.path.join(sys.path[0], "pytoolbox"))
from basic_tools import kafile_to_ratesdict
import pandas as pd

orfile = "./ode_model/originalModel/sbmlFormat/pcbi.0020176.sd002.xml"

with open(orfile) as f:
    reador = f.read()

soup = BeautifulSoup(reador)

paramsdict = {par['name']: float(par['value']) for par in soup.find_all("parameter")}
paramdf = pd.DataFrame(paramsdict, index=[0])

########
minefile = "./rb_model/wildType/models/oneBindingSite_DARPP/oBS_FINALrates_thr75inhibition.ka"

minerates = kafile_to_ratesdict(minefile)


# minekeys = minerates.keys()
# selectedparams = {}
# for k,v in paramsdict.iteritems():
#     for item in minekeys:
#         if re.search('^'+k+'$', item):
#             selectedparams[k] = v

paramdf = pd.DataFrame([paramsdict, minerates]).T
paramdf.columns = ['original', 'mine']
paramdf.dropna(axis=0, how="any", inplace=True)

print paramdf[paramdf['original'] == paramdf['mine']]

##
## All parameter match to eachother; no other mistakes
##

paramdf.to_csv("parameters_compared.csv")