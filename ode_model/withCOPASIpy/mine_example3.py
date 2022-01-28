# -*- coding: utf-8 -*-
# Copyright (C) 2010 - 2016 by Pedro Mendes, Virginia Tech Intellectual
# Properties, Inc., University of Heidelberg, and The University
# of Manchester.
# All rights reserved.

# Copyright (C) 2009 by Pedro Mendes, Virginia Tech Intellectual
# Properties, Inc., EML Research, gGmbH, University of Heidelberg,
# and The University of Manchester.
# All rights reserved.

#
# This is an example on how to import an sbml file
# create a report for a time course simulation
# and run a time course simulation
#

from COPASI import *
import sys


##### NOTE to myself:  this file is used to run Fernandez on COPASI with Eddie

def main(filename, steps=1400, time=700, outfile="stochastic.txt"):

  assert CCopasiRootContainer.getRoot() != None
  # create a datamodel
  dataModel = CCopasiRootContainer.addDatamodel()
  assert CCopasiRootContainer.getDatamodelList().size() == 1
  # the only argument to the main routine should be the name of an SBML file
  if filename != None:
    try:
      # load the model
      dataModel.importSBML(filename)
      # dataModel.loadModel(filename)
    except:
        sys.stderr.write("Error while importing the model from file named \"" + filename + "\".\n")
        return 1
    model = dataModel.getModel()
    assert model != None
    # create a report with the correct filename and all the species against
    # time.
    reports = dataModel.getReportDefinitionList()
    # create a report definition object
    report = reports.createReportDefinition("Report", "Output for timecourse")
    # set the task type for the report definition to timecourse
    report.setTaskType(CTaskEnum.timeCourse)
    # we don't want a table ## we do want
    report.setIsTable(True)
    # the entries in the output should be seperated by a ", "
    report.setSeparator(CCopasiReportSeparator(", "))

    # we need a handle to the header and the body
    # the header will display the ids of the metabolites and "time" for
    # the first column
    # the body will contain the actual timecourse data
    header = report.getHeaderAddr()
    body = report.getBodyAddr()
    body.push_back(CRegisteredObjectName(CCopasiObjectName(dataModel.getModel().getCN().getString() + ",Reference=Time").getString()))
    body.push_back(CRegisteredObjectName(report.getSeparator().getCN().getString()))
    header.push_back(CRegisteredObjectName(CCopasiStaticString("time").getCN().getString()))
    header.push_back(CRegisteredObjectName(report.getSeparator().getCN().getString()))

    iMax = model.getMetabolites().size()
    for i in range(0,iMax):
        metab = model.getMetabolite(i)
        assert metab != None
        # we don't want output for FIXED metabolites right now
        if (metab.getStatus() != CModelEntity.FIXED):
            # we want the concentration oin the output
            # alternatively, we could use "Reference=Amount" to get the
            # particle number
            body.push_back(CRegisteredObjectName(metab.getObject(CCopasiObjectName("Reference=Concentration")).getCN().getString()))
            # add the corresponding id to the header
            header.push_back(CRegisteredObjectName(CCopasiStaticString(metab.getSBMLId()).getCN().getString()))
            # after each entry, we need a seperator
            if(i!=iMax-1):
               body.push_back(CRegisteredObjectName(report.getSeparator().getCN().getString()))
               header.push_back(CRegisteredObjectName(report.getSeparator().getCN().getString()))


    # get the trajectory task object
    trajectoryTask = dataModel.getTask("Time-Course")

    # run a deterministic time course
    trajectoryTask.setMethodType(CTaskEnum.stochastic)
    # pass a pointer of the model to the problem
    trajectoryTask.getProblem().setModel(dataModel.getModel())
    # actiavate the task so that it will be run when the model is saved
    # and passed to CopasiSE
    trajectoryTask.setScheduled(True)

    # set the report for the task
    trajectoryTask.getReport().setReportDefinition(report)
    # set the output filename
    trajectoryTask.getReport().setTarget(outfile)
    # don't append output if the file exists, but overwrite the file
    trajectoryTask.getReport().setAppend(False)
    # get the problem for the task to set some parameters
    problem = trajectoryTask.getProblem()
    # simulate 100 steps
    problem.setStepNumber(steps)
    # start at time 0
    dataModel.getModel().setInitialTime(0.0)
    # simulate a duration of 10 time units
    problem.setDuration(time)
    # tell the problem to actually generate time series data
    problem.setTimeSeriesRequested(True)
    result=True
    try:
        # now we run the actual trajectory
        result=trajectoryTask.process(True)
    except:
        sys.stderr.write("Error. Running the time course simulation failed.\n")
        # check if there are additional error messages
        if CCopasiMessage.size() > 0:
            # print the messages in chronological order
            sys.stderr.write(CCopasiMessage.getAllMessageText(True))
        return 1
    if result == False:
        sys.stderr.write("Error. Running the time course simulation failed.\n" )
        # check if there are additional error messages
        if CCopasiMessage.size() > 0:
            # print the messages in chronological order
            sys.stderr.write(CCopasiMessage.getAllMessageText(True))
        return 1

    # look at the timeseries
    timeSeries = trajectoryTask.getTimeSeries()
    # we simulated 100 steps, including the initial state, this should be
    # 101 step in the timeseries
    assert timeSeries.getRecordedSteps() == steps+1
    print  ("The time series consists of " , timeSeries.getRecordedSteps() , "." )
    print  ("Each step contains " , timeSeries.getNumVariables() , " variables." )
    print  ("The final state is: " )
    iMax = timeSeries.getNumVariables()
    lastIndex = timeSeries.getRecordedSteps() - 1
    for i in range(0,iMax):
        # here we get the particle number (at least for the species)
        # the unit of the other variables may not be particle numbers
        # the concentration data can be acquired with getConcentrationData
        print (timeSeries.getTitle(i) + ": " , timeSeries.getData(lastIndex, i))
    # the CTimeSeries class now has some new methods to get all variable titles
    # as a python list (getTitles())
    # and methods to get the complete time course data for a certain variable based on
    # the variables index or the corresponding model object.
      # E.g. to get the particle numbers of the second variable as a python list
      # you can use getDataForIndex(1) and to get the concentration data you use
      # getConcentrationDataForIndex(1)
      # To get the complete particle number data for the second metabolite of the model
      # you can use getDataForObject(model.getMetabolite(1)) and to get the concentration
      # data you use getConcentrationDataForObject.
      #print timeSeries.getTitles()
      #print timeSeries.getDataForIndex(1)
      #print timeSeries.getDataForObject(model)
  else:
      sys.stderr.write("Usage: example3 SBMLFILE\n")
      return 1;

filename = "../originalModel/pcbi.0020176.sd002_cAMPdelay200.xml"
filename2 = "/home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/filesProducedWithGUI/run_via_commandline/stoch/tc_stoch_900_1800_partNo.cps"

main(filename=filename2)
