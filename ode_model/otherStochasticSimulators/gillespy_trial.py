import gillespy
from gillespy import SBMLimport
from gillespy.SBMLimport import convert

modelfile = "/home/fewpills/projectrepo/original_fernandezModel/originalModel/sbmlFormat/pcbi.0020176.sd002_cAMPdelay200.xml"

model = convert(modelfile)

### PROBLEM: ".. gillespy does not support SBML Events"
