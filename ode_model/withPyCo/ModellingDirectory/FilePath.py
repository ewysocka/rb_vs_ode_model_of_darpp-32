import os
import sys

class FernandezExample():
    def __init__(self):
        ## path to folder containing fernandez example
        self.current_directory=r'/home/fewpills/projectrepo/original_fernandezModel/ModellingDirectory'
        ## Fernandez filename
        self.copasi_filename=r'pcbi.0020176.sd002.cps'
        ## full path to fernandez model
        self.fernandez_model=os.path.join(self.current_directory,self.copasi_filename)
        ## full path to the time course output
        self.timecourse_report=os.path.join(self.current_directory,'FernandezTimeCourseOutput.txt')
        ## full path to the noisy time course output
        self.noisy_timecourse_report=os.path.join(self.current_directory,'NoisyFernandezTimeCourseOutput.txt')
        ## Full path to parameter estimation results file
        self.PEData_file=os.path.join(self.current_directory,'PEResultsFile.txt')
        ## Full path to a folder containing all data from initial multiple global parameter estimations
        self.PEData_dir=os.path.join(self.current_directory,'PEResults')
        ## Full path to file containing secondary local parameter estimation (starting with best values from self.PEData_dir)
        self.local_PEData_dir=os.path.join(self.current_directory,'LocalPEDataResults')
        ## Pre-run parameter estimation data pickle file.
        self.GlobalPEData=os.path.join(self.current_directory,'1GlobalPEData.pickle')
        self.LocalPEData=os.path.join(self.current_directory,'1LocalPEData.pickle')
