<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b761631d-c4eb-4928-b80a-054c89970ec8(BaseTemplate.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="81cq" ref="r:7ae19249-b5cc-42be-affe-041af14add37(BaseTemplate.behavior)" />
    <import index="6bz1" ref="r:d3905048-7598-4a84-931a-cbbcbcda146d(jetbrains.mps.lang.intentions.methods)" />
    <import index="2ox9" ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="8214474548715792907" name="jetbrains.mps.lang.intentions.structure.Intention" flags="ig" index="5jCsv">
        <reference id="75717156636551009" name="forConcept" index="1hH6sV" />
        <child id="6431842707461916273" name="priority" index="GdzyG" />
      </concept>
      <concept id="6431842707461916181" name="jetbrains.mps.lang.intentions.structure.ErrorIntentionPriority" flags="ng" index="Gdzz8" />
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="8880393040217246788" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance" flags="ig" index="ffn8J">
        <reference id="8880393040217294897" name="decl" index="ffrpq" />
      </concept>
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1145573345940" name="jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" flags="nn" index="2TvwIu" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
    </language>
  </registry>
  <node concept="2S6QgY" id="1SFgcLT$bhO">
    <property role="TrG5h" value="InsertExpression" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
    <node concept="2S6ZIM" id="1SFgcLT$bhP" role="2ZfVej">
      <node concept="3clFbS" id="1SFgcLT$bhQ" role="2VODD2">
        <node concept="3cpWs8" id="2AdBM2T4Tbz" role="3cqZAp">
          <node concept="3cpWsn" id="2AdBM2T4Tb$" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="2AdBM2T4Tb_" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="2AdBM2T4TbA" role="33vP2m">
              <node concept="1XNTG" id="2AdBM2T4TbB" role="2Oq$k0" />
              <node concept="liA8E" id="2AdBM2T4TbC" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2AdBM2T4TbD" role="3cqZAp">
          <node concept="3cpWsn" id="2AdBM2T4TbE" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="2AdBM2T4TbF" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
            </node>
            <node concept="10QFUN" id="2AdBM2T4TbG" role="33vP2m">
              <node concept="3uibUv" id="2AdBM2T4TbH" role="10QFUM">
                <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="2AdBM2T4TbI" role="10QFUP">
                <ref role="3cqZAo" node="2AdBM2T4Tb$" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AdBM2T4Tej" role="3cqZAp">
          <node concept="3clFbS" id="2AdBM2T4Tel" role="3clFbx">
            <node concept="3cpWs6" id="2AdBM2T4T0T" role="3cqZAp">
              <node concept="Xl_RD" id="2AdBM2T4T46" role="3cqZAk">
                <property role="Xl_RC" value="Template: Insert Expression at Cursor" />
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="2AdBM2T4TPa" role="3clFbw">
            <node concept="3cmrfG" id="2AdBM2T4TPg" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3cpWsd" id="2AdBM2T4Twz" role="3uHU7B">
              <node concept="2OqwBi" id="2AdBM2T4Tj4" role="3uHU7B">
                <node concept="37vLTw" id="2AdBM2T4TgQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AdBM2T4TbE" resolve="label" />
                </node>
                <node concept="liA8E" id="2AdBM2T4TnR" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd()" resolve="getSelectionEnd" />
                </node>
              </node>
              <node concept="2OqwBi" id="2AdBM2T4TAq" role="3uHU7w">
                <node concept="37vLTw" id="2AdBM2T4Tz8" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AdBM2T4TbE" resolve="label" />
                </node>
                <node concept="liA8E" id="2AdBM2T4TFt" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart()" resolve="getSelectionStart" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2AdBM2T4UiQ" role="9aQIa">
            <node concept="3clFbS" id="2AdBM2T4UiR" role="9aQI4">
              <node concept="3cpWs6" id="2AdBM2T4UiS" role="3cqZAp">
                <node concept="Xl_RD" id="2AdBM2T4UiT" role="3cqZAk">
                  <property role="Xl_RC" value="Template: Change Selected Text to Expression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1SFgcLT$bhR" role="2ZfgGD">
      <node concept="3clFbS" id="1SFgcLT$bhS" role="2VODD2">
        <node concept="3cpWs8" id="1SFgcLT$bqK" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$bqL" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="1SFgcLT$bqM" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="1SFgcLT$bxq" role="33vP2m">
              <node concept="1XNTG" id="1SFgcLT$bwM" role="2Oq$k0" />
              <node concept="liA8E" id="1SFgcLT$byN" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1SFgcLT$bHE" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$bHF" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="1SFgcLT$bHG" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
            </node>
            <node concept="10QFUN" id="1SFgcLT$bIB" role="33vP2m">
              <node concept="3uibUv" id="1SFgcLT$bI_" role="10QFUM">
                <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="1SFgcLT$bIX" role="10QFUP">
                <ref role="3cqZAo" node="1SFgcLT$bqL" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1SFgcLT$xx7" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$xx8" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="7Y69gu1JBzx" role="1tU5fm" />
            <node concept="2OqwBi" id="1SFgcLT$x$M" role="33vP2m">
              <node concept="37vLTw" id="1SFgcLT$x$2" role="2Oq$k0">
                <ref role="3cqZAo" node="1SFgcLT$bHF" resolve="label" />
              </node>
              <node concept="liA8E" id="1SFgcLT$xAq" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell_Label.getText()" resolve="getText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1JCNB" role="3cqZAp" />
        <node concept="3cpWs8" id="7Y69gu1J$qk" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1J$qn" role="3cpWs9">
            <property role="TrG5h" value="selected_node" />
            <node concept="3Tqbb2" id="7Y69gu1J$qi" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:6EV$eJxpsGT" resolve="TemplateWord" />
            </node>
            <node concept="2Sf5sV" id="7Y69gu1J$FH" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="1SFgcLT$xGV" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$xGW" role="3cpWs9">
            <property role="TrG5h" value="before" />
            <node concept="17QB3L" id="7Y69gu1JBEJ" role="1tU5fm" />
            <node concept="2OqwBi" id="1SFgcLT$xMH" role="33vP2m">
              <node concept="37vLTw" id="1SFgcLT$xKy" role="2Oq$k0">
                <ref role="3cqZAo" node="1SFgcLT$xx8" resolve="text" />
              </node>
              <node concept="liA8E" id="1SFgcLT$xXP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="1SFgcLT$xYj" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="1SFgcLT$y6x" role="37wK5m">
                  <node concept="37vLTw" id="1SFgcLT$y5g" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$bHF" resolve="label" />
                  </node>
                  <node concept="liA8E" id="1SFgcLT$y8y" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart()" resolve="getSelectionStart" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1LmF7" role="3cqZAp" />
        <node concept="3clFbF" id="1SFgcLT$yVp" role="3cqZAp">
          <node concept="37vLTI" id="1SFgcLT$zk1" role="3clFbG">
            <node concept="37vLTw" id="1SFgcLT$zmD" role="37vLTx">
              <ref role="3cqZAo" node="1SFgcLT$xGW" resolve="before" />
            </node>
            <node concept="2OqwBi" id="1SFgcLT$z0l" role="37vLTJ">
              <node concept="2Sf5sV" id="1SFgcLT$yVn" role="2Oq$k0" />
              <node concept="3TrcHB" id="6EV$eJxqqNK" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:6EV$eJxpsH2" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1JCjF" role="3cqZAp" />
        <node concept="3cpWs8" id="1SFgcLT$zzd" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$zze" role="3cpWs9">
            <property role="TrG5h" value="mid" />
            <node concept="17QB3L" id="7Y69gu1JBJ3" role="1tU5fm" />
            <node concept="2OqwBi" id="1SFgcLT$zFb" role="33vP2m">
              <node concept="37vLTw" id="1SFgcLT$zD0" role="2Oq$k0">
                <ref role="3cqZAo" node="1SFgcLT$xx8" resolve="text" />
              </node>
              <node concept="liA8E" id="1SFgcLT$zKY" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="2OqwBi" id="1SFgcLT$zMD" role="37wK5m">
                  <node concept="37vLTw" id="1SFgcLT$zLv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$bHF" resolve="label" />
                  </node>
                  <node concept="liA8E" id="1SFgcLT$zO$" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart()" resolve="getSelectionStart" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1SFgcLT$zSa" role="37wK5m">
                  <node concept="37vLTw" id="1SFgcLT$zQK" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$bHF" resolve="label" />
                  </node>
                  <node concept="liA8E" id="1SFgcLT$zVA" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd()" resolve="getSelectionEnd" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6EV$eJxqKmh" role="3cqZAp" />
        <node concept="3cpWs8" id="1SFgcLT$A_5" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$A_8" role="3cpWs9">
            <property role="TrG5h" value="midWord" />
            <node concept="3Tqbb2" id="1SFgcLT$A_3" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:6EV$eJxpsGU" resolve="TemplateExpressionWord" />
            </node>
            <node concept="2ShNRf" id="1SFgcLT$AGm" role="33vP2m">
              <node concept="3zrR0B" id="1SFgcLT$AGk" role="2ShVmc">
                <node concept="3Tqbb2" id="1SFgcLT$AGl" role="3zrR0E">
                  <ref role="ehGHo" to="2ox9:6EV$eJxpsGU" resolve="TemplateExpressionWord" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6EV$eJxr1pT" role="3cqZAp">
          <node concept="3clFbS" id="6EV$eJxr1pV" role="3clFbx">
            <node concept="3cpWs8" id="6EV$eJxqEdS" role="3cqZAp">
              <node concept="3cpWsn" id="6EV$eJxqEdV" role="3cpWs9">
                <property role="TrG5h" value="newExp" />
                <node concept="3Tqbb2" id="6EV$eJxqEdQ" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                </node>
                <node concept="2ShNRf" id="6EV$eJxqEhF" role="33vP2m">
                  <node concept="3zrR0B" id="6EV$eJxqEhD" role="2ShVmc">
                    <node concept="3Tqbb2" id="6EV$eJxqEhE" role="3zrR0E">
                      <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6EV$eJxqEkx" role="3cqZAp">
              <node concept="37vLTI" id="6EV$eJxqFRi" role="3clFbG">
                <node concept="3K4zz7" id="6EV$eJxqLfD" role="37vLTx">
                  <node concept="2OqwBi" id="6EV$eJxqLCs" role="3K4Cdx">
                    <node concept="37vLTw" id="6EV$eJxqLiG" role="2Oq$k0">
                      <ref role="3cqZAo" node="1SFgcLT$zze" resolve="mid" />
                    </node>
                    <node concept="17RlXB" id="6EV$eJxqYiP" role="2OqNvi" />
                  </node>
                  <node concept="Xl_RD" id="6EV$eJxqYjp" role="3K4E3e" />
                  <node concept="37vLTw" id="6EV$eJxqYmC" role="3K4GZi">
                    <ref role="3cqZAo" node="1SFgcLT$zze" resolve="mid" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6EV$eJxqEvk" role="37vLTJ">
                  <node concept="37vLTw" id="6EV$eJxqEkv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6EV$eJxqEdV" resolve="newExp" />
                  </node>
                  <node concept="3TrcHB" id="6EV$eJxqEZv" role="2OqNvi">
                    <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1SFgcLT$AMW" role="3cqZAp">
              <node concept="37vLTI" id="1SFgcLT$Bg5" role="3clFbG">
                <node concept="37vLTw" id="6EV$eJxqG73" role="37vLTx">
                  <ref role="3cqZAo" node="6EV$eJxqEdV" resolve="newExp" />
                </node>
                <node concept="2OqwBi" id="1SFgcLT$AUp" role="37vLTJ">
                  <node concept="37vLTw" id="1SFgcLT$AMU" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$A_8" resolve="midWord" />
                  </node>
                  <node concept="3TrEf2" id="6EV$eJxqCpG" role="2OqNvi">
                    <ref role="3Tt5mk" to="2ox9:6EV$eJxpsGX" resolve="exp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6EV$eJxrfkF" role="3clFbw">
            <node concept="2OqwBi" id="6EV$eJxrfkH" role="3fr31v">
              <node concept="37vLTw" id="6EV$eJxrfkI" role="2Oq$k0">
                <ref role="3cqZAo" node="1SFgcLT$zze" resolve="mid" />
              </node>
              <node concept="17RlXB" id="6EV$eJxrfkJ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1SFgcLT$Bu0" role="3cqZAp">
          <node concept="2OqwBi" id="1SFgcLT$B$B" role="3clFbG">
            <node concept="2Sf5sV" id="1SFgcLT$BtY" role="2Oq$k0" />
            <node concept="HtI8k" id="1SFgcLT$BJ7" role="2OqNvi">
              <node concept="37vLTw" id="1SFgcLT$BK0" role="HtI8F">
                <ref role="3cqZAo" node="1SFgcLT$A_8" resolve="midWord" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y69gu1J$GN" role="3cqZAp">
          <node concept="37vLTI" id="7Y69gu1J$QH" role="3clFbG">
            <node concept="37vLTw" id="7Y69gu1J_qY" role="37vLTx">
              <ref role="3cqZAo" node="1SFgcLT$A_8" resolve="midWord" />
            </node>
            <node concept="37vLTw" id="7Y69gu1J$GL" role="37vLTJ">
              <ref role="3cqZAo" node="7Y69gu1J$qn" resolve="selected_node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6EV$eJxqKJF" role="3cqZAp" />
        <node concept="3cpWs8" id="1SFgcLT$CJx" role="3cqZAp">
          <node concept="3cpWsn" id="1SFgcLT$CJy" role="3cpWs9">
            <property role="TrG5h" value="after" />
            <node concept="17QB3L" id="7Y69gu1JBuT" role="1tU5fm" />
            <node concept="2OqwBi" id="1SFgcLT$CTE" role="33vP2m">
              <node concept="37vLTw" id="1SFgcLT$CRv" role="2Oq$k0">
                <ref role="3cqZAo" node="1SFgcLT$xx8" resolve="text" />
              </node>
              <node concept="liA8E" id="1SFgcLT$CZp" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="2OqwBi" id="1SFgcLT$D0U" role="37wK5m">
                  <node concept="37vLTw" id="1SFgcLT$CZR" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$bHF" resolve="label" />
                  </node>
                  <node concept="liA8E" id="1SFgcLT$D43" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd()" resolve="getSelectionEnd" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1SFgcLT$D9n" role="37wK5m">
                  <node concept="37vLTw" id="1SFgcLT$D6f" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$xx8" resolve="text" />
                  </node>
                  <node concept="liA8E" id="1SFgcLT$Dl1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y69gu1JyL3" role="3cqZAp">
          <node concept="3clFbS" id="7Y69gu1JyL5" role="3clFbx">
            <node concept="3cpWs8" id="1SFgcLT$E6e" role="3cqZAp">
              <node concept="3cpWsn" id="1SFgcLT$E6h" role="3cpWs9">
                <property role="TrG5h" value="afterWord" />
                <node concept="3Tqbb2" id="1SFgcLT$E6c" role="1tU5fm">
                  <ref role="ehGHo" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
                </node>
                <node concept="2ShNRf" id="1SFgcLT$EeL" role="33vP2m">
                  <node concept="3zrR0B" id="1SFgcLT$EeF" role="2ShVmc">
                    <node concept="3Tqbb2" id="1SFgcLT$EeG" role="3zrR0E">
                      <ref role="ehGHo" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1SFgcLT$EmX" role="3cqZAp">
              <node concept="37vLTI" id="1SFgcLT$ESX" role="3clFbG">
                <node concept="37vLTw" id="1SFgcLT$EZj" role="37vLTx">
                  <ref role="3cqZAo" node="1SFgcLT$CJy" resolve="after" />
                </node>
                <node concept="2OqwBi" id="1SFgcLT$EBf" role="37vLTJ">
                  <node concept="37vLTw" id="1SFgcLT$Evn" role="2Oq$k0">
                    <ref role="3cqZAo" node="1SFgcLT$E6h" resolve="afterWord" />
                  </node>
                  <node concept="3TrcHB" id="6EV$eJxqqu7" role="2OqNvi">
                    <ref role="3TsBF5" to="2ox9:6EV$eJxpsH2" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y69gu1J_Hi" role="3cqZAp">
              <node concept="2OqwBi" id="7Y69gu1JA60" role="3clFbG">
                <node concept="37vLTw" id="7Y69gu1J_Hg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y69gu1J$qn" resolve="selected_node" />
                </node>
                <node concept="HtI8k" id="7Y69gu1JAsk" role="2OqNvi">
                  <node concept="37vLTw" id="7Y69gu1JANy" role="HtI8F">
                    <ref role="3cqZAo" node="1SFgcLT$E6h" resolve="afterWord" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7Y69gu1JzrJ" role="3clFbw">
            <node concept="37vLTw" id="7Y69gu1Jz0o" role="2Oq$k0">
              <ref role="3cqZAo" node="1SFgcLT$CJy" resolve="after" />
            </node>
            <node concept="17RvpY" id="7Y69gu1JzSg" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1LSMf" role="3cqZAp" />
        <node concept="3clFbJ" id="7Y69gu1LTyp" role="3cqZAp">
          <node concept="3clFbS" id="7Y69gu1LTyr" role="3clFbx">
            <node concept="3clFbF" id="7Y69gu1LUTH" role="3cqZAp">
              <node concept="2OqwBi" id="7Y69gu1LV2F" role="3clFbG">
                <node concept="2Sf5sV" id="7Y69gu1LUTF" role="2Oq$k0" />
                <node concept="3YRAZt" id="7Y69gu1LVmi" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7Y69gu1LUhA" role="3clFbw">
            <node concept="37vLTw" id="7Y69gu1LTME" role="2Oq$k0">
              <ref role="3cqZAo" node="1SFgcLT$xGW" resolve="before" />
            </node>
            <node concept="17RlXB" id="7Y69gu1LUTc" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1LT2h" role="3cqZAp" />
        <node concept="3clFbF" id="1SFgcLT$Jxu" role="3cqZAp">
          <node concept="2OqwBi" id="1SFgcLT$JDo" role="3clFbG">
            <node concept="1XNTG" id="1SFgcLT$Jxs" role="2Oq$k0" />
            <node concept="liA8E" id="1SFgcLT$JKj" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.select(org.jetbrains.mps.openapi.model.SNode)" resolve="select" />
              <node concept="37vLTw" id="7Y69gu1JBso" role="37wK5m">
                <ref role="3cqZAo" node="7Y69gu1J$qn" resolve="selected_node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7Y69gu1JT9k" role="2ZfVeh">
      <node concept="3clFbS" id="7Y69gu1JT9l" role="2VODD2">
        <node concept="3cpWs8" id="7Y69gu1JTkE" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1JTkF" role="3cpWs9">
            <property role="TrG5h" value="contextCell" />
            <node concept="3uibUv" id="7Y69gu1JTkG" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="7Y69gu1JTkH" role="33vP2m">
              <node concept="1XNTG" id="7Y69gu1JTkI" role="2Oq$k0" />
              <node concept="liA8E" id="7Y69gu1JTkJ" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorContext.getContextCell()" resolve="getContextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y69gu1JTkK" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1JTkL" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="3uibUv" id="7Y69gu1JTkM" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
            </node>
            <node concept="10QFUN" id="7Y69gu1JTkN" role="33vP2m">
              <node concept="3uibUv" id="7Y69gu1JTkO" role="10QFUM">
                <ref role="3uigEE" to="f4zo:~EditorCell_Label" resolve="EditorCell_Label" />
              </node>
              <node concept="37vLTw" id="7Y69gu1JTkP" role="10QFUP">
                <ref role="3cqZAo" node="7Y69gu1JTkF" resolve="contextCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y69gu1K3kS" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1K3kV" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="7Y69gu1K3kQ" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y69gu1K4Qj" role="33vP2m">
              <node concept="2OqwBi" id="7Y69gu1K49s" role="2Oq$k0">
                <node concept="37vLTw" id="7Y69gu1K3TY" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y69gu1JTkL" resolve="label" />
                </node>
                <node concept="liA8E" id="7Y69gu1K4q3" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell_Label.getText()" resolve="getText" />
                </node>
              </node>
              <node concept="liA8E" id="7Y69gu1K5gy" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y69gu1K9M$" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1K9MB" role="3cpWs9">
            <property role="TrG5h" value="start" />
            <node concept="10Oyi0" id="7Y69gu1K9My" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y69gu1Kan3" role="33vP2m">
              <node concept="37vLTw" id="7Y69gu1Ka6Y" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y69gu1JTkL" resolve="label" />
              </node>
              <node concept="liA8E" id="7Y69gu1KaCh" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionStart()" resolve="getSelectionStart" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y69gu1KaOt" role="3cqZAp">
          <node concept="3cpWsn" id="7Y69gu1KaOw" role="3cpWs9">
            <property role="TrG5h" value="end" />
            <node concept="10Oyi0" id="7Y69gu1KaOr" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y69gu1KbpS" role="33vP2m">
              <node concept="37vLTw" id="7Y69gu1Kb9x" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y69gu1JTkL" resolve="label" />
              </node>
              <node concept="liA8E" id="7Y69gu1KbFo" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell_Label.getSelectionEnd()" resolve="getSelectionEnd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y69gu1KhM2" role="3cqZAp" />
        <node concept="3clFbJ" id="7Y69gu1Ks5r" role="3cqZAp">
          <node concept="3clFbS" id="7Y69gu1Ks5t" role="3clFbx">
            <node concept="3SKdUt" id="7Y69gu1K$zB" role="3cqZAp">
              <node concept="1PaTwC" id="6$qrEWWKwt6" role="1aUNEU">
                <node concept="3oM_SD" id="6$qrEWWKwt7" role="1PaTwD">
                  <property role="3oM_SC" value="selection," />
                </node>
                <node concept="3oM_SD" id="6$qrEWWKwt8" role="1PaTwD">
                  <property role="3oM_SC" value="so" />
                </node>
                <node concept="3oM_SD" id="6$qrEWWKwt9" role="1PaTwD">
                  <property role="3oM_SC" value="split" />
                </node>
                <node concept="3oM_SD" id="6$qrEWWKwta" role="1PaTwD">
                  <property role="3oM_SC" value="is" />
                </node>
                <node concept="3oM_SD" id="6$qrEWWKwtb" role="1PaTwD">
                  <property role="3oM_SC" value="possible" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7Y69gu1Ktve" role="3cqZAp">
              <node concept="3clFbT" id="7Y69gu1KtD3" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7Y69gu1NuRW" role="3clFbw">
            <node concept="3y3z36" id="7Y69gu1KtbK" role="3uHU7B">
              <node concept="37vLTw" id="7Y69gu1KsfS" role="3uHU7B">
                <ref role="3cqZAo" node="7Y69gu1K9MB" resolve="start" />
              </node>
              <node concept="37vLTw" id="7Y69gu1Ktlw" role="3uHU7w">
                <ref role="3cqZAo" node="7Y69gu1KaOw" resolve="end" />
              </node>
            </node>
            <node concept="3y3z36" id="7Y69gu1MHOn" role="3uHU7w">
              <node concept="37vLTw" id="7Y69gu1MI4C" role="3uHU7w">
                <ref role="3cqZAo" node="7Y69gu1K3kV" resolve="size" />
              </node>
              <node concept="3cpWsd" id="7Y69gu1MGCd" role="3uHU7B">
                <node concept="37vLTw" id="7Y69gu1MFGf" role="3uHU7B">
                  <ref role="3cqZAo" node="7Y69gu1KaOw" resolve="end" />
                </node>
                <node concept="37vLTw" id="7Y69gu1MGM3" role="3uHU7w">
                  <ref role="3cqZAo" node="7Y69gu1K9MB" resolve="start" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7Y69gu1KtMZ" role="9aQIa">
            <node concept="3clFbS" id="7Y69gu1KtN0" role="9aQI4">
              <node concept="3SKdUt" id="7Y69gu1K$T9" role="3cqZAp">
                <node concept="1PaTwC" id="6$qrEWWKwtc" role="1aUNEU">
                  <node concept="3oM_SD" id="6$qrEWWKwtd" role="1PaTwD">
                    <property role="3oM_SC" value="exclude" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwte" role="1PaTwD">
                    <property role="3oM_SC" value="split" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtf" role="1PaTwD">
                    <property role="3oM_SC" value="at" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtg" role="1PaTwD">
                    <property role="3oM_SC" value="both" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwth" role="1PaTwD">
                    <property role="3oM_SC" value="ends" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwti" role="1PaTwD">
                    <property role="3oM_SC" value="when" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtj" role="1PaTwD">
                    <property role="3oM_SC" value="there" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtk" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtl" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="6$qrEWWKwtm" role="1PaTwD">
                    <property role="3oM_SC" value="selection" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7Y69gu1KtWS" role="3cqZAp">
                <node concept="1Wc70l" id="7Y69gu1KxRm" role="3cqZAk">
                  <node concept="3y3z36" id="7Y69gu1KwOn" role="3uHU7B">
                    <node concept="37vLTw" id="7Y69gu1Ku6Z" role="3uHU7B">
                      <ref role="3cqZAo" node="7Y69gu1K9MB" resolve="start" />
                    </node>
                    <node concept="3cmrfG" id="7Y69gu1KwYx" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3y3z36" id="7Y69gu1KzUV" role="3uHU7w">
                    <node concept="37vLTw" id="7Y69gu1Ky1O" role="3uHU7B">
                      <ref role="3cqZAo" node="7Y69gu1K9MB" resolve="start" />
                    </node>
                    <node concept="37vLTw" id="7Y69gu1K$5o" role="3uHU7w">
                      <ref role="3cqZAo" node="7Y69gu1K3kV" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4AafYjl1TNb">
    <property role="TrG5h" value="Else" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxrieV" resolve="TemplateIfStatement" />
    <node concept="2S6ZIM" id="4AafYjl1TNc" role="2ZfVej">
      <node concept="3clFbS" id="4AafYjl1TNd" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl1U6q" role="3cqZAp">
          <node concept="Xl_RD" id="4AafYjl1U6p" role="3clFbG">
            <property role="Xl_RC" value="Template: Add Else" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4AafYjl1TNe" role="2ZfgGD">
      <node concept="3clFbS" id="4AafYjl1TNf" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl1YD5" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl1ZyE" role="3clFbG">
            <node concept="2OqwBi" id="4AafYjl1YLD" role="2Oq$k0">
              <node concept="2Sf5sV" id="4AafYjl1YD4" role="2Oq$k0" />
              <node concept="3TrEf2" id="4AafYjl1Zf9" role="2OqNvi">
                <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
              </node>
            </node>
            <node concept="zfrQC" id="4AafYjl202_" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4AafYjl1VrC" role="2ZfVeh">
      <node concept="3clFbS" id="4AafYjl1VrD" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl1V$P" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl1WNQ" role="3clFbG">
            <node concept="2OqwBi" id="4AafYjl1VMW" role="2Oq$k0">
              <node concept="2Sf5sV" id="4AafYjl1V$O" role="2Oq$k0" />
              <node concept="3TrEf2" id="4AafYjl1Wnu" role="2OqNvi">
                <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
              </node>
            </node>
            <node concept="3w_OXm" id="4AafYjl1YrJ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4AafYjl23u2">
    <property role="TrG5h" value="NoElse" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxrieV" resolve="TemplateIfStatement" />
    <node concept="2S6ZIM" id="4AafYjl23u3" role="2ZfVej">
      <node concept="3clFbS" id="4AafYjl23u4" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl23Kr" role="3cqZAp">
          <node concept="Xl_RD" id="4AafYjl23Kq" role="3clFbG">
            <property role="Xl_RC" value="Template: Remove Else" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4AafYjl23u5" role="2ZfgGD">
      <node concept="3clFbS" id="4AafYjl23u6" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl274w" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl27Xf" role="3clFbG">
            <node concept="2OqwBi" id="4AafYjl27d4" role="2Oq$k0">
              <node concept="2Sf5sV" id="4AafYjl274v" role="2Oq$k0" />
              <node concept="3TrEf2" id="4AafYjl27E$" role="2OqNvi">
                <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
              </node>
            </node>
            <node concept="3YRAZt" id="4AafYjl28BE" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="4AafYjl24K1" role="2ZfVeh">
      <node concept="3clFbS" id="4AafYjl24K2" role="2VODD2">
        <node concept="3clFbF" id="4AafYjl24So" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl266z" role="3clFbG">
            <node concept="2OqwBi" id="4AafYjl256v" role="2Oq$k0">
              <node concept="2Sf5sV" id="4AafYjl24Sn" role="2Oq$k0" />
              <node concept="3TrEf2" id="4AafYjl25F1" role="2OqNvi">
                <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
              </node>
            </node>
            <node concept="3x8VRR" id="4AafYjl26Ra" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4AafYjm62VD">
    <property role="TrG5h" value="CopyText" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="2S6ZIM" id="4AafYjm62VE" role="2ZfVej">
      <node concept="3clFbS" id="4AafYjm62VF" role="2VODD2">
        <node concept="3clFbF" id="4AafYjm63gM" role="3cqZAp">
          <node concept="Xl_RD" id="4AafYjm63gL" role="3clFbG">
            <property role="Xl_RC" value="Template: Paste Text" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4AafYjm62VG" role="2ZfgGD">
      <node concept="3clFbS" id="4AafYjm62VH" role="2VODD2">
        <node concept="3clFbF" id="4AafYjm64AC" role="3cqZAp">
          <node concept="2YIFZM" id="4AafYjm64C8" role="3clFbG">
            <ref role="37wK5l" to="81cq:3bf11hdO7A2" resolve="pastePlainText" />
            <ref role="1Pybhc" to="81cq:3bf11hdNzr0" resolve="PlaintextPaster" />
            <node concept="2Sf5sV" id="4AafYjm64Du" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7fu6WF7ESkY">
    <property role="TrG5h" value="TemplateNewline" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
    <node concept="2S6ZIM" id="7fu6WF7ESkZ" role="2ZfVej">
      <node concept="3clFbS" id="7fu6WF7ESl0" role="2VODD2">
        <node concept="3clFbJ" id="7fu6WF7ET$6" role="3cqZAp">
          <node concept="3clFbS" id="7fu6WF7ET$8" role="3clFbx">
            <node concept="3cpWs6" id="7fu6WF7EUG4" role="3cqZAp">
              <node concept="Xl_RD" id="7fu6WF7EURr" role="3cqZAk">
                <property role="Xl_RC" value="Template: With Newline" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7fu6WF7ETVX" role="3clFbw">
            <node concept="2Sf5sV" id="7fu6WF7ETH7" role="2Oq$k0" />
            <node concept="3TrcHB" id="7fu6WF7EUwU" role="2OqNvi">
              <ref role="3TsBF5" to="2ox9:7fu6WF7BN5U" resolve="withoutNewline" />
            </node>
          </node>
          <node concept="9aQIb" id="7fu6WF7EVdV" role="9aQIa">
            <node concept="3clFbS" id="7fu6WF7EVdW" role="9aQI4">
              <node concept="3cpWs6" id="7fu6WF7EWls" role="3cqZAp">
                <node concept="Xl_RD" id="7fu6WF7ESue" role="3cqZAk">
                  <property role="Xl_RC" value="Template: No Newline" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7fu6WF7ESl1" role="2ZfgGD">
      <node concept="3clFbS" id="7fu6WF7ESl2" role="2VODD2">
        <node concept="3clFbF" id="7fu6WF7EWFS" role="3cqZAp">
          <node concept="37vLTI" id="7fu6WF7EXMV" role="3clFbG">
            <node concept="3fqX7Q" id="7fu6WF7EYrm" role="37vLTx">
              <node concept="2OqwBi" id="7fu6WF7EYro" role="3fr31v">
                <node concept="2Sf5sV" id="7fu6WF7EYrp" role="2Oq$k0" />
                <node concept="3TrcHB" id="7fu6WF7EYrq" role="2OqNvi">
                  <ref role="3TsBF5" to="2ox9:7fu6WF7BN5U" resolve="withoutNewline" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7fu6WF7EWOs" role="37vLTJ">
              <node concept="2Sf5sV" id="7fu6WF7EWFR" role="2Oq$k0" />
              <node concept="3TrcHB" id="7fu6WF7EXgX" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7fu6WF7BN5U" resolve="withoutNewline" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7mU70b2afku">
    <property role="TrG5h" value="AddStart" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="2S6ZIM" id="7mU70b2afkv" role="2ZfVej">
      <node concept="3clFbS" id="7mU70b2afkw" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2aftH" role="3cqZAp">
          <node concept="Xl_RD" id="7mU70b2aftG" role="3clFbG">
            <property role="Xl_RC" value="Templates: Add start string to for" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7mU70b2afkx" role="2ZfgGD">
      <node concept="3clFbS" id="7mU70b2afky" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2qKxG" role="3cqZAp">
          <node concept="37vLTI" id="7mU70b2qLKf" role="3clFbG">
            <node concept="Xl_RD" id="7mU70b2qLK$" role="37vLTx">
              <property role="Xl_RC" value="start" />
            </node>
            <node concept="2OqwBi" id="7mU70b2qKFW" role="37vLTJ">
              <node concept="2Sf5sV" id="7mU70b2qKx_" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2qLh9" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2qj7j" resolve="start" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7mU70b2ahyj" role="2ZfVeh">
      <node concept="3clFbS" id="7mU70b2ahyk" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2ahDM" role="3cqZAp">
          <node concept="2OqwBi" id="7mU70b2aj1e" role="3clFbG">
            <node concept="2OqwBi" id="7mU70b2ahTT" role="2Oq$k0">
              <node concept="2Sf5sV" id="7mU70b2ahDL" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2qJ0e" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2qj7j" resolve="start" />
              </node>
            </node>
            <node concept="17RlXB" id="7mU70b2qK6_" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7mU70b2aXMv">
    <property role="TrG5h" value="AddSeparator" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="2S6ZIM" id="7mU70b2aXMw" role="2ZfVej">
      <node concept="3clFbS" id="7mU70b2aXMx" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2aXMy" role="3cqZAp">
          <node concept="Xl_RD" id="7mU70b2aXMz" role="3clFbG">
            <property role="Xl_RC" value="Template: Add Separator String to for" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7mU70b2aXM$" role="2ZfgGD">
      <node concept="3clFbS" id="7mU70b2aXM_" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2gYk4" role="3cqZAp">
          <node concept="37vLTI" id="7mU70b2gZy$" role="3clFbG">
            <node concept="Xl_RD" id="7mU70b2gZyT" role="37vLTx">
              <property role="Xl_RC" value="[]" />
            </node>
            <node concept="2OqwBi" id="7mU70b2gYuk" role="37vLTJ">
              <node concept="2Sf5sV" id="7mU70b2gYk3" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2gZ3u" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2grf1" resolve="separator" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7mU70b2aXMO" role="2ZfVeh">
      <node concept="3clFbS" id="7mU70b2aXMP" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2aXMQ" role="3cqZAp">
          <node concept="2OqwBi" id="7mU70b2aXMR" role="3clFbG">
            <node concept="2OqwBi" id="7mU70b2aXMS" role="2Oq$k0">
              <node concept="2Sf5sV" id="7mU70b2aXMT" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2gVKY" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2grf1" resolve="separator" />
              </node>
            </node>
            <node concept="17RlXB" id="7mU70b2gY9I" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="7mU70b2aYof">
    <property role="TrG5h" value="AddEnd" />
    <ref role="2ZfgGC" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="2S6ZIM" id="7mU70b2aYog" role="2ZfVej">
      <node concept="3clFbS" id="7mU70b2aYoh" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2aYoi" role="3cqZAp">
          <node concept="Xl_RD" id="7mU70b2aYoj" role="3clFbG">
            <property role="Xl_RC" value="Templates: Add End String To For" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7mU70b2aYok" role="2ZfgGD">
      <node concept="3clFbS" id="7mU70b2aYol" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2qGzU" role="3cqZAp">
          <node concept="37vLTI" id="7mU70b2qHBy" role="3clFbG">
            <node concept="Xl_RD" id="7mU70b2qHBR" role="37vLTx">
              <property role="Xl_RC" value="&lt;end&gt;" />
            </node>
            <node concept="2OqwBi" id="7mU70b2qGIa" role="37vLTJ">
              <node concept="2Sf5sV" id="7mU70b2qGzT" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2qH4i" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2qj7m" resolve="end" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="7mU70b2aYo$" role="2ZfVeh">
      <node concept="3clFbS" id="7mU70b2aYo_" role="2VODD2">
        <node concept="3clFbF" id="7mU70b2aYoA" role="3cqZAp">
          <node concept="2OqwBi" id="7mU70b2aYoB" role="3clFbG">
            <node concept="2OqwBi" id="7mU70b2aYoC" role="2Oq$k0">
              <node concept="2Sf5sV" id="7mU70b2aYoD" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2qGes" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2qj7m" resolve="end" />
              </node>
            </node>
            <node concept="17RlXB" id="7mU70b2qIbI" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="22chdPGubVo">
    <property role="TrG5h" value="Indent" />
    <ref role="2ZfgGC" to="2ox9:22chdPGubkZ" resolve="Indentable" />
    <node concept="2S6ZIM" id="22chdPGubVp" role="2ZfVej">
      <node concept="3clFbS" id="22chdPGubVq" role="2VODD2">
        <node concept="3clFbF" id="22chdPGucan" role="3cqZAp">
          <node concept="Xl_RD" id="22chdPGucam" role="3clFbG">
            <property role="Xl_RC" value="Template: Indent Statement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="22chdPGubVr" role="2ZfgGD">
      <node concept="3clFbS" id="22chdPGubVs" role="2VODD2">
        <node concept="3clFbF" id="22chdPGudYJ" role="3cqZAp">
          <node concept="37vLTI" id="22chdPGueYW" role="3clFbG">
            <node concept="Xl_RD" id="22chdPGueZh" role="37vLTx">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="22chdPGue6n" role="37vLTJ">
              <node concept="2Sf5sV" id="22chdPGudYI" role="2Oq$k0" />
              <node concept="3TrcHB" id="22chdPGueuM" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:22chdPGubpe" resolve="indent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="5jCsv" id="2LAMgc0$IBI">
    <property role="TrG5h" value="FixTemplateMethod" />
    <ref role="1hH6sV" to="2ox9:2LAMgc0wQbd" resolve="TemplateReturnStatement" />
    <node concept="3Tm1VV" id="2LAMgc0$IBJ" role="1B3o_S" />
    <node concept="q3mfD" id="2LAMgc0$Jb3" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <ref role="2VtyIY" to="6bz1:6yt8uwrpTKe" resolve="isApplicable" />
      <node concept="3Tm1VV" id="2LAMgc0$Jb5" role="1B3o_S" />
      <node concept="3clFbS" id="2LAMgc0$Jb7" role="3clF47">
        <node concept="3clFbF" id="2LAMgc0$JiM" role="3cqZAp">
          <node concept="2OqwBi" id="2LAMgc0$LHK" role="3clFbG">
            <node concept="2OqwBi" id="2LAMgc0$Jym" role="2Oq$k0">
              <node concept="37vLTw" id="2LAMgc0$JiL" role="2Oq$k0">
                <ref role="3cqZAo" node="2LAMgc0$Jb9" resolve="node" />
              </node>
              <node concept="2TvwIu" id="2LAMgc0$KyK" role="2OqNvi" />
            </node>
            <node concept="1v1jN8" id="2LAMgc0$NUM" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$Jb9" role="3clF46">
        <property role="TrG5h" value="node" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKS" resolve="node" />
        <node concept="q3mfm" id="2LAMgc0$Jb8" role="1tU5fm">
          <ref role="q3mfh" to="6bz1:4d05DgIzdW" />
          <ref role="1QQUv3" node="2LAMgc0$Jb3" resolve="isApplicable" />
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$Jbb" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <ref role="ffrpq" to="6bz1:6Y8LBKcqR$j" resolve="editorContext" />
        <node concept="3uibUv" id="2LAMgc0$Jba" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="10P_77" id="2LAMgc0$Jbc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2LAMgc0$IBL" role="jymVt" />
    <node concept="3tTeZs" id="2LAMgc0$IBM" role="jymVt">
      <property role="3tTeZt" value="&lt;not applicable in children&gt;" />
      <ref role="3tTeZr" to="6bz1:6jDmPiUSJ$K" resolve="isApplicableInChild" />
    </node>
    <node concept="2tJIrI" id="2LAMgc0$IBN" role="jymVt" />
    <node concept="3tTeZs" id="2LAMgc0$IBO" role="jymVt">
      <property role="3tTeZt" value="&lt;no parameter&gt;" />
      <ref role="3tTeZr" to="6bz1:2lJOBsqvJqh" resolve="Parameter" />
    </node>
    <node concept="2tJIrI" id="2LAMgc0$IBP" role="jymVt" />
    <node concept="q3mfD" id="2LAMgc0$IBQ" role="jymVt">
      <property role="TrG5h" value="description" />
      <ref role="2VtyIY" to="6bz1:6yt8uwrpTIM" resolve="description" />
      <node concept="3Tm1VV" id="2LAMgc0$IBS" role="1B3o_S" />
      <node concept="3clFbS" id="2LAMgc0$IBU" role="3clF47">
        <node concept="3clFbF" id="2LAMgc0$O0p" role="3cqZAp">
          <node concept="Xl_RD" id="2LAMgc0$O0o" role="3clFbG">
            <property role="Xl_RC" value="Templates: Fix Incorrect Template Method" />
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$IBW" role="3clF46">
        <property role="TrG5h" value="node" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKC" resolve="node" />
        <node concept="q3mfm" id="2LAMgc0$IBV" role="1tU5fm">
          <ref role="q3mfh" to="6bz1:4d05DgIyMi" />
          <ref role="1QQUv3" node="2LAMgc0$IBQ" resolve="description" />
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$IBY" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTKG" resolve="editorContext" />
        <node concept="3uibUv" id="2LAMgc0$IBX" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="17QB3L" id="2LAMgc0$IC1" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2LAMgc0$IC2" role="jymVt" />
    <node concept="q3mfD" id="2LAMgc0$IC3" role="jymVt">
      <property role="TrG5h" value="execute" />
      <ref role="2VtyIY" to="6bz1:6yt8uwrpTsz" resolve="execute" />
      <node concept="3Tm1VV" id="2LAMgc0$IC5" role="1B3o_S" />
      <node concept="3clFbS" id="2LAMgc0$IC7" role="3clF47">
        <node concept="3clFbF" id="2LAMgc0$Xnw" role="3cqZAp">
          <node concept="2OqwBi" id="2LAMgc0$Zf2" role="3clFbG">
            <node concept="2OqwBi" id="2LAMgc0$X$n" role="2Oq$k0">
              <node concept="37vLTw" id="2LAMgc0$Xnv" role="2Oq$k0">
                <ref role="3cqZAo" node="2LAMgc0$IC9" resolve="node" />
              </node>
              <node concept="2Xjw5R" id="2LAMgc0$YzD" role="2OqNvi">
                <node concept="1xMEDy" id="2LAMgc0$YzF" role="1xVPHs">
                  <node concept="chp4Y" id="2LAMgc0$YCd" role="ri$Ld">
                    <ref role="cht4Q" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="2LAMgc0_3AM" role="2OqNvi">
              <ref role="37wK5l" to="81cq:2LAMgc0$PB5" resolve="initialize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$IC9" role="3clF46">
        <property role="TrG5h" value="node" />
        <ref role="ffrpq" to="6bz1:6yt8uwrpTIs" resolve="node" />
        <node concept="q3mfm" id="2LAMgc0$IC8" role="1tU5fm">
          <ref role="q3mfh" to="6bz1:4d05DgIiRs" />
          <ref role="1QQUv3" node="2LAMgc0$IC3" resolve="execute" />
        </node>
      </node>
      <node concept="ffn8J" id="2LAMgc0$ICb" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <ref role="ffrpq" to="6bz1:4d05DgIzcr" resolve="editorContext" />
        <node concept="3uibUv" id="2LAMgc0$ICa" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="2LAMgc0$ICe" role="3clF45" />
    </node>
    <node concept="Gdzz8" id="2LAMgc0$IHz" role="GdzyG" />
  </node>
</model>

