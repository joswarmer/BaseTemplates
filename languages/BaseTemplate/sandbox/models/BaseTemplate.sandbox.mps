<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a620b2e6-b8ca-45c5-bff0-ce088a94256c(BaseTemplate.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="db391f02-128c-4f99-939a-b50794314dff" name="BaseTemplate" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="db391f02-128c-4f99-939a-b50794314dff" name="BaseTemplate">
      <concept id="7690900131439418957" name="BaseTemplate.structure.TemplateFor" flags="ng" index="2bM0UA">
        <child id="1154032183016" name="body" index="2LFqv$" />
        <child id="1144226360166" name="iterable" index="1DdaDG" />
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="7690900131439104953" name="BaseTemplate.structure.TemplateLineList" flags="ng" index="2bPkdi">
        <child id="7690900131439104954" name="lines" index="2bPkdh" />
      </concept>
      <concept id="7690900131438994363" name="BaseTemplate.structure.TemplateIf" flags="ng" index="2bPFdg">
        <child id="7690900131438994367" name="condition" index="2bPFdk" />
        <child id="7690900131438996492" name="whenTrue" index="2bPFNB" />
        <child id="5299118163613137926" name="whenFalse" index="2tsgfy" />
      </concept>
      <concept id="7690900131438512954" name="BaseTemplate.structure.TemplateExpression" flags="ng" index="2bR_Jh">
        <child id="7690900131438512957" name="exp" index="2bR_Jm" />
      </concept>
      <concept id="7690900131438512959" name="BaseTemplate.structure.TemplateStringWord" flags="ng" index="2bR_Jk">
        <property id="7690900131438512962" name="text" index="2bR_ID" />
      </concept>
      <concept id="7690900131438512950" name="BaseTemplate.structure.TemplateTextLine" flags="ng" index="2bR_Jt">
        <child id="7690900131438513017" name="words" index="2bR_Ii" />
      </concept>
      <concept id="133632534785162905" name="BaseTemplate.structure.TemplateSwitchLine" flags="ng" index="n_NMc">
        <child id="133632534785162907" name="cases" index="n_NMe" />
        <child id="133632534785162906" name="node" index="n_NMf" />
      </concept>
      <concept id="133632534784634416" name="BaseTemplate.structure.TemplateCase" flags="ng" index="nBMK_">
        <child id="133632534784782327" name="lines" index="n$IRy" />
        <child id="133632534784635229" name="concept" index="nBNd8" />
      </concept>
      <concept id="5046878592952531596" name="BaseTemplate.structure.Template" flags="ng" index="1VvQvr">
        <child id="5046878592952531601" name="lines" index="1VvQv6" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6EV$eJxptWC">
    <property role="TrG5h" value="TemplateExample" />
    <node concept="2tJIrI" id="6EV$eJxptXA" role="jymVt" />
    <node concept="2YIFZL" id="7twdN4ox$hx" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="7twdN4ox$hy" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="7twdN4ox$hz" role="1tU5fm">
          <node concept="17QB3L" id="7twdN4ox$h$" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="7twdN4ox$h_" role="3clF45" />
      <node concept="3Tm1VV" id="7twdN4ox$hA" role="1B3o_S" />
      <node concept="3clFbS" id="7twdN4ox$hB" role="3clF47">
        <node concept="3cpWs8" id="4oa7lsYhykv" role="3cqZAp">
          <node concept="3cpWsn" id="4oa7lsYhykw" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="3uibUv" id="4oa7lsYhykt" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="17QB3L" id="4oa7lsYhymf" role="11_B2D" />
            </node>
            <node concept="2ShNRf" id="4oa7lsYhyoB" role="33vP2m">
              <node concept="1pGfFk" id="4oa7lsYhyGx" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="17QB3L" id="4oa7lsYhz1g" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oa7lsYhDjg" role="3cqZAp">
          <node concept="2OqwBi" id="4oa7lsYhDjh" role="3clFbG">
            <node concept="37vLTw" id="4oa7lsYhDji" role="2Oq$k0">
              <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
            </node>
            <node concept="liA8E" id="4oa7lsYhDjj" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="4oa7lsYhDjk" role="37wK5m">
                <property role="Xl_RC" value="aap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oa7lsYhz8O" role="3cqZAp">
          <node concept="2OqwBi" id="4oa7lsYhziJ" role="3clFbG">
            <node concept="37vLTw" id="4oa7lsYhz8M" role="2Oq$k0">
              <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
            </node>
            <node concept="liA8E" id="4oa7lsYh$iQ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="4oa7lsYh$n6" role="37wK5m">
                <property role="Xl_RC" value="__noot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oa7lsYhDAJ" role="3cqZAp">
          <node concept="2OqwBi" id="4oa7lsYhDAK" role="3clFbG">
            <node concept="37vLTw" id="4oa7lsYhDAL" role="2Oq$k0">
              <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
            </node>
            <node concept="liA8E" id="4oa7lsYhDAM" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="4oa7lsYhDAN" role="37wK5m">
                <property role="Xl_RC" value="mies" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oa7lsYhDMO" role="3cqZAp">
          <node concept="2OqwBi" id="4oa7lsYhDMP" role="3clFbG">
            <node concept="37vLTw" id="4oa7lsYhDMQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
            </node>
            <node concept="liA8E" id="4oa7lsYhDMR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="4oa7lsYhDMS" role="37wK5m">
                <property role="Xl_RC" value="aap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7qKxkm9Z9m" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4oa7lsYh$yV" role="8Wnug">
            <node concept="2OqwBi" id="4oa7lsYh$H8" role="3clFbG">
              <node concept="10M0yZ" id="4oa7lsYh$_C" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="liA8E" id="4oa7lsYh$Qj" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                <node concept="1rXfSq" id="4oa7lsYh_6T" role="37wK5m">
                  <ref role="37wK5l" node="4oa7lsYh$R0" resolve="templateFunction" />
                  <node concept="37vLTw" id="4oa7lsYh_ij" role="37wK5m">
                    <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qKxkm9WyQ" role="3cqZAp">
          <node concept="3cpWsn" id="7qKxkm9WyT" role="3cpWs9">
            <property role="TrG5h" value="generator" />
            <node concept="3uibUv" id="7qKxkm9WMr" role="1tU5fm">
              <ref role="3uigEE" node="7qKxkm9AVK" resolve="BaseTemplateGenerator" />
            </node>
            <node concept="2ShNRf" id="7qKxkm9WS5" role="33vP2m">
              <node concept="HV5vD" id="7qKxkm9XeK" role="2ShVmc">
                <ref role="HV5vE" node="7qKxkm9AVK" resolve="BaseTemplateGenerator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4AafYjl1uiY" role="3cqZAp">
          <node concept="3cpWsn" id="4AafYjl1uj1" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="4AafYjl1uiW" role="1tU5fm" />
            <node concept="1rXfSq" id="4AafYjl1uzq" role="33vP2m">
              <ref role="37wK5l" node="4oa7lsYh$R0" resolve="templateFunction" />
              <node concept="37vLTw" id="4AafYjl1uzr" role="37wK5m">
                <ref role="3cqZAo" node="4oa7lsYhykw" resolve="names" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7qKxkm9Xw2" role="3cqZAp">
          <node concept="2OqwBi" id="7qKxkm9XJ$" role="3clFbG">
            <node concept="37vLTw" id="7qKxkm9Xw0" role="2Oq$k0">
              <ref role="3cqZAo" node="7qKxkm9WyT" resolve="generator" />
            </node>
            <node concept="liA8E" id="7qKxkm9XXu" role="2OqNvi">
              <ref role="37wK5l" node="7qKxkm9BdF" resolve="generate" />
              <node concept="Xl_RD" id="7qKxkm9Yn5" role="37wK5m">
                <property role="Xl_RC" value="c:/data/bd/nio,out.txt" />
              </node>
              <node concept="37vLTw" id="4AafYjl1uGJ" role="37wK5m">
                <ref role="3cqZAo" node="4AafYjl1uj1" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4AafYjl1uZW" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl1uZX" role="3clFbG">
            <node concept="10M0yZ" id="4AafYjl1uZY" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4AafYjl1uZZ" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="4AafYjl1vrj" role="37wK5m">
                <ref role="3cqZAo" node="4AafYjl1uj1" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4AafYjl1uJW" role="3cqZAp" />
        <node concept="3clFbF" id="7qKxkmakXL" role="3cqZAp">
          <node concept="2OqwBi" id="7qKxkmalkS" role="3clFbG">
            <node concept="10M0yZ" id="7qKxkmal8f" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7qKxkmal$2" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="Xl_RD" id="7qKxkmamd3" role="37wK5m">
                <property role="Xl_RC" value="Done" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4oa7lsYhx0x" role="jymVt" />
    <node concept="2YIFZL" id="4oa7lsYh$R0" role="jymVt">
      <property role="TrG5h" value="templateFunction" />
      <node concept="3clFbS" id="6EV$eJxptYt" role="3clF47">
        <node concept="3cpWs8" id="6EV$eJxpv60" role="3cqZAp">
          <node concept="3cpWsn" id="6EV$eJxpv63" role="3cpWs9">
            <property role="TrG5h" value="world" />
            <node concept="17QB3L" id="6EV$eJxpv5Y" role="1tU5fm" />
            <node concept="Xl_RD" id="6EV$eJxpv7S" role="33vP2m">
              <property role="Xl_RC" value="World" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4AafYjl8raV" role="3cqZAp">
          <node concept="3cpWsn" id="4AafYjl8raY" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3Tqbb2" id="4AafYjl8raT" role="1tU5fm">
              <ref role="ehGHo" to="tpck:4uZwTti3_$T" resolve="Attribute" />
            </node>
            <node concept="10Nm6u" id="4AafYjl8TxE" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="4oa7lsXuKq_" role="3cqZAp" />
        <node concept="1VvQvr" id="4AafYjl1jDR" role="3cqZAp">
          <node concept="3cpWsn" id="4AafYjl1jDT" role="3cpWs9">
            <property role="TrG5h" value="template1" />
            <node concept="17QB3L" id="4AafYjl1jDU" role="1tU5fm" />
            <node concept="Xl_RD" id="4AafYjl1jDV" role="33vP2m" />
          </node>
          <node concept="2bPkdi" id="4AafYjl1jDW" role="1VvQv6">
            <node concept="2bR_Jt" id="4AafYjl1yek" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1yk5" role="2bR_Ii">
                <property role="2bR_ID" value="public void printSomething() {" />
              </node>
            </node>
            <node concept="2bR_Jt" id="4AafYjl1k2D" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1k4y" role="2bR_Ii">
                <property role="2bR_ID" value="    // Hello " />
              </node>
              <node concept="2bR_Jh" id="4AafYjl1k8g" role="2bR_Ii">
                <node concept="37vLTw" id="4AafYjl1kwE" role="2bR_Jm">
                  <ref role="3cqZAo" node="6EV$eJxpv63" resolve="world" />
                </node>
              </node>
            </node>
            <node concept="2bM0UA" id="4AafYjl1k_y" role="2bPkdh">
              <node concept="2bPkdi" id="4AafYjl1k_$" role="2LFqv$">
                <node concept="2bR_Jt" id="4AafYjl1kJy" role="2bPkdh">
                  <node concept="2bR_Jk" id="4AafYjl1kJB" role="2bR_Ii">
                    <property role="2bR_ID" value="    System.out.println(&quot;" />
                  </node>
                  <node concept="2bR_Jh" id="4AafYjl1kQ3" role="2bR_Ii">
                    <node concept="37vLTw" id="4AafYjl1ri_" role="2bR_Jm">
                      <ref role="3cqZAo" node="4AafYjl1kE_" resolve="name" />
                    </node>
                  </node>
                  <node concept="2bR_Jk" id="4AafYjl1rkQ" role="2bR_Ii">
                    <property role="2bR_ID" value="&quot;);" />
                  </node>
                </node>
                <node concept="2bPFdg" id="4AafYjl1BTs" role="2bPkdh">
                  <node concept="2OqwBi" id="4AafYjl2ry_" role="2bPFdk">
                    <node concept="37vLTw" id="4AafYjl2rjT" role="2Oq$k0">
                      <ref role="3cqZAo" node="4AafYjl1kE_" resolve="name" />
                    </node>
                    <node concept="liA8E" id="4AafYjl2s2J" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                      <node concept="Xl_RD" id="4AafYjl2s5o" role="37wK5m">
                        <property role="Xl_RC" value="a" />
                      </node>
                    </node>
                  </node>
                  <node concept="2bPkdi" id="4AafYjl1BTw" role="2bPFNB">
                    <node concept="2bR_Jt" id="4AafYjl1CFY" role="2bPkdh">
                      <node concept="2bR_Jk" id="4AafYjl1CIH" role="2bR_Ii">
                        <property role="2bR_ID" value="    // twaalf" />
                      </node>
                    </node>
                  </node>
                  <node concept="2bPkdi" id="4AafYjl2r47" role="2tsgfy">
                    <node concept="2bR_Jt" id="4AafYjl2r4k" role="2bPkdh">
                      <node concept="2bR_Jk" id="4AafYjl2r8J" role="2bR_Ii">
                        <property role="2bR_ID" value="    // No Twelve" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4AafYjl1kD0" role="1DdaDG">
                <ref role="3cqZAo" node="4oa7lsYhoNh" resolve="names" />
              </node>
              <node concept="3cpWsn" id="4AafYjl1kE_" role="1Duv9x">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="4AafYjl1kH3" role="1tU5fm" />
              </node>
            </node>
            <node concept="n_NMc" id="4AafYjl5rkU" role="2bPkdh">
              <node concept="nBMK_" id="4AafYjl7WrR" role="n_NMe">
                <node concept="2bPkdi" id="4AafYjl7WrS" role="n$IRy">
                  <node concept="2bR_Jt" id="4AafYjl7Wu0" role="2bPkdh">
                    <node concept="2bR_Jh" id="4AafYjl7WuV" role="2bR_Ii">
                      <node concept="3cmrfG" id="4AafYjl8kcB" role="2bR_Jm">
                        <property role="3cmrfH" value="12" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3gn64h" id="4AafYjl7WsX" role="nBNd8">
                  <ref role="3gnhBz" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                </node>
              </node>
              <node concept="37vLTw" id="4AafYjl8rww" role="n_NMf">
                <ref role="3cqZAo" node="4AafYjl8raY" resolve="literal" />
              </node>
            </node>
            <node concept="2bR_Jt" id="4AafYjl1ywk" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1yx5" role="2bR_Ii">
                <property role="2bR_ID" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4AafYjl1k0C" role="3cqZAp" />
        <node concept="3cpWs6" id="6EV$eJxptZr" role="3cqZAp">
          <node concept="37vLTw" id="4oa7lsYhoKH" role="3cqZAk">
            <ref role="3cqZAo" node="4AafYjl1jDT" resolve="template1" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4oa7lsYhoNh" role="3clF46">
        <property role="TrG5h" value="names" />
        <node concept="3uibUv" id="4oa7lsYhoQU" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="17QB3L" id="4oa7lsYhoTA" role="11_B2D" />
        </node>
      </node>
      <node concept="17QB3L" id="6EV$eJxptYf" role="3clF45" />
      <node concept="3Tm1VV" id="6EV$eJxptXZ" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6EV$eJxptWD" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7qKxkm9AVK">
    <property role="TrG5h" value="BaseTemplateGenerator" />
    <node concept="2tJIrI" id="7qKxkm9B7C" role="jymVt" />
    <node concept="312cEg" id="7qKxkma29D" role="jymVt">
      <property role="TrG5h" value="folder" />
      <node concept="3Tmbuc" id="7qKxkma4va" role="1B3o_S" />
      <node concept="17QB3L" id="7qKxkma287" role="1tU5fm" />
      <node concept="Xl_RD" id="7qKxkma2du" role="33vP2m">
        <property role="Xl_RC" value="" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qKxkma2hv" role="jymVt" />
    <node concept="3clFb_" id="7qKxkma37w" role="jymVt">
      <property role="TrG5h" value="setFolder" />
      <node concept="3clFbS" id="7qKxkma37z" role="3clF47">
        <node concept="3clFbF" id="7qKxkma3h3" role="3cqZAp">
          <node concept="37vLTI" id="7qKxkma3zO" role="3clFbG">
            <node concept="37vLTw" id="7qKxkma3Fh" role="37vLTx">
              <ref role="3cqZAo" node="7qKxkma3bJ" resolve="folder" />
            </node>
            <node concept="2OqwBi" id="7qKxkma3jS" role="37vLTJ">
              <node concept="Xjq3P" id="7qKxkma3h2" role="2Oq$k0" />
              <node concept="2OwXpG" id="7qKxkma3n$" role="2OqNvi">
                <ref role="2Oxat5" node="7qKxkma29D" resolve="folder" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qKxkma32d" role="1B3o_S" />
      <node concept="3cqZAl" id="7qKxkma35o" role="3clF45" />
      <node concept="37vLTG" id="7qKxkma3bJ" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="17QB3L" id="7qKxkma3bI" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qKxkma3MN" role="jymVt" />
    <node concept="3clFb_" id="7qKxkma42w" role="jymVt">
      <property role="TrG5h" value="getFolder" />
      <node concept="3clFbS" id="7qKxkma42z" role="3clF47">
        <node concept="3cpWs6" id="7qKxkma48i" role="3cqZAp">
          <node concept="2OqwBi" id="7qKxkma4eA" role="3cqZAk">
            <node concept="Xjq3P" id="7qKxkma49$" role="2Oq$k0" />
            <node concept="2OwXpG" id="7qKxkma4jp" role="2OqNvi">
              <ref role="2Oxat5" node="7qKxkma29D" resolve="folder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qKxkma3V4" role="1B3o_S" />
      <node concept="17QB3L" id="7qKxkma3Y0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7qKxkma4nD" role="jymVt" />
    <node concept="3clFb_" id="7qKxkm9BdF" role="jymVt">
      <property role="TrG5h" value="generate" />
      <node concept="3clFbS" id="7qKxkm9BdI" role="3clF47">
        <node concept="3cpWs8" id="7qKxkma7zu" role="3cqZAp">
          <node concept="3cpWsn" id="7qKxkma7zv" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="7qKxkma7zw" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7qKxkma5Ja" role="3cqZAp">
          <node concept="3clFbS" id="7qKxkma5Jc" role="3clFbx">
            <node concept="3clFbF" id="7qKxkma8n8" role="3cqZAp">
              <node concept="37vLTI" id="7qKxkma8$9" role="3clFbG">
                <node concept="37vLTw" id="7qKxkma8n6" role="37vLTJ">
                  <ref role="3cqZAo" node="7qKxkma7zv" resolve="path" />
                </node>
                <node concept="2YIFZM" id="7qKxkma8G8" role="37vLTx">
                  <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                  <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                  <node concept="37vLTw" id="7qKxkma8Ga" role="37wK5m">
                    <ref role="3cqZAo" node="7qKxkm9NKr" resolve="fileName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7qKxkma6rA" role="3clFbw">
            <node concept="37vLTw" id="7qKxkma651" role="2Oq$k0">
              <ref role="3cqZAo" node="7qKxkma29D" resolve="folder" />
            </node>
            <node concept="17RlXB" id="7qKxkma6PL" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="7qKxkma9AM" role="9aQIa">
            <node concept="3clFbS" id="7qKxkma9AN" role="9aQI4">
              <node concept="3clFbF" id="7qKxkma93n" role="3cqZAp">
                <node concept="37vLTI" id="7qKxkma93o" role="3clFbG">
                  <node concept="37vLTw" id="7qKxkma93p" role="37vLTJ">
                    <ref role="3cqZAo" node="7qKxkma7zv" resolve="path" />
                  </node>
                  <node concept="2YIFZM" id="7qKxkma93q" role="37vLTx">
                    <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                    <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                    <node concept="37vLTw" id="7qKxkma9tF" role="37wK5m">
                      <ref role="3cqZAo" node="7qKxkma29D" resolve="folder" />
                    </node>
                    <node concept="37vLTw" id="7qKxkma93r" role="37wK5m">
                      <ref role="3cqZAo" node="7qKxkm9NKr" resolve="fileName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="7qKxkm9U1s" role="3cqZAp">
          <node concept="3clFbS" id="7qKxkm9U1t" role="SfCbr">
            <node concept="3clFbF" id="7qKxkm9BhK" role="3cqZAp">
              <node concept="2YIFZM" id="7qKxkm9NZt" role="3clFbG">
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <ref role="37wK5l" to="eoo2:~Files.write(java.nio.file.Path,byte[],java.nio.file.OpenOption...)" resolve="write" />
                <node concept="37vLTw" id="7qKxkmaadZ" role="37wK5m">
                  <ref role="3cqZAo" node="7qKxkma7zv" resolve="path" />
                </node>
                <node concept="2OqwBi" id="7qKxkm9UT2" role="37wK5m">
                  <node concept="37vLTw" id="7qKxkm9ObT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qKxkm9NN$" resolve="contents" />
                  </node>
                  <node concept="liA8E" id="7qKxkm9VE8" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.getBytes()" resolve="getBytes" />
                  </node>
                </node>
                <node concept="Rm8GO" id="7qKxkm9P07" role="37wK5m">
                  <ref role="Rm8GQ" to="eoo2:~StandardOpenOption.CREATE" resolve="CREATE" />
                  <ref role="1Px2BO" to="eoo2:~StandardOpenOption" resolve="StandardOpenOption" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="7qKxkm9U1o" role="TEbGg">
            <node concept="3clFbS" id="7qKxkm9U1p" role="TDEfX">
              <node concept="3clFbF" id="7qKxkm9Uvk" role="3cqZAp">
                <node concept="2OqwBi" id="7qKxkm9UyI" role="3clFbG">
                  <node concept="37vLTw" id="7qKxkm9Uvj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qKxkm9U1q" resolve="e" />
                  </node>
                  <node concept="liA8E" id="7qKxkm9UHJ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7qKxkm9U1q" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7qKxkm9U1r" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7qKxkm9Bad" role="1B3o_S" />
      <node concept="3cqZAl" id="7qKxkm9BbN" role="3clF45" />
      <node concept="37vLTG" id="7qKxkm9NKr" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="7qKxkm9NKq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7qKxkm9NN$" role="3clF46">
        <property role="TrG5h" value="contents" />
        <node concept="17QB3L" id="7qKxkm9NPp" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7qKxkm9AVL" role="1B3o_S" />
  </node>
</model>

