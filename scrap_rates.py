# from libsbml import *
# reader = SBMLReader()
# document = reader.readSBML(orfile)
#
# the library serves to model writing more than model parsing
# for parsing use bs4

from bs4 import BeautifulSoup
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import kafile_to_ratesdict
import pandas as pd

orfile = "/home/fewpills/projectrepo/original_fernandezModel/originalModel/pcbi.0020176.sd002.xml"

with open(orfile) as f:
    reador = f.read()

soup = BeautifulSoup(reador)

paramsdict = {par['name']: float(par['value']) for par in soup.find_all("parameter")}
paramdf = pd.DataFrame(paramsdict, index=[0])

########
minefile = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/original/FINALrates_thr75inhibition.ka"

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
