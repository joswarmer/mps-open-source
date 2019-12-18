<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d5f6aaf2-29aa-410d-a442-d0a3d98a8e90(Svg.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="r4xx" ref="r:25991841-12a0-400d-8d65-d016aab8719f(Svg.structure)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239360506533" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleDeclaration" flags="ng" index="2fD8I5">
        <child id="1239529553065" name="component" index="2pHZQ9" />
      </concept>
      <concept id="1239462176079" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration" flags="ng" index="2lGYhJ">
        <child id="1239462974287" name="type" index="2lK19J" />
      </concept>
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
      <concept id="1239559992092" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleLiteral" flags="nn" index="2ry78W">
        <reference id="1239560008022" name="tupleDeclaration" index="2ryb1Q" />
        <child id="1239560910577" name="componentRef" index="2r_Bvh" />
      </concept>
      <concept id="1239560581441" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentReference" flags="ng" index="2r$n1x">
        <reference id="1239560595302" name="componentDeclaration" index="2r$qp6" />
        <child id="1239560837729" name="value" index="2r_lH1" />
      </concept>
      <concept id="1239576519914" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentAccessOperation" flags="nn" index="2sxana">
        <reference id="1239576542472" name="component" index="2sxfKC" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
        <child id="1107880067339" name="method" index="3MN40a" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1522217801069359738" name="jetbrains.mps.baseLanguage.collections.structure.ReduceLeftOperation" flags="nn" index="1MCZdW" />
    </language>
  </registry>
  <node concept="312cEu" id="4iz6u7x8dyZ">
    <property role="3GE5qa" value="geometry" />
    <property role="TrG5h" value="Geometry" />
    <node concept="2tJIrI" id="4iz6u7xxaIz" role="jymVt" />
    <node concept="Wx3nA" id="4iz6u7yi2hR" role="jymVt">
      <property role="TrG5h" value="normal" />
      <node concept="3Tm1VV" id="4iz6u7yi2$n" role="1B3o_S" />
      <node concept="3uibUv" id="4iz6u7yi2mK" role="1tU5fm">
        <ref role="3uigEE" node="4iz6u7yi26t" resolve="Font" />
      </node>
      <node concept="2ry78W" id="4iz6u7yi2se" role="33vP2m">
        <ref role="2ryb1Q" node="4iz6u7yi26t" resolve="Font" />
        <node concept="2r$n1x" id="4iz6u7yi2sa" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7yi26H" resolve="textHeight" />
          <node concept="3b6qkQ" id="4iz6u7yug5W" role="2r_lH1">
            <property role="$nhwW" value="20.0" />
          </node>
        </node>
        <node concept="2r$n1x" id="4iz6u7yi2sc" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7yi26V" resolve="characterWidth" />
          <node concept="3b6qkQ" id="4iz6u7yugzh" role="2r_lH1">
            <property role="$nhwW" value="9.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4iz6u7yi2LN" role="jymVt">
      <property role="TrG5h" value="syntaxLabel" />
      <node concept="3Tm1VV" id="4iz6u7yi2Fd" role="1B3o_S" />
      <node concept="3uibUv" id="4iz6u7yi2KW" role="1tU5fm">
        <ref role="3uigEE" node="4iz6u7yi26t" resolve="Font" />
      </node>
      <node concept="2ry78W" id="4iz6u7yi2S2" role="33vP2m">
        <ref role="2ryb1Q" node="4iz6u7yi26t" resolve="Font" />
        <node concept="2r$n1x" id="4iz6u7yi2RY" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7yi26H" resolve="textHeight" />
          <node concept="3b6qkQ" id="4iz6u7yugw6" role="2r_lH1">
            <property role="$nhwW" value="12.0" />
          </node>
        </node>
        <node concept="2r$n1x" id="4iz6u7yi2S0" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7yi26V" resolve="characterWidth" />
          <node concept="3b6qkQ" id="4iz6u7yuRWs" role="2r_lH1">
            <property role="$nhwW" value="8.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7y9KJj" role="jymVt" />
    <node concept="Wx3nA" id="38dU5mO4yq3" role="jymVt">
      <property role="TrG5h" value="nullVector" />
      <node concept="3Tm1VV" id="38dU5mO4yAa" role="1B3o_S" />
      <node concept="3uibUv" id="38dU5mO4ySf" role="1tU5fm">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="2ry78W" id="38dU5mO4zjd" role="33vP2m">
        <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
        <node concept="2r$n1x" id="38dU5mO4zj9" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
          <node concept="3b6qkQ" id="38dU5mO4zrL" role="2r_lH1">
            <property role="$nhwW" value="0.0" />
          </node>
        </node>
        <node concept="2r$n1x" id="38dU5mO4zjb" role="2r_Bvh">
          <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
          <node concept="3b6qkQ" id="38dU5mO4z_q" role="2r_lH1">
            <property role="$nhwW" value="0.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38dU5mO4yGd" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7y462f" role="jymVt">
      <property role="TrG5h" value="anchorVector" />
      <node concept="37vLTG" id="4iz6u7y4657" role="3clF46">
        <property role="TrG5h" value="topLeft" />
        <node concept="3uibUv" id="4iz6u7y465w" role="1tU5fm">
          <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7y466t" role="3clF46">
        <property role="TrG5h" value="size" />
        <node concept="3uibUv" id="4iz6u7y466S" role="1tU5fm">
          <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
        </node>
      </node>
      <node concept="37vLTG" id="5xFSyvKXVkW" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="2ZThk1" id="5xFSyvKXVwm" role="1tU5fm">
          <ref role="2ZWj4r" to="r4xx:5xFSyvKUzDU" resolve="Anchor" />
        </node>
      </node>
      <node concept="3uibUv" id="4iz6u7y462Y" role="3clF45">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="3Tm1VV" id="4iz6u7y462i" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7y462j" role="3clF47">
        <node concept="3cpWs8" id="5xFSyvL0MGn" role="3cqZAp">
          <node concept="3cpWsn" id="5xFSyvL0MGo" role="3cpWs9">
            <property role="TrG5h" value="offset" />
            <node concept="2pR195" id="5xFSyvL0M$W" role="1tU5fm">
              <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
            </node>
            <node concept="3X5UdL" id="5xFSyvL0MGp" role="33vP2m">
              <node concept="37vLTw" id="5xFSyvL0MGq" role="3X5Ude">
                <ref role="3cqZAo" node="5xFSyvKXVkW" resolve="anchor" />
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MGr" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MGs" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzDW" resolve="top_left" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MGt" role="3X5gFO">
                  <node concept="37vLTw" id="5xFSyvL0MGu" role="3X5gDC">
                    <ref role="3cqZAo" node="38dU5mO4yq3" resolve="nullVector" />
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MGv" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MGw" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzDX" resolve="top_middle" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MGx" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MGy" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MGz" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="17qRlL" id="5xFSyvL0MG$" role="2r_lH1">
                        <node concept="2OqwBi" id="5xFSyvL0MG_" role="3uHU7w">
                          <node concept="37vLTw" id="5xFSyvL0MGA" role="2Oq$k0">
                            <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                          </node>
                          <node concept="2sxana" id="5xFSyvL0MGB" role="2OqNvi">
                            <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                          </node>
                        </node>
                        <node concept="3b6qkQ" id="5xFSyvL0MGC" role="3uHU7B">
                          <property role="$nhwW" value="0.5" />
                        </node>
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MGD" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="3b6qkQ" id="5xFSyvL0MGE" role="2r_lH1">
                        <property role="$nhwW" value="0.0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MGF" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MGG" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzDY" resolve="top_right" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MGH" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MGI" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MGJ" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="2OqwBi" id="5xFSyvL0MGK" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MGL" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MGM" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MGN" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="3b6qkQ" id="5xFSyvL0MGO" role="2r_lH1">
                        <property role="$nhwW" value="0.0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MGP" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MGQ" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzDZ" resolve="right_middle" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MGR" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MGS" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MGT" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="2OqwBi" id="5xFSyvL0MGU" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MGV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MGW" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MGX" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="17qRlL" id="5xFSyvL0MGY" role="2r_lH1">
                        <node concept="2OqwBi" id="5xFSyvL0MGZ" role="3uHU7w">
                          <node concept="37vLTw" id="5xFSyvL0MH0" role="2Oq$k0">
                            <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                          </node>
                          <node concept="2sxana" id="5xFSyvL0MH1" role="2OqNvi">
                            <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                          </node>
                        </node>
                        <node concept="3b6qkQ" id="5xFSyvL0MH2" role="3uHU7B">
                          <property role="$nhwW" value="0.5" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MH3" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MH4" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzE0" resolve="bottom_right" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MH5" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MH6" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MH7" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="2OqwBi" id="5xFSyvL0MH8" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MH9" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MHa" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                        </node>
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MHb" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="2OqwBi" id="5xFSyvL0MHc" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MHd" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MHe" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MHf" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MHg" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzE1" resolve="bottom_middle" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MHh" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MHi" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MHj" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="17qRlL" id="5xFSyvL0MHk" role="2r_lH1">
                        <node concept="2OqwBi" id="5xFSyvL0MHl" role="3uHU7w">
                          <node concept="37vLTw" id="5xFSyvL0MHm" role="2Oq$k0">
                            <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                          </node>
                          <node concept="2sxana" id="5xFSyvL0MHn" role="2OqNvi">
                            <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                          </node>
                        </node>
                        <node concept="3b6qkQ" id="5xFSyvL0MHo" role="3uHU7B">
                          <property role="$nhwW" value="0.5" />
                        </node>
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MHp" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="2OqwBi" id="5xFSyvL0MHq" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MHr" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MHs" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MHt" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MHu" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzE2" resolve="bottom_left" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MHv" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MHw" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MHx" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="3b6qkQ" id="5xFSyvL0MHy" role="2r_lH1">
                        <property role="$nhwW" value="0.0" />
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MHz" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="2OqwBi" id="5xFSyvL0MH$" role="2r_lH1">
                        <node concept="37vLTw" id="5xFSyvL0MH_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                        </node>
                        <node concept="2sxana" id="5xFSyvL0MHA" role="2OqNvi">
                          <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3X5Udd" id="5xFSyvL0MHB" role="3X5gkp">
                <node concept="21nZrQ" id="5xFSyvL0MHC" role="3X5Uda">
                  <ref role="21nZrZ" to="r4xx:5xFSyvKUzE3" resolve="left_middle" />
                </node>
                <node concept="3X5gDF" id="5xFSyvL0MHD" role="3X5gFO">
                  <node concept="2ry78W" id="5xFSyvL0MHE" role="3X5gDC">
                    <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
                    <node concept="2r$n1x" id="5xFSyvL0MHF" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                      <node concept="3b6qkQ" id="5xFSyvL0MHG" role="2r_lH1">
                        <property role="$nhwW" value="0.0" />
                      </node>
                    </node>
                    <node concept="2r$n1x" id="5xFSyvL0MHH" role="2r_Bvh">
                      <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                      <node concept="17qRlL" id="5xFSyvL0MHI" role="2r_lH1">
                        <node concept="2OqwBi" id="5xFSyvL0MHJ" role="3uHU7w">
                          <node concept="37vLTw" id="5xFSyvL0MHK" role="2Oq$k0">
                            <ref role="3cqZAo" node="4iz6u7y466t" resolve="size" />
                          </node>
                          <node concept="2sxana" id="5xFSyvL0MHL" role="2OqNvi">
                            <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                          </node>
                        </node>
                        <node concept="3b6qkQ" id="5xFSyvL0MHM" role="3uHU7B">
                          <property role="$nhwW" value="0.5" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5xFSyvKXXkk" role="3cqZAp">
          <node concept="2OqwBi" id="5xFSyvL0OhM" role="3cqZAk">
            <node concept="37vLTw" id="5xFSyvL0NE7" role="2Oq$k0">
              <ref role="3cqZAo" node="4iz6u7y4657" resolve="topLeft" />
            </node>
            <node concept="liA8E" id="5xFSyvL0O_W" role="2OqNvi">
              <ref role="37wK5l" node="4iz6u7xxvUJ" resolve="add" />
              <node concept="37vLTw" id="5xFSyvL0OKC" role="37wK5m">
                <ref role="3cqZAo" node="5xFSyvL0MGo" resolve="offset" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7yb_7T" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7yb_gI" role="jymVt">
      <property role="TrG5h" value="xs" />
      <node concept="A3Dl8" id="4iz6u7ybCpA" role="3clF45">
        <node concept="10P55v" id="4iz6u7ybCpB" role="A3Ik2" />
      </node>
      <node concept="3Tm6S6" id="4iz6u7yze7j" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7yb_gM" role="3clF47">
        <node concept="3clFbF" id="4iz6u7yb_pT" role="3cqZAp">
          <node concept="2OqwBi" id="4iz6u7yb_Cb" role="3clFbG">
            <node concept="37vLTw" id="4iz6u7yb_pS" role="2Oq$k0">
              <ref role="3cqZAo" node="4iz6u7yb_l0" resolve="vectors" />
            </node>
            <node concept="3$u5V9" id="4iz6u7ybArG" role="2OqNvi">
              <node concept="1bVj0M" id="4iz6u7ybArI" role="23t8la">
                <node concept="3clFbS" id="4iz6u7ybArJ" role="1bW5cS">
                  <node concept="3clFbF" id="4iz6u7ybAwt" role="3cqZAp">
                    <node concept="2OqwBi" id="4iz6u7ybB2_" role="3clFbG">
                      <node concept="37vLTw" id="4iz6u7ybAws" role="2Oq$k0">
                        <ref role="3cqZAo" node="4iz6u7ybArK" resolve="it" />
                      </node>
                      <node concept="2sxana" id="4iz6u7ybCgK" role="2OqNvi">
                        <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4iz6u7ybArK" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4iz6u7ybArL" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7yb_l0" role="3clF46">
        <property role="TrG5h" value="vectors" />
        <node concept="A3Dl8" id="4iz6u7yb_kY" role="1tU5fm">
          <node concept="3uibUv" id="4iz6u7yb_lP" role="A3Ik2">
            <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7ybCsA" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7ybC$t" role="jymVt">
      <property role="TrG5h" value="ys" />
      <node concept="A3Dl8" id="4iz6u7ybCCD" role="3clF45">
        <node concept="10P55v" id="4iz6u7ybCDp" role="A3Ik2" />
      </node>
      <node concept="3Tm6S6" id="4iz6u7yzehN" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7ybC$x" role="3clF47">
        <node concept="3clFbF" id="4iz6u7ybCKa" role="3cqZAp">
          <node concept="2OqwBi" id="4iz6u7ybD2x" role="3clFbG">
            <node concept="37vLTw" id="4iz6u7ybCK9" role="2Oq$k0">
              <ref role="3cqZAo" node="4iz6u7ybCEh" resolve="vectors" />
            </node>
            <node concept="3$u5V9" id="4iz6u7ybDLW" role="2OqNvi">
              <node concept="1bVj0M" id="4iz6u7ybDLY" role="23t8la">
                <node concept="3clFbS" id="4iz6u7ybDLZ" role="1bW5cS">
                  <node concept="3clFbF" id="4iz6u7ybDQ4" role="3cqZAp">
                    <node concept="2OqwBi" id="4iz6u7ybErP" role="3clFbG">
                      <node concept="37vLTw" id="4iz6u7ybDQ3" role="2Oq$k0">
                        <ref role="3cqZAo" node="4iz6u7ybDM0" resolve="it" />
                      </node>
                      <node concept="2sxana" id="4iz6u7ybFFX" role="2OqNvi">
                        <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4iz6u7ybDM0" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4iz6u7ybDM1" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7ybCEh" role="3clF46">
        <property role="TrG5h" value="vectors" />
        <node concept="A3Dl8" id="4iz6u7ybCEf" role="1tU5fm">
          <node concept="3uibUv" id="4iz6u7ybCFm" role="A3Ik2">
            <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7yzg37" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7yarpC" role="jymVt">
      <property role="TrG5h" value="max" />
      <node concept="10P55v" id="4iz6u7yatTs" role="3clF45" />
      <node concept="3Tm6S6" id="4iz6u7yzgbW" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7yarpG" role="3clF47">
        <node concept="3clFbF" id="4iz6u7yaruq" role="3cqZAp">
          <node concept="2OqwBi" id="4iz6u7yarGA" role="3clFbG">
            <node concept="37vLTw" id="4iz6u7yarup" role="2Oq$k0">
              <ref role="3cqZAo" node="4iz6u7yars7" resolve="numbers" />
            </node>
            <node concept="1MCZdW" id="4iz6u7yasw8" role="2OqNvi">
              <node concept="1bVj0M" id="4iz6u7yaswa" role="23t8la">
                <node concept="3clFbS" id="4iz6u7yaswb" role="1bW5cS">
                  <node concept="3clFbF" id="4iz6u7yasG$" role="3cqZAp">
                    <node concept="2YIFZM" id="4iz6u7yat0l" role="3clFbG">
                      <ref role="37wK5l" to="wyt6:~Math.max(double,double)" resolve="max" />
                      <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                      <node concept="37vLTw" id="4iz6u7yatqP" role="37wK5m">
                        <ref role="3cqZAo" node="4iz6u7yaswc" resolve="a" />
                      </node>
                      <node concept="37vLTw" id="4iz6u7yatIc" role="37wK5m">
                        <ref role="3cqZAo" node="4iz6u7yaswe" resolve="b" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4iz6u7yaswc" role="1bW2Oz">
                  <property role="TrG5h" value="a" />
                  <node concept="2jxLKc" id="4iz6u7yaswd" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="4iz6u7yaswe" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="4iz6u7yaswf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7yars7" role="3clF46">
        <property role="TrG5h" value="numbers" />
        <node concept="A3Dl8" id="4iz6u7yars5" role="1tU5fm">
          <node concept="10P55v" id="4iz6u7yarsF" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7yaOgY" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7yaOld" role="jymVt">
      <property role="TrG5h" value="sum" />
      <node concept="10P55v" id="4iz6u7yaOn_" role="3clF45" />
      <node concept="3Tm6S6" id="4iz6u7yzghS" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7yaOlh" role="3clF47">
        <node concept="3clFbF" id="38dU5mOzQAB" role="3cqZAp">
          <node concept="3K4zz7" id="38dU5mOzSAD" role="3clFbG">
            <node concept="3b6qkQ" id="38dU5mOzSIp" role="3K4E3e">
              <property role="$nhwW" value="0.0" />
            </node>
            <node concept="2OqwBi" id="38dU5mOzQTV" role="3K4Cdx">
              <node concept="37vLTw" id="38dU5mOzQA_" role="2Oq$k0">
                <ref role="3cqZAo" node="4iz6u7yaOou" resolve="numbers" />
              </node>
              <node concept="1v1jN8" id="38dU5mOzRIJ" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4iz6u7yaOEH" role="3K4GZi">
              <node concept="37vLTw" id="4iz6u7yaOrX" role="2Oq$k0">
                <ref role="3cqZAo" node="4iz6u7yaOou" resolve="numbers" />
              </node>
              <node concept="1MCZdW" id="4iz6u7yaPpR" role="2OqNvi">
                <node concept="1bVj0M" id="4iz6u7yaPpT" role="23t8la">
                  <node concept="3clFbS" id="4iz6u7yaPpU" role="1bW5cS">
                    <node concept="3clFbF" id="4iz6u7yaPyo" role="3cqZAp">
                      <node concept="3cpWs3" id="4iz6u7yaPTs" role="3clFbG">
                        <node concept="37vLTw" id="4iz6u7yaPUe" role="3uHU7w">
                          <ref role="3cqZAo" node="4iz6u7yaPpX" resolve="b" />
                        </node>
                        <node concept="37vLTw" id="4iz6u7yaPyn" role="3uHU7B">
                          <ref role="3cqZAo" node="4iz6u7yaPpV" resolve="a" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4iz6u7yaPpV" role="1bW2Oz">
                    <property role="TrG5h" value="a" />
                    <node concept="2jxLKc" id="4iz6u7yaPpW" role="1tU5fm" />
                  </node>
                  <node concept="Rh6nW" id="4iz6u7yaPpX" role="1bW2Oz">
                    <property role="TrG5h" value="b" />
                    <node concept="2jxLKc" id="4iz6u7yaPpY" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7yaOou" role="3clF46">
        <property role="TrG5h" value="numbers" />
        <node concept="A3Dl8" id="4iz6u7yaOos" role="1tU5fm">
          <node concept="10P55v" id="4iz6u7yaOp6" role="A3Ik2" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7yzfBL" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7ywYbu" role="jymVt">
      <property role="TrG5h" value="sizeForStacked" />
      <node concept="37vLTG" id="4iz6u7ywYr0" role="3clF46">
        <property role="TrG5h" value="subSizes" />
        <node concept="A3Dl8" id="4iz6u7ywYr1" role="1tU5fm">
          <node concept="3uibUv" id="4iz6u7ywYr2" role="A3Ik2">
            <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7ywYuu" role="3clF46">
        <property role="TrG5h" value="vertical" />
        <node concept="10P_77" id="4iz6u7ywYxI" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4iz6u7ywYiX" role="3clF45">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="3Tm1VV" id="4iz6u7ywYbx" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7ywYby" role="3clF47">
        <node concept="3clFbF" id="4iz6u7yzh95" role="3cqZAp">
          <node concept="3K4zz7" id="4iz6u7yzh$$" role="3clFbG">
            <node concept="2ry78W" id="4iz6u7yzhJ$" role="3K4E3e">
              <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
              <node concept="2r$n1x" id="4iz6u7yzhJw" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                <node concept="1rXfSq" id="4iz6u7yzhPd" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yarpC" resolve="max" />
                  <node concept="1rXfSq" id="4iz6u7yzhW4" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7yb_gI" resolve="xs" />
                    <node concept="37vLTw" id="4iz6u7yzi5w" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7ywYr0" resolve="subSizes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2r$n1x" id="4iz6u7yzhJy" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                <node concept="1rXfSq" id="4iz6u7yzidL" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yaOld" resolve="sum" />
                  <node concept="1rXfSq" id="4iz6u7yzimi" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7ybC$t" resolve="ys" />
                    <node concept="37vLTw" id="4iz6u7yzixo" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7ywYr0" resolve="subSizes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ry78W" id="4iz6u7yziFn" role="3K4GZi">
              <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
              <node concept="2r$n1x" id="4iz6u7yziFj" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                <node concept="1rXfSq" id="4iz6u7yziOE" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yaOld" resolve="sum" />
                  <node concept="1rXfSq" id="4iz6u7yziZc" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7yb_gI" resolve="xs" />
                    <node concept="37vLTw" id="4iz6u7yzjcj" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7ywYr0" resolve="subSizes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2r$n1x" id="4iz6u7yziFl" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                <node concept="1rXfSq" id="4iz6u7yzjof" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yarpC" resolve="max" />
                  <node concept="1rXfSq" id="4iz6u7yzj$r" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7ybC$t" resolve="ys" />
                    <node concept="37vLTw" id="4iz6u7yzjNc" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7ywYr0" resolve="subSizes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4iz6u7yzh93" role="3K4Cdx">
              <ref role="3cqZAo" node="4iz6u7ywYuu" resolve="vertical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7yzkrB" role="jymVt" />
    <node concept="2YIFZL" id="4iz6u7yzkKU" role="jymVt">
      <property role="TrG5h" value="offsetForStacked" />
      <node concept="3uibUv" id="4iz6u7yzkVO" role="3clF45">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="3Tm1VV" id="4iz6u7yzkKX" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7yzkKY" role="3clF47">
        <node concept="3clFbF" id="4iz6u7yzmkc" role="3cqZAp">
          <node concept="3K4zz7" id="4iz6u7yzmK0" role="3clFbG">
            <node concept="2ry78W" id="4iz6u7yzmSo" role="3K4E3e">
              <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
              <node concept="2r$n1x" id="4iz6u7yzmSk" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                <node concept="3b6qkQ" id="4iz6u7yzn5d" role="2r_lH1">
                  <property role="$nhwW" value="0.0" />
                </node>
              </node>
              <node concept="2r$n1x" id="4iz6u7yzmSm" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                <node concept="1rXfSq" id="4iz6u7yznBO" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yaOld" resolve="sum" />
                  <node concept="1rXfSq" id="4iz6u7yzna0" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7ybC$t" resolve="ys" />
                    <node concept="37vLTw" id="4iz6u7yznmm" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7yzlkv" resolve="prevSizes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ry78W" id="4iz6u7yznUH" role="3K4GZi">
              <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
              <node concept="2r$n1x" id="4iz6u7yznUD" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
                <node concept="1rXfSq" id="4iz6u7yzo58" role="2r_lH1">
                  <ref role="37wK5l" node="4iz6u7yaOld" resolve="sum" />
                  <node concept="1rXfSq" id="4iz6u7yzogO" role="37wK5m">
                    <ref role="37wK5l" node="4iz6u7yb_gI" resolve="xs" />
                    <node concept="37vLTw" id="4iz6u7yzovF" role="37wK5m">
                      <ref role="3cqZAo" node="4iz6u7yzlkv" resolve="prevSizes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2r$n1x" id="4iz6u7yznUF" role="2r_Bvh">
                <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
                <node concept="3b6qkQ" id="4iz6u7yzoH1" role="2r_lH1">
                  <property role="$nhwW" value="0.0" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4iz6u7yzmkb" role="3K4Cdx">
              <ref role="3cqZAo" node="4iz6u7yzlPY" resolve="vertical" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7yzlkv" role="3clF46">
        <property role="TrG5h" value="prevSizes" />
        <node concept="A3Dl8" id="4iz6u7yzlkt" role="1tU5fm">
          <node concept="3uibUv" id="4iz6u7yzlqc" role="A3Ik2">
            <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7yzlPY" role="3clF46">
        <property role="TrG5h" value="vertical" />
        <node concept="10P_77" id="4iz6u7yzlVE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4iz6u7ywTRb" role="jymVt" />
    <node concept="3Tm1VV" id="4iz6u7x8dz0" role="1B3o_S" />
  </node>
  <node concept="2fD8I5" id="4iz6u7xxdgk">
    <property role="3GE5qa" value="geometry" />
    <property role="TrG5h" value="Vector" />
    <node concept="3Tm1VV" id="4iz6u7xxdgl" role="1B3o_S" />
    <node concept="2lGYhJ" id="4iz6u7xxdgF" role="2pHZQ9">
      <property role="TrG5h" value="x" />
      <node concept="10P55v" id="4iz6u7xxdiK" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="4iz6u7xxdgT" role="2pHZQ9">
      <property role="TrG5h" value="y" />
      <node concept="10P55v" id="4iz6u7xxdiN" role="2lK19J" />
    </node>
    <node concept="3clFb_" id="4iz6u7xxvUJ" role="3MN40a">
      <property role="TrG5h" value="add" />
      <node concept="3uibUv" id="4iz6u7xxw4Y" role="3clF45">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="3Tm1VV" id="4iz6u7xxvUL" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7xxvUM" role="3clF47">
        <node concept="3clFbF" id="4iz6u7xxwyt" role="3cqZAp">
          <node concept="2ry78W" id="4iz6u7xxwys" role="3clFbG">
            <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
            <node concept="2r$n1x" id="4iz6u7xxwzU" role="2r_Bvh">
              <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
              <node concept="3cpWs3" id="4iz6u7xxxUu" role="2r_lH1">
                <node concept="2OqwBi" id="4iz6u7xxyGF" role="3uHU7w">
                  <node concept="37vLTw" id="4iz6u7xxxUI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4iz6u7xxwom" resolve="other" />
                  </node>
                  <node concept="2sxana" id="4iz6u7xxyUC" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4iz6u7xxx3L" role="3uHU7B">
                  <node concept="Xjq3P" id="4iz6u7xxwAy" role="2Oq$k0" />
                  <node concept="2sxana" id="4iz6u7xxxtM" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="4iz6u7xxz3u" role="2r_Bvh">
              <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
              <node concept="3cpWs3" id="4iz6u7xx_0B" role="2r_lH1">
                <node concept="2OqwBi" id="4iz6u7xxA1Y" role="3uHU7w">
                  <node concept="37vLTw" id="4iz6u7xx_fx" role="2Oq$k0">
                    <ref role="3cqZAo" node="4iz6u7xxwom" resolve="other" />
                  </node>
                  <node concept="2sxana" id="4iz6u7xxAoY" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4iz6u7xxzTI" role="3uHU7B">
                  <node concept="Xjq3P" id="4iz6u7xxzl4" role="2Oq$k0" />
                  <node concept="2sxana" id="4iz6u7xx$sw" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7xxwom" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="4iz6u7xxwol" role="1tU5fm">
          <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4iz6u7xEMr4" role="3MN40a">
      <property role="TrG5h" value="minus" />
      <node concept="3uibUv" id="4iz6u7xEMJS" role="3clF45">
        <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
      </node>
      <node concept="3Tm1VV" id="4iz6u7xEMr6" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7xEMr7" role="3clF47">
        <node concept="3clFbF" id="4iz6u7xENG_" role="3cqZAp">
          <node concept="2ry78W" id="4iz6u7xENG$" role="3clFbG">
            <ref role="2ryb1Q" node="4iz6u7xxdgk" resolve="Vector" />
            <node concept="2r$n1x" id="4iz6u7xENI3" role="2r_Bvh">
              <ref role="2r$qp6" node="4iz6u7xxdgF" resolve="x" />
              <node concept="3cpWsd" id="4iz6u7xEPao" role="2r_lH1">
                <node concept="2OqwBi" id="4iz6u7xEPML" role="3uHU7w">
                  <node concept="37vLTw" id="4iz6u7xEPaC" role="2Oq$k0">
                    <ref role="3cqZAo" node="4iz6u7xENo4" resolve="other" />
                  </node>
                  <node concept="2sxana" id="4iz6u7xEQeW" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4iz6u7xEOjF" role="3uHU7B">
                  <node concept="Xjq3P" id="4iz6u7xENQs" role="2Oq$k0" />
                  <node concept="2sxana" id="4iz6u7xEOHG" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2r$n1x" id="4iz6u7xEQjF" role="2r_Bvh">
              <ref role="2r$qp6" node="4iz6u7xxdgT" resolve="y" />
              <node concept="3cpWsd" id="4iz6u7xEROV" role="2r_lH1">
                <node concept="2OqwBi" id="4iz6u7xEStN" role="3uHU7w">
                  <node concept="37vLTw" id="4iz6u7xERPb" role="2Oq$k0">
                    <ref role="3cqZAo" node="4iz6u7xENo4" resolve="other" />
                  </node>
                  <node concept="2sxana" id="4iz6u7xESAG" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4iz6u7xEQXA" role="3uHU7B">
                  <node concept="Xjq3P" id="4iz6u7xEQt3" role="2Oq$k0" />
                  <node concept="2sxana" id="4iz6u7xERkV" role="2OqNvi">
                    <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4iz6u7xENo4" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="4iz6u7xENo3" role="1tU5fm">
          <ref role="3uigEE" node="4iz6u7xxdgk" resolve="Vector" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4iz6u7xB4Cw" role="3MN40a">
      <property role="TrG5h" value="asPath" />
      <node concept="17QB3L" id="4iz6u7xB4Mp" role="3clF45" />
      <node concept="3Tm1VV" id="4iz6u7xB4Cy" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7xB4Cz" role="3clF47">
        <node concept="3clFbF" id="4iz6u7xB5xv" role="3cqZAp">
          <node concept="2YIFZM" id="4iz6u7xB5xR" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.util.Locale,java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="10M0yZ" id="kYxf1a9c4$" role="37wK5m">
              <ref role="3cqZAo" to="33ny:~Locale.ROOT" resolve="ROOT" />
              <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
            </node>
            <node concept="Xl_RD" id="4iz6u7xB5Am" role="37wK5m">
              <property role="Xl_RC" value="%.1f %.1f" />
            </node>
            <node concept="2OqwBi" id="4iz6u7xBaut" role="37wK5m">
              <node concept="Xjq3P" id="4iz6u7xB9V$" role="2Oq$k0" />
              <node concept="2sxana" id="4iz6u7xBaSu" role="2OqNvi">
                <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="4iz6u7xBcs_" role="37wK5m">
              <node concept="Xjq3P" id="4iz6u7xBbWm" role="2Oq$k0" />
              <node concept="2sxana" id="4iz6u7xBcQA" role="2OqNvi">
                <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4iz6u7xWz0y" role="3MN40a">
      <property role="TrG5h" value="presentation" />
      <node concept="17QB3L" id="4iz6u7xWzmU" role="3clF45" />
      <node concept="3Tm1VV" id="4iz6u7xWz0$" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7xWz0_" role="3clF47">
        <node concept="3clFbF" id="4iz6u7xW$nC" role="3cqZAp">
          <node concept="2YIFZM" id="4iz6u7xW$oy" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.util.Locale,java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="10M0yZ" id="1AhX$ocdxsw" role="37wK5m">
              <ref role="3cqZAo" to="33ny:~Locale.ROOT" resolve="ROOT" />
              <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
            </node>
            <node concept="Xl_RD" id="4iz6u7xW$tF" role="37wK5m">
              <property role="Xl_RC" value="(%.1f, %.1f)" />
            </node>
            <node concept="2OqwBi" id="4iz6u7xW_sb" role="37wK5m">
              <node concept="Xjq3P" id="4iz6u7xW$T_" role="2Oq$k0" />
              <node concept="2sxana" id="4iz6u7xW_Qd" role="2OqNvi">
                <ref role="2sxfKC" node="4iz6u7xxdgF" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="4iz6u7xWAEM" role="37wK5m">
              <node concept="Xjq3P" id="4iz6u7xWAbe" role="2Oq$k0" />
              <node concept="2sxana" id="4iz6u7xWAL_" role="2OqNvi">
                <ref role="2sxfKC" node="4iz6u7xxdgT" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1b4FltB$nVU" role="3cqZAp">
          <node concept="1PaTwC" id="1b4FltB$nVV" role="3ndbpf">
            <node concept="3oM_SD" id="1b4FltB$nVX" role="1PaTwD">
              <property role="3oM_SC" value="(in" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$nZP" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o0g" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o0s" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
            <node concept="3oM_SD" id="1AhX$ocdxVK" role="1PaTwD">
              <property role="3oM_SC" value="locale" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o0D" role="1PaTwD">
              <property role="3oM_SC" value="dictates" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o0Z" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o1e" role="1PaTwD">
              <property role="3oM_SC" value="decimal" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o1u" role="1PaTwD">
              <property role="3oM_SC" value="comma" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o1R" role="1PaTwD">
              <property role="3oM_SC" value="instead" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o29" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o2k" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="1b4FltB$o2w" role="1PaTwD">
              <property role="3oM_SC" value="point)" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4iz6u7z1SfL" role="3MN40a">
      <property role="TrG5h" value="asTranslate" />
      <node concept="17QB3L" id="4iz6u7z1SEa" role="3clF45" />
      <node concept="3Tm1VV" id="4iz6u7z1SfN" role="1B3o_S" />
      <node concept="3clFbS" id="4iz6u7z1SfO" role="3clF47">
        <node concept="3clFbF" id="4iz6u7z1V0t" role="3cqZAp">
          <node concept="3cpWs3" id="4iz6u7z1VAs" role="3clFbG">
            <node concept="1rXfSq" id="4iz6u7z1WPf" role="3uHU7w">
              <ref role="37wK5l" node="4iz6u7xWz0y" resolve="presentation" />
            </node>
            <node concept="Xl_RD" id="4iz6u7z1V6Y" role="3uHU7B">
              <property role="Xl_RC" value="translate" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2fD8I5" id="4iz6u7yi26t">
    <property role="3GE5qa" value="geometry" />
    <property role="TrG5h" value="Font" />
    <node concept="3Tm1VV" id="4iz6u7yi26u" role="1B3o_S" />
    <node concept="2lGYhJ" id="4iz6u7yi26H" role="2pHZQ9">
      <property role="TrG5h" value="textHeight" />
      <node concept="10P55v" id="4iz6u7ysiv6" role="2lK19J" />
    </node>
    <node concept="2lGYhJ" id="4iz6u7yi26V" role="2pHZQ9">
      <property role="TrG5h" value="characterWidth" />
      <node concept="10P55v" id="4iz6u7ysiv9" role="2lK19J" />
    </node>
  </node>
</model>
