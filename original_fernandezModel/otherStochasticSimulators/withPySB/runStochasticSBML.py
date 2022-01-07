from pysb import *
from pysb.importers.sbml import model_from_biomodels
from pysb.importers.sbml import model_from_sbml

fernandezB = "BIOMD0000000153"

sbmlfernandezB = "/home/fewpills/projectrepo/original_fernandezModel/originalModel/sbmlFormat/pcbi.0020176.sd002.xml"

model = model_from_biomodels(fernandezB)

model = model_from_sbml(sbmlfernandezB)

print(model)
