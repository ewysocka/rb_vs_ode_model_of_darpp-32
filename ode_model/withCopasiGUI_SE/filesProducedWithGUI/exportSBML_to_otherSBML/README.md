Beacause of warnings and errors in translation from sbml to stochkit
I tried to use different versions of sbml files encoding Fernandez et al. model.

-- just StochKit:
          1. First have to translate SBML to StochKit xml file:

          . translated original SBML with two types of warnings assigned to multiple agents
            Generally about the units:

              line 4185: (99505 [Warning]) In situations when a mathematical
              expression contains literal numbers or parameters whose units have
              not been declared, it is not possible to verify accurately the
              consistency of the units in the expression.  The units of the
              <eventAssignment> <math> expression 'kon_low' cannot be fully
              checked. Unit consistency reported as either no errors or further
              unit errors related to this object may not be accurate.

              line 97: (80701 [Warning]) As a principle of best modeling practice,
              the units of a <parameter> should be declared rather than be left
              undefined. Doing so improves the ability of software to check the
              consistency of units and helps make it easier to detect potential
              errors in models.

          . wanted to translate automatically created SBML-L3.V1 model from BioModels;
            failed with errors:

              Input filename: /home/fewpills/projectrepo/original_fernandezModel/originalModel/formats_from_biomodels/BIOMD0000000153_SBML-L3V1.xml
              validation error(s): 42
              Please refer to the log file
              '/home/fewpills/projectrepo/original_fernandezModel/otherStochasticSimulators/withstochKit/stochKit_translated_models/stochKit_from_sbml-L3V1.xml.log'
              for detailed information of validation errors.
              StochKit ERROR: Further consistency checking aborted

           . In the original model both attached to the paper and in biomodels.org,
             there is *NO listOfUnits* !!!
             -> interestingly, the biomodels.org file has annotations of species
                with databases ids (e.g. UniProt)

           . I imported SBML to COPASI and then exported it into SBML in multiple versions
             -> First advantage: it assigned listOfUnits !!
             -> for sbmls from 2.1 to 2.4 ->  the same warnings as for the original model
                (2.1 is the original model's version of SBML)
             -> for sbml 2.5 and 3.1 -> the same errors as for the one taken from
                biomodels.org



- Hypotheses about what might go wrong:

    **All problem lays in the support of SBML Events by stochastic simulator**

    **Something wrong with SBML file (as StochKit shows)**
        - no listOfUnits
