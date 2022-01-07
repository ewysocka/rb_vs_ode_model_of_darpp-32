<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.19 (Build 140) (http://www.copasi.org) at 2017-06-23 13:08:56 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="19" versionDevel="140" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Fernandez2006_ModelB" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.022140857e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2006-03-28T16:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2006-07-20T19:05:00</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Spine" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="D" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CDK5" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="D_CDK5" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="D75" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="CK1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="D_CK1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="D137" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="D_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="D34" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="D34_CDK5" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_23" name="D34_CK1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="D34_PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="D34:75" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="D34:137" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_33" name="D75_CK1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_35" name="D75_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PP2A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="D75_PP2A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="PP2AP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_43" name="D75_PP2AP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="D75:137" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="D137_CDK5" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="D137_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_51" name="D137_PP2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="PP2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="D34:75_CK1" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_57" name="D34:137_CDK5" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_59" name="D34:75:137" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_61" name="D75:137_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_63" name="D34:75_PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_65" name="D34:137_PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_67" name="D34:75:137_PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_69" name="D34:75_PP2A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_71" name="D75:137_PP2A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_73" name="D34:75:137_PP2A" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_75" name="D34:75_PP2AP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_77" name="D75:137_PP2AP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_79" name="D34:75:137_PP2AP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_81" name="D34:137_PP2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_83" name="D75:137_PP2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_85" name="PDE" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_87" name="PP2Binactive" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_89" name="D34:75:137_PP2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_91" name="CK1P" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_93" name="CK1P_PP2B" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_95" name="PDE_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_97" name="PDEP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_99" name="PP2A_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_101" name="Ca" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_103" name="PP2BinactiveCa2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_105" name="R2C2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_107" name="cAMP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_109" name="cAMP_R2C2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_111" name="cAMP2_R2C2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_113" name="cAMP3_R2C2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_115" name="cAMP4_R2C2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_117" name="cAMP4_R2C" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_119" name="cAMP4_R2" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_121" name="cAMP_PDE" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_123" name="AMP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_125" name="cAMP_PDEP" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_127" name="PP2ACa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_129" name="D34:75_PP2ACa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_131" name="D34:75:137_PP2ACa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_133" name="D75_PP2ACa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_135" name="D75:137_PP2ACa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_137" name="D34:75_PP2APCa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_139" name="PP2APCa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_141" name="D34:75:137_PP2APCa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_143" name="D75_PP2APCa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_145" name="D75:137_PP2APCa" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_147" name="PP2ACa_PKA" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_149" name="Empty" simulationType="fixed" compartment="Compartment_1">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="ca_in" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="cAMP_delay" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="cAMP_Ca_delay" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kon_high" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="spike_duration" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="spike_interval" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kon_low" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="D_CDK5_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4438" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="D_CDK5_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4439" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="DPhospho_by_CDK5_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4440" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="DCDK1_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4441" name="k1" value="4.4e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="D_CDK1_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4442" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="D_Phospho_by_CK1_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4443" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="D_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4444" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="D_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4445" name="k1" value="10.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="D_Phospho_by_PKA_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4433" name="k1" value="2.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4433"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="D34_CDK5_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4434" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4434"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="D34_CK1_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4435" name="k1" value="4.4e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4435"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="D34_PP2B_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4436" name="k1" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4436"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="D34_CDK5_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4437" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="D34_Phospho_by_CDK5_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4407" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4407"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="D34_CK1_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4408" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4408"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="D34_Phospho_by_CK1_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4409" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4409"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="D34_Dephospho_by_PP2B" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4410" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4410"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="D34_PP2B_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4411" name="k1" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4411"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="D75_CK1_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4412" name="k1" value="4.4e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4412"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="D75_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4413" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="D75_PP2A_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4414" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="D75_PP2AP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4415" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4415"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="D75_CK1_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4416" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="D75_Phospho_by_CK1_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4417" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="D75_Phospho_by_PKA_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4418" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="D75_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4419" name="k1" value="10.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="D75_dephospho_by_PP2A" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4420" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="D75_PP2A_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4421" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="D75_dephospho_by_PP2AP" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4422" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="D75_PP2AP_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4423" name="k1" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="D137_CDK5_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4424" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="D137_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4425" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="D137_PP2C_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4426" name="k1" value="7.5e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4426"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="D137_CDK5_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4427" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4427"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="D137_Phospho_by_CDK5_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4428" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4428"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="D137_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4429" name="k1" value="10.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4429"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="D137_phospho_by_PKA_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4430" name="k1" value="2.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4430"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="D137_dephospho_by_PP2C" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4431" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4431"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="D137_PP2C_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4432" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="D34:75_CK1_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4446" name="k1" value="4.4e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="D34:137_CDK5_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4447" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="D34:137_CDK5_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4448" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4448"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="D34:75_CK1_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4449" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="D34:75_phospho_by_CK1_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4450" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4450"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="D34:137_phospho_by_CDK5_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4451" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="D75:137_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4452" name="k1" value="5.6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="D75:137_phospho_by_PKA_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4453" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="D75:137_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4454" name="k1" value="10.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="D34:75_PP2B_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4455" name="k1" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="D34:75_PP2B_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4456" name="k1" value="1600"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="D34:75_dephopsho_by_PP2B_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4457" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="D34:137_PP2B_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4458" name="k1" value="75000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4458"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="D34:137_dephospho_by_PP2B_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4459" name="k1" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="D34:137_PP2B_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4460" name="k1" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="D34:75:137_PP2B_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4461" name="k1" value="75000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4461"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="D34:75:137_PP2B_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4462" name="k1" value="120"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4462"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="D34:75:137_dephospho_by_PP2B_on_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4463" name="k1" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4463"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="D34:75_PP2A_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4464" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="D34:75_dephospho_by_PP2A_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4465" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4465"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="D34:75_PP2A_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4466" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="D75:137_PP2A_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4467" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4467"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="D75:137_dephospho_by_PP2A_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4468" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4468"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="D75:137_PP2A_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4469" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="D34:75:137_PP2A_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4470" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4470"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="D34:75:137_dephospho_by_PP2A_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4471" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4471"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="D34:75:137_PP2A_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4472" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4472"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="D34:75_PP2AP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4473" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="D34:75_dephospho_by_PP2AP_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4474" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="D34:75_PP2AP_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4475" name="k1" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4475"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="D75:137_PP2AP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4476" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4476"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="D75:137_dephospho_by_PP2AP_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4477" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4477"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="D75:137_PP2AP_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4478" name="k1" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4478"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="D34:75:137_dephospho_by_PP2AP_on 75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4484" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="D34:75:137_PP2AP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4483" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4483"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="D34:75:137_PP2AP_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4482" name="k1" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="D34:137_PP2C_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4479" name="k1" value="7.5e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="D34:137_dephospho_by_PP2C_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4480" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="D34:137_PP2C_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4481" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="D75:137_PP2C_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4485" name="k1" value="7.5e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4485"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="D75:137_dephospho_by_PP2C_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4486" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4486"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="D75:137_PP2C_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4489" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4489"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="D34:75:137_PP2C_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4488" name="k1" value="7.5e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4488"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="D34:75:137_dephospho_by_PP2C_on_137" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4487" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4487"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="D34:75:137_PP2C_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4490" name="k1" value="12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="CK1P_PP2B_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4491" name="k1" value="3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_91"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="CK1P_PP2B_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4492" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="CK1P_dephospho_by_PP2B" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4493" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="CK1_phosphorylation" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4494" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="PDE_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4495" name="k1" value="6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_85"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="PDE_phospho_by_PKA" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_55" name="k1" value="9"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="PDE_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_56" name="k1" value="36"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="PDEP_dephospho" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_57" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="PP2A_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_58" name="k1" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_37"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="PP2A_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_59" name="k1" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="PP2A_phospho_by_PKA" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_60" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="PP2AP_dephospho" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_61" name="k1" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="PP2Binactive_Ca_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_62" name="k1" value="1e+15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_87"/>
              <SourceParameter reference="Metabolite_101"/>
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="PP2B_activation" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_63" name="k1" value="3e+15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_103"/>
              <SourceParameter reference="Metabolite_101"/>
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="PP2BinactiveCa2_Ca_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_64" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="PP2B_inactivation" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_65" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="R2C2_cAMP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_53" name="k1" value="5.4e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_105"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="cAMP_R2C2_binding_by_cAMP" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_54" name="k1" value="5.4e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_109"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="cAMP2_R2C2_binding_by_cAMP" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_66" name="k1" value="7.5e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_111"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="cAMP3_R2C2_binding_by_cAMP" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_67" name="k1" value="7.5e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_113"/>
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="cAMP_R2C2_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_68" name="k1" value="33"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="cAMP2_R2C2_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_69" name="k1" value="33"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="cAMP3_R2C2_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_70" name="k1" value="110"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="cAMP4_R2C2_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_71" name="k1" value="32.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="cAMP4_R2C_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_72" name="k1" value="1.8e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_117"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="cAMP4_R2C2_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_73" name="k1" value="60"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="cAMP4_R2_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_74" name="k1" value="1.8e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_119"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="cAMP4_R2C_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_75" name="k1" value="60"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="cAMP_PDE_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_76" name="k1" value="2.52e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_107"/>
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="cAMP_PDE_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_77" name="k1" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="cAMP_PDE_degradation" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_78" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="cAMP_PDEP_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_79" name="k1" value="5.04e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_107"/>
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="cAMP_PDEP_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4393" name="k1" value="80"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4393"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="cAMP_PDEP_degradation" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4394" name="k1" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4394"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="Ca_in" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4395" name="v" value="2.5e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="Ca_destroy" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4396" name="k1" value="1.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4396"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="D34:75_PP2ACa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4397" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4397"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="D34:75:137_PP2ACa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4398" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="D34:75:137_dephospho_by_PP2ACa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4399" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4399"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="D34:75:137_PP2ACa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4400" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="D34:75_dephospho_by_PP2ACa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4401" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="D34:75_PP2ACa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4402" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="D75_PP2ACa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4403" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="D75:137_PP2ACa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4404" name="k1" value="3.8e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="D75:137_dephospho_by_PP2ACa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4405" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4405"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="D75:137_PP2ACa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_80" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="D75_dephospho_by_PP2ACa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_81" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="D75_PP2ACa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4260" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="D34:75_PP2APCa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4259" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="D34:75:137_PP2APCa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4258" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4258"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="D34:75:137_dephospho_by_PP2APCa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4257" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="D34:75:137_PP2APCa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4256" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="D34:75_dephospho_by_PP2APCa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4255" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4255"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="D34:75_PP2APCa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4254" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4254"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="D75_PP2APCa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4253" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4253"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="D75:137_PP2APCa_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4252" name="k1" value="1.7e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_45"/>
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="D75:137_dephospho_by_PP2APCa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4251" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="D75:137_PP2APCa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4250" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="D75_dephospho_by_PP2APCa_on_75" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4249" name="k1" value="24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4249"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="D75_PP2APCa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4248" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4248"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="PP2A_Ca_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4247" name="k1" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4247"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_101"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="PP2A_Ca_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4246" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4246"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="PP2ACa_PKA_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4245" name="k1" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4245"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_127"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="PP2ACa_phospho_by_PKA" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4244" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4244"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="PP2AP_Ca_binding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4243" name="k1" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4243"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_41"/>
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="PP2APCa_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4242" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4242"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="PP2APCa_dephospho" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4241" name="k1" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4241"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="PP2ACa_PKA_unbinding" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4240" name="k1" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4240"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="cAMP_pulse" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_107">
            <Expression>
              6.6e-06
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="ca_on1" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="ca_on2" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+1*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="ca_off" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="Ca_on3" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+2*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="ca_on4" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+3*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="ca_on5" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+4*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="ca_on6" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+5*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="ca_on7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+6*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="ca_on8" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+7*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="ca_on9" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+8*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="ca_on10" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+9*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="ca_off2" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+1*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="ca_off3" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+2*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="ca_off4" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+3*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="ca_off5" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+4*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="ca_off6" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+5*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="ca_off7" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+6*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="ca_off8" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+7*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="ca_off9" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+8*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="ca_off10" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Fernandez2006_ModelB,Reference=Time> ge &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>+9*(&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval],Reference=Value>+&lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration],Reference=Value>)
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine]" value="1e-15" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D]" value="2999.026146786" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CDK5]" value="120.44281714" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_CDK5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1]" value="99.96753822619998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_CK1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_CDK5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_CK1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_CK1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2A]" value="120.44281714" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2AP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2AP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_CDK5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_PP2C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2C]" value="80.09447339810002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_CK1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_CDK5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2AP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2AP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2AP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_PP2C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDE]" value="1204.4281714" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2Binactive]" value="199.9350764524" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1P_PP2B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDE_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDEP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2A_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[Ca]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2BinactiveCa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[R2C2]" value="3998.701529048" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_R2C2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP2_R2C2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP3_R2C2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2C2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_PDE]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[AMP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_PDEP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2ACa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2ACa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2ACa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2ACa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2ACa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2APCa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2APCa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2APCa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2APCa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2APCa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2ACa_PKA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[Empty]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[ca_in]" value="2.5e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_delay]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[cAMP_Ca_delay]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_high]" value="6.6e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_duration]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[spike_interval]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Values[kon_low]" value="2.5e-08" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK5_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK5_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK5_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK5_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[DPhospho_by_CDK5_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[DPhospho_by_CDK5_on_75],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[DCDK1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[DCDK1_binding],ParameterGroup=Parameters,Parameter=k1" value="4400000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK1_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_CDK1_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_Phospho_by_CK1_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_Phospho_by_CK1_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10.8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_Phospho_by_PKA_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D_Phospho_by_PKA_on_34],ParameterGroup=Parameters,Parameter=k1" value="2.7" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CDK5_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CDK5_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CK1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CK1_binding],ParameterGroup=Parameters,Parameter=k1" value="4400000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_PP2B_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_PP2B_binding],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CDK5_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CDK5_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Phospho_by_CDK5_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Phospho_by_CDK5_on_75],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CK1_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_CK1_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Phospho_by_CK1_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Phospho_by_CK1_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Dephospho_by_PP2B]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_Dephospho_by_PP2B],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_PP2B_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34_PP2B_unbinding],ParameterGroup=Parameters,Parameter=k1" value="16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_CK1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_CK1_binding],ParameterGroup=Parameters,Parameter=k1" value="4400000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2A_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2A_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2AP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2AP_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_CK1_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_CK1_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_Phospho_by_CK1_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_Phospho_by_CK1_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_Phospho_by_PKA_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_Phospho_by_PKA_on_34],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10.8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2A],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2A_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2A_unbinding],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2AP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2AP],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2AP_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2AP_unbinding],ParameterGroup=Parameters,Parameter=k1" value="40" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_CDK5_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_CDK5_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PP2C_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PP2C_binding],ParameterGroup=Parameters,Parameter=k1" value="7500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_CDK5_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_CDK5_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_Phospho_by_CDK5_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_Phospho_by_CDK5_on_75],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10.8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_phospho_by_PKA_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_phospho_by_PKA_on_34],ParameterGroup=Parameters,Parameter=k1" value="2.7" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_dephospho_by_PP2C]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_dephospho_by_PP2C],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PP2C_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D137_PP2C_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_CK1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_CK1_binding],ParameterGroup=Parameters,Parameter=k1" value="4400000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_CDK5_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_CDK5_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_CDK5_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_CDK5_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_CK1_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_CK1_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_phospho_by_CK1_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_phospho_by_CK1_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_phospho_by_CDK5_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_phospho_by_CDK5_on_75],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="5600000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_phospho_by_PKA_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_phospho_by_PKA_on_34],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10.8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2B_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2B_binding],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2B_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2B_unbinding],ParameterGroup=Parameters,Parameter=k1" value="1600" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephopsho_by_PP2B_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephopsho_by_PP2B_on_34],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2B_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2B_binding],ParameterGroup=Parameters,Parameter=k1" value="75000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_dephospho_by_PP2B_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_dephospho_by_PP2B_on_34],ParameterGroup=Parameters,Parameter=k1" value="0.03" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2B_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2B_unbinding],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2B_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2B_binding],ParameterGroup=Parameters,Parameter=k1" value="75000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2B_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2B_unbinding],ParameterGroup=Parameters,Parameter=k1" value="120" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2B_on_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2B_on_34],ParameterGroup=Parameters,Parameter=k1" value="0.03" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2A_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2A_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2A_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2A_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2A_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2A_unbinding],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2A_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2A_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2A_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2A_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2A_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2A_unbinding],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2A_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2A_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2A_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2A_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2A_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2A_unbinding],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2AP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2AP_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2AP_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2AP_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2AP_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2AP_unbinding],ParameterGroup=Parameters,Parameter=k1" value="40" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2AP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2AP_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2AP_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2AP_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2AP_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2AP_unbinding],ParameterGroup=Parameters,Parameter=k1" value="40" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2AP_on 75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2AP_on 75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2AP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2AP_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2AP_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2AP_unbinding],ParameterGroup=Parameters,Parameter=k1" value="40" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2C_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2C_binding],ParameterGroup=Parameters,Parameter=k1" value="7500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_dephospho_by_PP2C_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_dephospho_by_PP2C_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2C_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:137_PP2C_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2C_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2C_binding],ParameterGroup=Parameters,Parameter=k1" value="7500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2C_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2C_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2C_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2C_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2C_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2C_binding],ParameterGroup=Parameters,Parameter=k1" value="7500000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2C_on_137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2C_on_137],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2C_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2C_unbinding],ParameterGroup=Parameters,Parameter=k1" value="12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_PP2B_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_PP2B_binding],ParameterGroup=Parameters,Parameter=k1" value="30000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_PP2B_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_PP2B_unbinding],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_dephospho_by_PP2B]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1P_dephospho_by_PP2B],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1_phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[CK1_phosphorylation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="6000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_phospho_by_PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_phospho_by_PKA],ParameterGroup=Parameters,Parameter=k1" value="9" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDE_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="36" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDEP_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PDEP_dephospho],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_phospho_by_PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_phospho_by_PKA],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2AP_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2AP_dephospho],ParameterGroup=Parameters,Parameter=k1" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2Binactive_Ca_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2Binactive_Ca_binding],ParameterGroup=Parameters,Parameter=k1" value="1000000000000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2B_activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2B_activation],ParameterGroup=Parameters,Parameter=k1" value="3000000000000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2BinactiveCa2_Ca_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2BinactiveCa2_Ca_unbinding],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2B_inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2B_inactivation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[R2C2_cAMP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[R2C2_cAMP_binding],ParameterGroup=Parameters,Parameter=k1" value="54000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_R2C2_binding_by_cAMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_R2C2_binding_by_cAMP],ParameterGroup=Parameters,Parameter=k1" value="54000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP2_R2C2_binding_by_cAMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP2_R2C2_binding_by_cAMP],ParameterGroup=Parameters,Parameter=k1" value="75000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP3_R2C2_binding_by_cAMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP3_R2C2_binding_by_cAMP],ParameterGroup=Parameters,Parameter=k1" value="75000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_R2C2_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_R2C2_unbinding],ParameterGroup=Parameters,Parameter=k1" value="33" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP2_R2C2_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP2_R2C2_unbinding],ParameterGroup=Parameters,Parameter=k1" value="33" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP3_R2C2_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP3_R2C2_unbinding],ParameterGroup=Parameters,Parameter=k1" value="110" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C2_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C2_unbinding],ParameterGroup=Parameters,Parameter=k1" value="32.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="18000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C2_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C2_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="60" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="18000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP4_R2C_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="60" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_binding],ParameterGroup=Parameters,Parameter=k1" value="2520000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_unbinding],ParameterGroup=Parameters,Parameter=k1" value="40" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDE_degradation],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_binding],ParameterGroup=Parameters,Parameter=k1" value="5040000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_unbinding],ParameterGroup=Parameters,Parameter=k1" value="80" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[cAMP_PDEP_degradation],ParameterGroup=Parameters,Parameter=k1" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[Ca_in]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[Ca_in],ParameterGroup=Parameters,Parameter=v" value="2.5e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Fernandez2006_ModelB,Vector=Values[ca_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[Ca_destroy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[Ca_destroy],ParameterGroup=Parameters,Parameter=k1" value="1.7" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2ACa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2ACa_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2ACa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2ACa_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2ACa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2ACa_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2ACa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2ACa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2ACa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2ACa_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2ACa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2ACa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2ACa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2ACa_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2ACa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2ACa_binding],ParameterGroup=Parameters,Parameter=k1" value="3800000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2ACa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2ACa_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2ACa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2ACa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2ACa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2ACa_on_75],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2ACa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2ACa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2APCa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2APCa_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2APCa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2APCa_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2APCa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_dephospho_by_PP2APCa_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2APCa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75:137_PP2APCa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2APCa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_dephospho_by_PP2APCa_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2APCa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D34:75_PP2APCa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2APCa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2APCa_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2APCa_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2APCa_binding],ParameterGroup=Parameters,Parameter=k1" value="17000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2APCa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_dephospho_by_PP2APCa_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2APCa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75:137_PP2APCa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2APCa_on_75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_dephospho_by_PP2APCa_on_75],ParameterGroup=Parameters,Parameter=k1" value="24" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2APCa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[D75_PP2APCa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_Ca_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_Ca_binding],ParameterGroup=Parameters,Parameter=k1" value="200000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_Ca_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2A_Ca_unbinding],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_PKA_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_PKA_binding],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_phospho_by_PKA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_phospho_by_PKA],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2AP_Ca_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2AP_Ca_binding],ParameterGroup=Parameters,Parameter=k1" value="200000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2APCa_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2APCa_unbinding],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2APCa_dephospho]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2APCa_dephospho],ParameterGroup=Parameters,Parameter=k1" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_PKA_unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Reactions[PP2ACa_PKA_unbinding],ParameterGroup=Parameters,Parameter=k1" value="16" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 120.44281714 0 0 0 0 99.96753822619998 0 0 0 0 0 120.44281714 80.09447339810002 2999.026146786 0 0 0 1204.4281714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 199.9350764524 0 0 0 0 0 0 0 0 0 3998.701529048 0 1e-15 2.5e-08 200 50 6.6e-06 2 2 2.5e-08 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Report reference="Report_17" target="stoch_GibsonBruck.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1400"/>
        <Parameter name="StepSize" type="float" value="0.5"/>
        <Parameter name="Duration" type="float" value="700"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Stochastic (Gibson + Bruck)" type="DirectMethod">
        <Parameter name="Max Internal Steps" type="integer" value="1000000"/>
        <Parameter name="Subtype" type="unsignedInteger" value="2"/>
        <Parameter name="Use Random Seed" type="bool" value="0"/>
        <Parameter name="Random Seed" type="unsignedInteger" value="1"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Reference=Time"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[AMP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CDK5],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1P],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[CK1P_PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[Ca],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_CDK5],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D137_PP2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_CDK5],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:137_PP2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2A],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2ACa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2AP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2APCa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75:137_PP2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_CK1],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2A],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2ACa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2AP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2APCa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34:75_PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_CDK5],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_CK1],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D34_PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2A],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2ACa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2AP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2APCa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75:137_PP2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_CK1],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2A],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2ACa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2AP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D75_PP2APCa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_CDK5],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_CK1],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[D_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[Empty],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDE],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDEP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PDE_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2A],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2ACa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2ACa_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2AP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2APCa],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2A_PKA],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2B],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2Binactive],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2BinactiveCa2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[PP2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[R2C2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP2_R2C2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP3_R2C2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2C],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP4_R2C2],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_PDE],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_PDEP],Reference=ParticleNumber"/>
        <Object cn="CN=Root,Model=Fernandez2006_ModelB,Vector=Compartments[Spine],Vector=Metabolites[cAMP_R2C2],Reference=ParticleNumber"/>
      </Table>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="pcbi.0020176.sd002_cAMPdelay200.xml">
    <SBMLMap SBMLid="AMP" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="CDK5" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="CK1" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CK1P" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="CK1P_PP2B" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="Ca" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="Ca_on3" COPASIkey="Event_4"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="D137" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="D137_CDK5" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="D137_PKA" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="D137_PP2C" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="D34" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="D34_137" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="D34_137_CDK5" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="D34_137_PP2B" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="D34_137_PP2C" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="D34_75" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="D34_75_137" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="D34_75_137_PP2A" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="D34_75_137_PP2ACa" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="D34_75_137_PP2AP" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="D34_75_137_PP2APCa" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="D34_75_137_PP2B" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="D34_75_137_PP2C" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="D34_75_CK1" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="D34_75_PP2A" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="D34_75_PP2ACa" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="D34_75_PP2AP" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="D34_75_PP2APCa" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="D34_75_PP2B" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="D34_CDK5" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="D34_CK1" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="D34_PP2B" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="D75" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="D75CK1" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="D75_137" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="D75_137_PKA" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="D75_137_PP2A" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="D75_137_PP2ACa" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="D75_137_PP2AP" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="D75_137_PP2APCa" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="D75_137_PP2C" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="D75_PKA" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="D75_PP2A" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="D75_PP2ACa" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="D75_PP2AP" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="D75_PP2APCa" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="D_CDK5" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="D_CK1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="D_PKA" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Empty" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="PDE" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="PDEP" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="PDE_PKA" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="PKA" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="PP2ACa" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="PP2ACa_PKA" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="PP2AP" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PP2APCa" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="PP2A_PKA" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="PP2B" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="PP2Binactive" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="PP2BinactiveCa2" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="PP2C" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="R2C2" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="Spine" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="cAMP" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="cAMP2_R2C2" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="cAMP3_R2C2" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="cAMP4_R2" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="cAMP4_R2C" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="cAMP4_R2C2" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="cAMP_Ca_delay" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="cAMP_PDE" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="cAMP_PDEP" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="cAMP_R2C2" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="cAMP_delay" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="cAMP_pulse" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="ca_off1" COPASIkey="Event_3"/>
    <SBMLMap SBMLid="ca_off10" COPASIkey="Event_20"/>
    <SBMLMap SBMLid="ca_off2" COPASIkey="Event_12"/>
    <SBMLMap SBMLid="ca_off3" COPASIkey="Event_13"/>
    <SBMLMap SBMLid="ca_off4" COPASIkey="Event_14"/>
    <SBMLMap SBMLid="ca_off5" COPASIkey="Event_15"/>
    <SBMLMap SBMLid="ca_off6" COPASIkey="Event_16"/>
    <SBMLMap SBMLid="ca_off7" COPASIkey="Event_17"/>
    <SBMLMap SBMLid="ca_off8" COPASIkey="Event_18"/>
    <SBMLMap SBMLid="ca_off9" COPASIkey="Event_19"/>
    <SBMLMap SBMLid="ca_on1" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="ca_on10" COPASIkey="Event_11"/>
    <SBMLMap SBMLid="ca_on2" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="ca_on4" COPASIkey="Event_5"/>
    <SBMLMap SBMLid="ca_on5" COPASIkey="Event_6"/>
    <SBMLMap SBMLid="ca_on6" COPASIkey="Event_7"/>
    <SBMLMap SBMLid="ca_on7" COPASIkey="Event_8"/>
    <SBMLMap SBMLid="ca_on8" COPASIkey="Event_9"/>
    <SBMLMap SBMLid="ca_on9" COPASIkey="Event_10"/>
    <SBMLMap SBMLid="k57" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="kon_high" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kon_low" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="spike_duration" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="spike_interval" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="v57" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="v58" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="vcat1" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="vcat10" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="vcat11" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="vcat12" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="vcat13" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="vcat14" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="vcat15" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="vcat16" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="vcat17" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="vcat18" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="vcat19" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="vcat2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="vcat20" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="vcat21" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="vcat22" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="vcat23" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="vcat24" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="vcat25" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="vcat26" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="vcat27" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="vcat28" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="vcat29" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="vcat3" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vcat30" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="vcat31" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="vcat32" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="vcat33" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="vcat34" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="vcat4" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vcat44" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="vcat45" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="vcat46" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="vcat47" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="vcat48" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="vcat49" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="vcat5" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vcat50" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="vcat51" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="vcat52" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="vcat53" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="vcat55" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="vcat56" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="vcat6" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="vcat7" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="vcat8" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="vcat9" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="voff1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="voff10" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="voff11" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="voff12" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="voff13" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="voff14" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="voff15" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="voff16" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="voff17" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="voff18" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="voff19" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="voff2" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="voff20" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="voff21" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="voff22" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="voff23" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="voff24" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="voff25" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="voff26" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="voff27" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="voff28" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="voff29" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="voff3" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="voff31" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="voff33" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="voff35" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="voff36" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="voff37" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="voff38" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="voff39" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="voff4" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="voff40" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="voff41" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="voff44" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="voff45" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="voff46" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="voff47" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="voff48" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="voff49" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="voff5" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="voff50" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="voff51" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="voff52" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="voff53" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="voff54" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="voff55" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="voff56" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="voff6" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="voff7" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="voff8" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="voff9" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="von1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="von10" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="von11" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="von12" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="von13" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="von14" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="von15" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="von16" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="von17" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="von18" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="von19" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="von2" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="von20" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="von21" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="von22" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="von23" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="von24" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="von25" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="von26" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="von27" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="von28" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="von29" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="von3" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="von31" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="von33" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="von35" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="von36" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="von37" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="von38" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="von39" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="von4" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="von40" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="von41" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="von42" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="von43" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="von44" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="von45" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="von46" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="von47" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="von48" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="von49" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="von5" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="von50" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="von51" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="von52" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="von53" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="von54" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="von55" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="von56" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="von6" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="von7" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="von8" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="von9" COPASIkey="Reaction_20"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
