# coding: utf-8

import stochpy
from bs4 import BeautifulSoup
import sys
import pandas as pd
sys.path.append("/home/fewpills/projectrepo/pytoolbox")

modelfile = "/home/fewpills/projectrepo/original_fernandezModel/originalModel/sbmlFormat/pcbi.0020176.sd002_cAMPdelay200.xml"

## --------------------  Reading species: -----------------------------------
with open(modelfile) as f:
    reador = f.read()

soup = BeautifulSoup(reador)
speciesSel = [spec['id'] for spec in soup.find_all("species")]

## --------------------  Simulation: ----------------------------------------
smod = stochpy.SSA()
smod.Method("direct")

smod.Model(modelfile)

## Problems with event specification ??

# Info: "Empty" has been initialised but does not occur in a rate equation
# Info: "spike_interval" has been initialised but does not occur in a rate equation
# Info: "cAMP_delay" has been initialised but does not occur in a rate equation
# Info: "kon_low" has been initialised but does not occur in a rate equation
# Info: "spike_duration" has been initialised but does not occur in a rate equation
# Info: "cAMP_Ca_delay" has been initialised but does not occur in a rate equation
# Info: "kon_high" has been initialised but does not occur in a rate equation


smod.DoStochKitStochSim()
smod.DoStochSim( mode="time", end=50)
smod.DoCainStochSim

species_selection=speciesSel[-1]



#smod.DoStochSim(IsTrackPropensities=True)
#smod.PlotSpeciesTimeSeries()
#smod.PlotPropensitiesTimeSeries()
