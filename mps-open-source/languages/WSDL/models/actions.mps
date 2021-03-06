<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ed5346bc-53ae-45ef-9f59-0cd32e4b4b1a(WSDL.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="irkh" ref="r:5453e083-42db-4474-9ebc-c4b11ee10157(XSD.structure)" />
    <import index="iczy" ref="r:0fb2a1b8-0063-47ad-9b07-6462a5be9d39(WSDL.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1158700664498" name="jetbrains.mps.lang.actions.structure.NodeFactories" flags="ng" index="37WguZ">
        <child id="1158700779049" name="nodeFactory" index="37WGs$" />
      </concept>
      <concept id="1158700725281" name="jetbrains.mps.lang.actions.structure.NodeFactory" flags="ig" index="37WvkG">
        <reference id="1158700943156" name="applicableConcept" index="37XkoT" />
        <child id="1158701448518" name="setupFunction" index="37ZfLb" />
      </concept>
      <concept id="1158701162220" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction" flags="in" index="37Y9Zx" />
      <concept id="5584396657084912703" name="jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode" flags="nn" index="1r4Lsj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37WguZ" id="3epa_KBMI_t">
    <property role="TrG5h" value="autoInitialise" />
    <node concept="37WvkG" id="3epa_KBMIAu" role="37WGs$">
      <ref role="37XkoT" to="iczy:6hkHye_UBuE" resolve="Operation" />
      <node concept="37Y9Zx" id="3epa_KBMIAv" role="37ZfLb">
        <node concept="3clFbS" id="3epa_KBMIAw" role="2VODD2">
          <node concept="3clFbF" id="3epa_KBMIAH" role="3cqZAp">
            <node concept="37vLTI" id="3epa_KBMKPM" role="3clFbG">
              <node concept="2OqwBi" id="3epa_KBMIIt" role="37vLTJ">
                <node concept="1r4Lsj" id="3epa_KBMIAG" role="2Oq$k0" />
                <node concept="3TrEf2" id="3epa_KBMJ4G" role="2OqNvi">
                  <ref role="3Tt5mk" to="iczy:3epa_KBLRvo" resolve="request" />
                </node>
              </node>
              <node concept="2ShNRf" id="3epa_KBMLcj" role="37vLTx">
                <node concept="3zrR0B" id="3epa_KBMLaD" role="2ShVmc">
                  <node concept="3Tqbb2" id="3epa_KBMLaE" role="3zrR0E">
                    <ref role="ehGHo" to="irkh:3epa_KBLTbI" resolve="XsdComplexTypeBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3epa_KBMLhk" role="3cqZAp">
            <node concept="37vLTI" id="3epa_KBMM7l" role="3clFbG">
              <node concept="2ShNRf" id="3epa_KBMMbv" role="37vLTx">
                <node concept="3zrR0B" id="3epa_KBMMm1" role="2ShVmc">
                  <node concept="3Tqbb2" id="3epa_KBMMm3" role="3zrR0E">
                    <ref role="ehGHo" to="irkh:3epa_KBLTbI" resolve="XsdComplexTypeBody" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3epa_KBMLrs" role="37vLTJ">
                <node concept="1r4Lsj" id="3epa_KBMLhi" role="2Oq$k0" />
                <node concept="3TrEf2" id="3epa_KBMLLF" role="2OqNvi">
                  <ref role="3Tt5mk" to="iczy:3epa_KBLRvm" resolve="response" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="V$LP5N705R" role="37WGs$">
      <ref role="37XkoT" to="iczy:6hkHye_Tdgg" resolve="WebService" />
      <node concept="37Y9Zx" id="V$LP5N705S" role="37ZfLb">
        <node concept="3clFbS" id="V$LP5N705T" role="2VODD2">
          <node concept="3clFbF" id="V$LP5N7063" role="3cqZAp">
            <node concept="37vLTI" id="V$LP5N70Ud" role="3clFbG">
              <node concept="2ShNRf" id="V$LP5N70Wv" role="37vLTx">
                <node concept="3zrR0B" id="V$LP5N726c" role="2ShVmc">
                  <node concept="3Tqbb2" id="V$LP5N726e" role="3zrR0E">
                    <ref role="ehGHo" to="irkh:nxI_60uCZI" resolve="XsdSchemaBody" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="V$LP5N70fx" role="37vLTJ">
                <node concept="1r4Lsj" id="V$LP5N7062" role="2Oq$k0" />
                <node concept="3TrEf2" id="V$LP5N7qqu" role="2OqNvi">
                  <ref role="3Tt5mk" to="iczy:nxI_60tVQ9" resolve="schemaBody" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

