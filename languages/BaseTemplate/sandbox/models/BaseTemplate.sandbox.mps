<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a620b2e6-b8ca-45c5-bff0-ce088a94256c(BaseTemplate.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="db391f02-128c-4f99-939a-b50794314dff" name="BaseTemplate" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="81cq" ref="r:7ae19249-b5cc-42be-affe-041af14add37(BaseTemplate.behavior)" />
    <import index="bbnd" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit.runners(JUnit/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="db391f02-128c-4f99-939a-b50794314dff" name="BaseTemplate">
      <concept id="7690900131439418957" name="BaseTemplate.structure.TemplateForStatement" flags="ng" index="2bM0UA">
        <property id="8483123646282936787" name="start" index="2ROMRh" />
        <property id="8483123646282936790" name="end" index="2ROMRk" />
        <property id="8483123646280348609" name="separator" index="2RYUZ3" />
        <child id="1154032183016" name="body" index="2LFqv$" />
        <child id="1144226360166" name="iterable" index="1DdaDG" />
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="7690900131439104953" name="BaseTemplate.structure.TemplateStatementList" flags="ng" index="2bPkdi">
        <property id="8483123646282770929" name="separator" index="2RRbnN" />
        <child id="7690900131439104954" name="statements" index="2bPkdh" />
      </concept>
      <concept id="7690900131438994363" name="BaseTemplate.structure.TemplateIfStatement" flags="ng" index="2bPFdg">
        <child id="7690900131438994367" name="condition" index="2bPFdk" />
        <child id="7690900131438996492" name="whenTrue" index="2bPFNB" />
        <child id="5299118163613137926" name="whenFalse" index="2tsgfy" />
      </concept>
      <concept id="7690900131438994362" name="BaseTemplate.structure.TemplateStatement" flags="ng" index="2bPFdh" />
      <concept id="7690900131438512954" name="BaseTemplate.structure.TemplateExpressionWord" flags="ng" index="2bR_Jh">
        <child id="7690900131438512957" name="exp" index="2bR_Jm" />
      </concept>
      <concept id="7690900131438512959" name="BaseTemplate.structure.TemplateStringWord" flags="ng" index="2bR_Jk">
        <property id="7690900131438512962" name="text" index="2bR_ID" />
      </concept>
      <concept id="7690900131438512950" name="BaseTemplate.structure.TemplateTextStatement" flags="ng" index="2bR_Jt">
        <property id="8349141316937920890" name="withoutNewline" index="2OgiEK" />
        <child id="7690900131438513017" name="words" index="2bR_Ii" />
      </concept>
      <concept id="133632534785162905" name="BaseTemplate.structure.TemplateSwitchStatement" flags="ng" index="n_NMc">
        <child id="133632534785162907" name="cases" index="n_NMe" />
        <child id="133632534785162906" name="node" index="n_NMf" />
        <child id="7756671909659231922" name="default" index="XQ7EN" />
      </concept>
      <concept id="133632534784634416" name="BaseTemplate.structure.TemplateCase" flags="ng" index="nBMK_">
        <child id="133632534784782327" name="lines" index="n$IRy" />
        <child id="133632534784635229" name="concept" index="nBNd8" />
      </concept>
      <concept id="3199465600023205473" name="BaseTemplate.structure.TemplateMethod3" flags="ig" index="G4tXy">
        <reference id="1258260021839468185" name="template" index="3lDMDb" />
      </concept>
      <concept id="3199465600024011469" name="BaseTemplate.structure.TemplateReturnStatement" flags="ng" index="GTqJe" />
      <concept id="8376824554118992665" name="BaseTemplate.structure.TemplateCall" flags="ng" index="32i2ql">
        <child id="8376824554118994250" name="expression" index="32i2N6" />
      </concept>
      <concept id="2345325223751497023" name="BaseTemplate.structure.Indentable" flags="ng" index="1cXf7y">
        <property id="2345325223751497294" name="indent" index="1cXfaj" />
      </concept>
      <concept id="5046878592952531596" name="BaseTemplate.structure.Template" flags="ng" index="1VvQvr">
        <child id="5046878592952531601" name="lines" index="1VvQv6" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
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
    <node concept="2tJIrI" id="15Qfdb4IeH7" role="jymVt" />
    <node concept="G4tXy" id="15Qfdb4Rd95" role="jymVt">
      <property role="TrG5h" value="templateName2" />
      <ref role="3lDMDb" node="15Qfdb4Rd98" />
      <node concept="17QB3L" id="15Qfdb4Rd96" role="3clF45" />
      <node concept="3clFbS" id="15Qfdb4Rd97" role="3clF47">
        <node concept="1VvQvr" id="15Qfdb4Rd98" role="3cqZAp">
          <node concept="3cpWsn" id="15Qfdb4Rd9b" role="3cpWs9">
            <property role="TrG5h" value="templateName2" />
            <node concept="17QB3L" id="15Qfdb4Rd9c" role="1tU5fm" />
            <node concept="Xl_RD" id="15Qfdb4Rd9d" role="33vP2m" />
          </node>
          <node concept="2bPkdi" id="15Qfdb4Rd9e" role="1VvQv6">
            <node concept="2bR_Jt" id="15Qfdb4WDGC" role="2bPkdh">
              <node concept="2bR_Jk" id="15Qfdb4WDI0" role="2bR_Ii">
                <property role="2bR_ID" value="aaaa" />
              </node>
              <node concept="2bR_Jh" id="15Qfdb4WDOB" role="2bR_Ii">
                <node concept="3cmrfG" id="15Qfdb4WDRo" role="2bR_Jm">
                  <property role="3cmrfH" value="12" />
                </node>
              </node>
              <node concept="2bR_Jk" id="15Qfdb4WDV1" role="2bR_Ii">
                <property role="2bR_ID" value="is" />
              </node>
              <node concept="2bR_Jh" id="15Qfdb4WDYO" role="2bR_Ii">
                <node concept="3cmrfG" id="15Qfdb4WE02" role="2bR_Jm">
                  <property role="3cmrfH" value="23" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="GTqJe" id="15Qfdb4Rd9f" role="3cqZAp">
          <node concept="37vLTw" id="15Qfdb4Rd9g" role="3cqZAk">
            <ref role="3cqZAo" node="15Qfdb4Rd9b" resolve="templateName2" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="15Qfdb4Rd9i" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="15Qfdb4RdJ1" role="jymVt" />
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
        <node concept="1X3_iC" id="3V8bJPMC7$z" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="7qKxkm9Xw2" role="8Wnug">
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
        </node>
        <node concept="3clFbF" id="4AafYjl1uZW" role="3cqZAp">
          <node concept="2OqwBi" id="4AafYjl1uZX" role="3clFbG">
            <node concept="10M0yZ" id="4AafYjl1uZY" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4AafYjl1uZZ" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.print(java.lang.String)" resolve="print" />
              <node concept="37vLTw" id="4AafYjl1vrj" role="37wK5m">
                <ref role="3cqZAo" node="4AafYjl1uj1" resolve="result" />
              </node>
            </node>
          </node>
        </node>
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
            <node concept="10Nm6u" id="3V8bJPMCod9" role="33vP2m" />
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
            <node concept="2bPFdh" id="4dogokbWcRl" role="2bPkdh" />
            <node concept="2bR_Jt" id="4AafYjl1yek" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1yk5" role="2bR_Ii">
                <property role="2bR_ID" value="public void printSomething() {" />
              </node>
            </node>
            <node concept="2bPFdh" id="4dogokbV$AE" role="2bPkdh" />
            <node concept="32i2ql" id="7h0toMQ3hzy" role="2bPkdh">
              <property role="1cXfaj" value="        " />
              <node concept="2bR_Jh" id="7h0toMQ3hAO" role="32i2N6">
                <node concept="1rXfSq" id="7h0toMQ3iX0" role="2bR_Jm">
                  <ref role="37wK5l" node="7h0toMQ3hJX" resolve="templateName" />
                </node>
              </node>
            </node>
            <node concept="2bR_Jt" id="7h0toMQ48NG" role="2bPkdh">
              <node concept="2bR_Jh" id="7h0toMQ48U6" role="2bR_Ii" />
            </node>
            <node concept="2bR_Jt" id="4AafYjl1k2D" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1k4y" role="2bR_Ii">
                <property role="2bR_ID" value="    // Hello " />
              </node>
              <node concept="2bR_Jh" id="4AafYjl1k8g" role="2bR_Ii">
                <node concept="3cpWs3" id="2Lfbf$AR4d6" role="2bR_Jm">
                  <node concept="3cmrfG" id="2Lfbf$AR4hD" role="3uHU7w">
                    <property role="3cmrfH" value="12" />
                  </node>
                  <node concept="37vLTw" id="4AafYjl1kwE" role="3uHU7B">
                    <ref role="3cqZAo" node="6EV$eJxpv63" resolve="world" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2bM0UA" id="4AafYjl1k_y" role="2bPkdh">
              <property role="1cXfaj" value="    " />
              <node concept="2bPkdi" id="4AafYjl1k_$" role="2LFqv$">
                <node concept="2bR_Jt" id="4AafYjl1kJy" role="2bPkdh">
                  <node concept="2bR_Jk" id="4AafYjl1kJB" role="2bR_Ii">
                    <property role="2bR_ID" value="System.out.println(&quot;" />
                  </node>
                  <node concept="2bR_Jh" id="4AafYjl1kQ3" role="2bR_Ii">
                    <node concept="3cpWs3" id="2Lfbf$AR4GH" role="2bR_Jm">
                      <node concept="37vLTw" id="2Lfbf$AR4La" role="3uHU7w">
                        <ref role="3cqZAo" node="4AafYjl1kE_" resolve="name" />
                      </node>
                      <node concept="37vLTw" id="4AafYjl1ri_" role="3uHU7B">
                        <ref role="3cqZAo" node="4AafYjl1kE_" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="2bR_Jk" id="4AafYjl1rkQ" role="2bR_Ii">
                    <property role="2bR_ID" value="&quot;);" />
                  </node>
                </node>
                <node concept="2bPFdg" id="4AafYjl1BTs" role="2bPkdh">
                  <property role="1cXfaj" value="    " />
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
                        <property role="2bR_ID" value="// twaalf" />
                      </node>
                    </node>
                    <node concept="2bPFdh" id="4dogokbWbnp" role="2bPkdh" />
                  </node>
                  <node concept="2bPkdi" id="4AafYjl2r47" role="2tsgfy">
                    <node concept="2bR_Jt" id="4AafYjl2r4k" role="2bPkdh">
                      <node concept="2bR_Jk" id="4AafYjl2r8J" role="2bR_Ii">
                        <property role="2bR_ID" value="// No Twelve" />
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
              <node concept="2bPkdi" id="6I_f05mv$wK" role="XQ7EN">
                <node concept="2bPFdh" id="6I_f05mv$wL" role="2bPkdh" />
              </node>
            </node>
            <node concept="2bR_Jt" id="4AafYjl1ywk" role="2bPkdh">
              <node concept="2bR_Jk" id="4AafYjl1yx5" role="2bR_Ii">
                <property role="2bR_ID" value="}" />
              </node>
            </node>
            <node concept="2bPFdh" id="6I_f05mv$fv" role="2bPkdh" />
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
    <node concept="2tJIrI" id="7h0toMQ3fsw" role="jymVt" />
    <node concept="2YIFZL" id="7h0toMQ3hJX" role="jymVt">
      <property role="TrG5h" value="templateName" />
      <node concept="3clFbS" id="7h0toMQ3gPP" role="3clF47">
        <node concept="1VvQvr" id="7h0toMQ3gPQ" role="3cqZAp">
          <node concept="3cpWsn" id="7h0toMQ3gPT" role="3cpWs9">
            <property role="TrG5h" value="templateName" />
            <node concept="17QB3L" id="7h0toMQ3gPU" role="1tU5fm" />
            <node concept="Xl_RD" id="7h0toMQ3gPV" role="33vP2m" />
          </node>
          <node concept="2bPkdi" id="7h0toMQ3gPW" role="1VvQv6">
            <node concept="2bR_Jt" id="7h0toMQ3h9U" role="2bPkdh">
              <node concept="2bR_Jk" id="7h0toMQ3haI" role="2bR_Ii">
                <property role="2bR_ID" value="Regel 1" />
              </node>
            </node>
            <node concept="2bR_Jt" id="7h0toMQ3hfi" role="2bPkdh">
              <node concept="2bR_Jk" id="7h0toMQ3hfq" role="2bR_Ii">
                <property role="2bR_ID" value="  Regel 2" />
              </node>
            </node>
            <node concept="2bR_Jt" id="7h0toMQ3hjB" role="2bPkdh">
              <node concept="2bR_Jk" id="7h0toMQ3hjN" role="2bR_Ii">
                <property role="2bR_ID" value="Regel 3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7h0toMQ3ipX" role="3cqZAp">
          <node concept="37vLTw" id="7h0toMQ3iJi" role="3cqZAk">
            <ref role="3cqZAo" node="7h0toMQ3gPT" resolve="templateName" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7h0toMQ3gPO" role="3clF45" />
      <node concept="3Tm1VV" id="7h0toMQ3gQ1" role="1B3o_S" />
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
        <node concept="3J1_TO" id="7qKxkm9U1s" role="3cqZAp">
          <node concept="3clFbS" id="7qKxkm9U1t" role="1zxBo7">
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
          <node concept="3uVAMA" id="7qKxkm9U1o" role="1zxBo5">
            <node concept="XOnhg" id="7qKxkm9U1q" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="cgh1Kg5E0rN" role="1tU5fm">
                <node concept="3uibUv" id="7qKxkm9U1r" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7qKxkm9U1p" role="1zc67A">
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
  <node concept="3s_ewN" id="3V8bJPMCk$Z">
    <property role="3s_ewP" value="BaseTemplatesTest" />
    <node concept="312cEg" id="3V8bJPMClTw" role="jymVt">
      <property role="TrG5h" value="variable" />
      <node concept="17QB3L" id="3V8bJPMClR6" role="1tU5fm" />
      <node concept="3Tm1VV" id="3V8bJPMClXD" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3V8bJPMEmhT" role="jymVt">
      <property role="TrG5h" value="names" />
      <node concept="3Tm6S6" id="3V8bJPMEmhU" role="1B3o_S" />
      <node concept="3uibUv" id="3V8bJPMEmhV" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="3V8bJPMEmhW" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="3V8bJPMEtAn" role="jymVt">
      <property role="TrG5h" value="numbers" />
      <node concept="3Tm6S6" id="3V8bJPMEtbY" role="1B3o_S" />
      <node concept="10Q1$e" id="3V8bJPMEt$1" role="1tU5fm">
        <node concept="10Oyi0" id="3V8bJPMEtzZ" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="3V8bJPMEw1m" role="33vP2m">
        <node concept="3cmrfG" id="3V8bJPMEw4w" role="2BsfMF">
          <property role="3cmrfH" value="1" />
        </node>
        <node concept="3cmrfG" id="3V8bJPMEw7X" role="2BsfMF">
          <property role="3cmrfH" value="2" />
        </node>
        <node concept="3cmrfG" id="3V8bJPMEwbi" role="2BsfMF">
          <property role="3cmrfH" value="3" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3V8bJPMCk_0" role="1B3o_S" />
    <node concept="3s_gsd" id="3V8bJPMCk_1" role="3s_ewO">
      <node concept="3s$Bmu" id="3V8bJPMClrX" role="3s_gse">
        <property role="3s$Bm0" value="lineWithoutNewline" />
        <node concept="3cqZAl" id="3V8bJPMClrY" role="3clF45" />
        <node concept="3Tm1VV" id="3V8bJPMClrZ" role="1B3o_S" />
        <node concept="3clFbS" id="3V8bJPMCls0" role="3clF47">
          <node concept="1VvQvr" id="3V8bJPMClzn" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMClzq" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="3V8bJPMClzr" role="1tU5fm" />
              <node concept="Xl_RD" id="3V8bJPMClzs" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="3V8bJPMClzt" role="1VvQv6">
              <node concept="2bR_Jt" id="3V8bJPMClCl" role="2bPkdh">
                <property role="2OgiEK" value="true" />
                <node concept="2bR_Jk" id="3V8bJPMClEB" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="3V8bJPMClJo" role="2bR_Ii">
                  <node concept="37vLTw" id="3V8bJPMCmPU" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="3V8bJPMCmH_" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMCmTk" role="3cqZAp" />
          <node concept="3vlDli" id="3V8bJPMCn17" role="3cqZAp">
            <node concept="37vLTw" id="3V8bJPMCn4X" role="3tpDZB">
              <ref role="3cqZAo" node="3V8bJPMClzq" resolve="t1" />
            </node>
            <node concept="Xl_RD" id="3V8bJPMCn8m" role="3tpDZA">
              <property role="Xl_RC" value="Test variable-string insertion." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3V8bJPMCHnC" role="3s_gse">
        <property role="3s$Bm0" value="lineWithNewline" />
        <node concept="3cqZAl" id="3V8bJPMCHnD" role="3clF45" />
        <node concept="3Tm1VV" id="3V8bJPMCHnE" role="1B3o_S" />
        <node concept="3clFbS" id="3V8bJPMCHnF" role="3clF47">
          <node concept="1VvQvr" id="3V8bJPMCHnG" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMCHnH" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="3V8bJPMCHnI" role="1tU5fm" />
              <node concept="Xl_RD" id="3V8bJPMCHnJ" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="3V8bJPMCHnK" role="1VvQv6">
              <node concept="2bR_Jt" id="3V8bJPMCHnL" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMCHnM" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="3V8bJPMCHnN" role="2bR_Ii">
                  <node concept="37vLTw" id="3V8bJPMCHnO" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="3V8bJPMCHnP" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMCHnQ" role="3cqZAp" />
          <node concept="3vlDli" id="3V8bJPMCHnR" role="3cqZAp">
            <node concept="37vLTw" id="3V8bJPMCHnS" role="3tpDZB">
              <ref role="3cqZAo" node="3V8bJPMCHnH" resolve="t1" />
            </node>
            <node concept="Xl_RD" id="3V8bJPMCHnT" role="3tpDZA">
              <property role="Xl_RC" value="Test variable-string insertion.\n" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3V8bJPMDxZ9" role="3s_gse">
        <property role="3s$Bm0" value="forLoopOneLine" />
        <node concept="3cqZAl" id="3V8bJPMDxZa" role="3clF45" />
        <node concept="3Tm1VV" id="3V8bJPMDxZb" role="1B3o_S" />
        <node concept="3clFbS" id="3V8bJPMDxZc" role="3clF47">
          <node concept="1VvQvr" id="3V8bJPMDxZd" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMDxZe" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="3V8bJPMDxZf" role="1tU5fm" />
              <node concept="Xl_RD" id="3V8bJPMDxZg" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="3V8bJPMDxZh" role="1VvQv6">
              <node concept="2bR_Jt" id="3V8bJPMDxZi" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMDxZj" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="3V8bJPMDxZk" role="2bR_Ii">
                  <node concept="37vLTw" id="3V8bJPMDxZl" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="3V8bJPMDxZm" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="3V8bJPMDybS" role="2bPkdh">
                <node concept="2bPkdi" id="3V8bJPMDybU" role="2LFqv$">
                  <node concept="2bR_Jt" id="3V8bJPMDyvN" role="2bPkdh">
                    <node concept="2bR_Jk" id="3V8bJPMDywz" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="3V8bJPMDyF5" role="2bR_Ii">
                      <node concept="37vLTw" id="3V8bJPMDyHl" role="2bR_Jm">
                        <ref role="3cqZAo" node="3V8bJPMDymG" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="3V8bJPMDF9S" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3V8bJPMEwz7" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="3V8bJPMDymG" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="3V8bJPMDyth" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMDxZn" role="3cqZAp" />
          <node concept="3vlDli" id="3V8bJPMDxZo" role="3cqZAp">
            <node concept="37vLTw" id="3V8bJPMDxZp" role="3tpDZB">
              <ref role="3cqZAo" node="3V8bJPMDxZe" resolve="t1" />
            </node>
            <node concept="3cpWs3" id="3V8bJPMDH4$" role="3tpDZA">
              <node concept="3cpWs3" id="3V8bJPMDGCw" role="3uHU7B">
                <node concept="3cpWs3" id="3V8bJPMDFwr" role="3uHU7B">
                  <node concept="Xl_RD" id="3V8bJPMDxZq" role="3uHU7B">
                    <property role="Xl_RC" value="Test variable-string insertion.\n" />
                  </node>
                  <node concept="Xl_RD" id="3V8bJPMDFzI" role="3uHU7w">
                    <property role="Xl_RC" value="Name is [one]\n" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3V8bJPMDGLC" role="3uHU7w">
                  <property role="Xl_RC" value="Name is [two]\n" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDHba" role="3uHU7w">
                <property role="Xl_RC" value="Name is [three]\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3V8bJPMDJSI" role="3s_gse">
        <property role="3s$Bm0" value="forLoopMultipleLinesWithIndent" />
        <node concept="3cqZAl" id="3V8bJPMDJSJ" role="3clF45" />
        <node concept="3Tm1VV" id="3V8bJPMDJSK" role="1B3o_S" />
        <node concept="3clFbS" id="3V8bJPMDJSL" role="3clF47">
          <node concept="1VvQvr" id="3V8bJPMDJSM" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMDJSN" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="3V8bJPMDJSO" role="1tU5fm" />
              <node concept="Xl_RD" id="3V8bJPMDJSP" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="3V8bJPMDJSQ" role="1VvQv6">
              <node concept="2bR_Jt" id="3V8bJPMDJSR" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMDJSS" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="3V8bJPMDJST" role="2bR_Ii">
                  <node concept="37vLTw" id="3V8bJPMDJSU" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="3V8bJPMDJSV" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="3V8bJPMDJSW" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <node concept="2bPkdi" id="3V8bJPMDJSX" role="2LFqv$">
                  <node concept="2bR_Jt" id="3V8bJPMDJSY" role="2bPkdh">
                    <node concept="2bR_Jk" id="3V8bJPMDJSZ" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="3V8bJPMDJT0" role="2bR_Ii">
                      <node concept="37vLTw" id="3V8bJPMDJT1" role="2bR_Jm">
                        <ref role="3cqZAo" node="3V8bJPMDJT4" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="3V8bJPMDJT2" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                  <node concept="2bR_Jt" id="3V8bJPMDMvl" role="2bPkdh">
                    <node concept="2bR_Jk" id="3V8bJPMDMvF" role="2bR_Ii">
                      <property role="2bR_ID" value="Second line in for loop" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3V8bJPMDJT3" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="3V8bJPMDJT4" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="3V8bJPMDJT5" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="3V8bJPMDQVX" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMDR3q" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMDJT6" role="3cqZAp" />
          <node concept="3cpWs8" id="3V8bJPMDRAo" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMDRAr" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="3V8bJPMDRIX" role="1tU5fm">
                <node concept="17QB3L" id="3V8bJPMDRAm" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="3V8bJPMDSL2" role="33vP2m">
                <node concept="3$_iS1" id="3V8bJPMDSJY" role="2ShVmc">
                  <node concept="3$GHV9" id="3V8bJPMDSY3" role="3$GQph">
                    <node concept="3cmrfG" id="3V8bJPMDT15" role="3$I4v7">
                      <property role="3cmrfH" value="8" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="3V8bJPMDSJZ" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDV_$" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDV__" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDV_A" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDV_B" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDV_C" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDV_D" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDTIE" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDV5p" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDU02" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDU6F" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDTIC" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDXYu" role="37vLTx">
                <property role="Xl_RC" value="    Name is [one]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDW2r" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDW2s" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDW2t" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDW2u" role="AHEQo">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDW2v" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDY6$" role="37vLTx">
                <property role="Xl_RC" value="    Second line in for loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDWcz" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDWc$" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDWc_" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDWcA" role="AHEQo">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDWcB" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDYC6" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDWn9" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDWna" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDWnb" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDWnc" role="AHEQo">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDWnd" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDYdg" role="37vLTx">
                <property role="Xl_RC" value="    Second line in for loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDWxe" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDWxf" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDWxg" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDWxh" role="AHEQo">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDWxi" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDYED" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDZ0B" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDZ0C" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDZ0D" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDZ0E" role="AHEQo">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDZ0F" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDZ0G" role="37vLTx">
                <property role="Xl_RC" value="    Second line in for loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMDWKK" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMDWKL" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMDWKM" role="37vLTJ">
                <node concept="3cmrfG" id="3V8bJPMDWKN" role="AHEQo">
                  <property role="3cmrfH" value="7" />
                </node>
                <node concept="37vLTw" id="3V8bJPMDWKO" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMDZkR" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMDPZK" role="3cqZAp" />
          <node concept="3vlDli" id="3V8bJPMDJT7" role="3cqZAp">
            <node concept="37vLTw" id="3V8bJPMDJT8" role="3tpDZB">
              <ref role="3cqZAo" node="3V8bJPMDJSN" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="3V8bJPME2JK" role="3tpDZA">
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="3V8bJPME4yR" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="3V8bJPME2PR" role="37wK5m">
                <ref role="3cqZAo" node="3V8bJPMDRAr" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3V8bJPMExPJ" role="3s_gse">
        <property role="3s$Bm0" value="nestedForLoopWithNestedIndent" />
        <node concept="3cqZAl" id="3V8bJPMExPK" role="3clF45" />
        <node concept="3Tm1VV" id="3V8bJPMExPL" role="1B3o_S" />
        <node concept="3clFbS" id="3V8bJPMExPM" role="3clF47">
          <node concept="1VvQvr" id="3V8bJPMExPN" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMExPO" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="3V8bJPMExPP" role="1tU5fm" />
              <node concept="Xl_RD" id="3V8bJPMExPQ" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="3V8bJPMExPR" role="1VvQv6">
              <node concept="2bR_Jt" id="3V8bJPMExPS" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMExPT" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="3V8bJPMExPU" role="2bR_Ii">
                  <node concept="37vLTw" id="3V8bJPMExPV" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="3V8bJPMExPW" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="3V8bJPMExPX" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <node concept="2bPkdi" id="3V8bJPMExPY" role="2LFqv$">
                  <node concept="2bR_Jt" id="3V8bJPMExPZ" role="2bPkdh">
                    <node concept="2bR_Jk" id="3V8bJPMExQ0" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="3V8bJPMExQ1" role="2bR_Ii">
                      <node concept="37vLTw" id="3V8bJPMExQ2" role="2bR_Jm">
                        <ref role="3cqZAo" node="3V8bJPMExQ7" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="3V8bJPMExQ3" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                  <node concept="2bM0UA" id="3V8bJPMEzIO" role="2bPkdh">
                    <node concept="2bPkdi" id="3V8bJPMEzIQ" role="2LFqv$">
                      <node concept="2bR_Jt" id="3V8bJPMEzXK" role="2bPkdh">
                        <node concept="2bR_Jk" id="3V8bJPMEzZC" role="2bR_Ii">
                          <property role="2bR_ID" value="Number " />
                        </node>
                        <node concept="2bR_Jh" id="3V8bJPME$38" role="2bR_Ii">
                          <node concept="37vLTw" id="3V8bJPME$6w" role="2bR_Jm">
                            <ref role="3cqZAo" node="3V8bJPMEzRo" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3V8bJPMEzNb" role="1DdaDG">
                      <ref role="3cqZAo" node="3V8bJPMEtAn" resolve="numbers" />
                    </node>
                    <node concept="3cpWsn" id="3V8bJPMEzRo" role="1Duv9x">
                      <property role="TrG5h" value="i" />
                      <node concept="10Oyi0" id="3V8bJPMEzT7" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="2bM0UA" id="3V8bJPME$c5" role="2bPkdh">
                    <property role="1cXfaj" value="//  " />
                    <node concept="2bPkdi" id="3V8bJPME$c6" role="2LFqv$">
                      <node concept="2bR_Jt" id="3V8bJPME$c7" role="2bPkdh">
                        <node concept="2bR_Jk" id="3V8bJPME$c8" role="2bR_Ii">
                          <property role="2bR_ID" value="Number " />
                        </node>
                        <node concept="2bR_Jh" id="3V8bJPME$c9" role="2bR_Ii">
                          <node concept="37vLTw" id="3V8bJPME$ca" role="2bR_Jm">
                            <ref role="3cqZAo" node="3V8bJPME$cc" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3V8bJPME$cb" role="1DdaDG">
                      <ref role="3cqZAo" node="3V8bJPMEtAn" resolve="numbers" />
                    </node>
                    <node concept="3cpWsn" id="3V8bJPME$cc" role="1Duv9x">
                      <property role="TrG5h" value="i" />
                      <node concept="10Oyi0" id="3V8bJPME$cd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3V8bJPMExQ6" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="3V8bJPMExQ7" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="3V8bJPMExQ8" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="3V8bJPMExQ9" role="2bPkdh">
                <node concept="2bR_Jk" id="3V8bJPMExQa" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMExQb" role="3cqZAp" />
          <node concept="3cpWs8" id="3V8bJPME_As" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPME_Av" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="3V8bJPME_Aq" role="1tU5fm" />
              <node concept="3cmrfG" id="3V8bJPMEAoq" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3V8bJPMExQc" role="3cqZAp">
            <node concept="3cpWsn" id="3V8bJPMExQd" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="3V8bJPMExQe" role="1tU5fm">
                <node concept="17QB3L" id="3V8bJPMExQf" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="3V8bJPMExQg" role="33vP2m">
                <node concept="3$_iS1" id="3V8bJPMExQh" role="2ShVmc">
                  <node concept="3$GHV9" id="3V8bJPMExQi" role="3$GQph">
                    <node concept="3cmrfG" id="3V8bJPMExQj" role="3$I4v7">
                      <property role="3cmrfH" value="23" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="3V8bJPMExQk" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMExQl" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMExQm" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMExQn" role="37vLTJ">
                <node concept="3uNrnE" id="3V8bJPMEB31" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEB33" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="3V8bJPMExQp" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMExQq" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMExQr" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMExQs" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMExQt" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMExQv" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEBuV" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEBuW" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMExQw" role="37vLTx">
                <property role="Xl_RC" value="    Name is [one]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEFQa" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEFQb" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEFQc" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEFQd" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEFQe" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEFQf" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEFQg" role="37vLTx">
                <property role="Xl_RC" value="    Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEFQh" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEFQi" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEFQj" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEFQk" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEFQl" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEFQm" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEFQn" role="37vLTx">
                <property role="Xl_RC" value="    Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEFQo" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEFQp" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEFQq" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEFQr" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEFQs" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEFQt" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEFQu" role="37vLTx">
                <property role="Xl_RC" value="    Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEVGa" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEVGb" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEVGc" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEVGd" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEVGe" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEVGf" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEVGg" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEVGh" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEVGi" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEVGj" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEVGk" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEVGl" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEVGm" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEVGn" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEVGo" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEVGp" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEVGq" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEVGr" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEVGs" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEVGt" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEVGu" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMExQB" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMExQC" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMExQD" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMExQF" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEBQ8" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEBQ9" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMExQG" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIpV" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIpW" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIpX" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIpY" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIpZ" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIq0" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIq1" role="37vLTx">
                <property role="Xl_RC" value="    Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIq2" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIq3" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIq4" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIq5" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIq6" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIq7" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIq8" role="37vLTx">
                <property role="Xl_RC" value="    Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIq9" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIqa" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIqb" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIqc" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIqd" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIqe" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIqf" role="37vLTx">
                <property role="Xl_RC" value="    Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIqg" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIqh" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIqi" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIqj" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIqk" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIql" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIqm" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIqn" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIqo" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIqp" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIqq" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIqr" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIqs" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIqt" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEIqu" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEIqv" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEIqw" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEIqx" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEIqy" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEIqz" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEIq$" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMExQN" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMExQO" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMExQP" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMExQR" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMECdl" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMECdm" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMExQS" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEJmC" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEJmD" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEJmE" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEJmF" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEJmG" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEJmH" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEJmI" role="37vLTx">
                <property role="Xl_RC" value="    Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEJmJ" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEJmK" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEJmL" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEJmM" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEJmN" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEJmO" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEJmP" role="37vLTx">
                <property role="Xl_RC" value="    Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEJmQ" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEJmR" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEJmS" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEJmT" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEJmU" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEJmV" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEJmW" role="37vLTx">
                <property role="Xl_RC" value="    Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEUIS" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEUIT" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEUIU" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEUIV" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEUIW" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEUIX" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEUIY" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 1\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEUIZ" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEUJ0" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEUJ1" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEUJ2" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEUJ3" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEUJ4" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEUJ5" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 2\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMEUJ6" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMEUJ7" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMEUJ8" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMEUJ9" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEUJa" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEUJb" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMEUJc" role="37vLTx">
                <property role="Xl_RC" value="    //  Number 3\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3V8bJPMExQZ" role="3cqZAp">
            <node concept="37vLTI" id="3V8bJPMExR0" role="3clFbG">
              <node concept="AH0OO" id="3V8bJPMExR1" role="37vLTJ">
                <node concept="37vLTw" id="3V8bJPMExR3" role="AHHXb">
                  <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="3V8bJPMEC_f" role="AHEQo">
                  <node concept="37vLTw" id="3V8bJPMEC_g" role="2$L3a6">
                    <ref role="3cqZAo" node="3V8bJPME_Av" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3V8bJPMExR4" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3V8bJPMExR5" role="3cqZAp" />
          <node concept="3vlDli" id="3V8bJPMExR6" role="3cqZAp">
            <node concept="37vLTw" id="3V8bJPMExR7" role="3tpDZB">
              <ref role="3cqZAo" node="3V8bJPMExPO" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="3V8bJPMExR8" role="3tpDZA">
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="3V8bJPMExR9" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="3V8bJPMExRa" role="37wK5m">
                <ref role="3cqZAo" node="3V8bJPMExQd" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="yJsDz8FqWF" role="3s_gse">
        <property role="3s$Bm0" value="forWithSeparatorWithoutNewline" />
        <node concept="3cqZAl" id="yJsDz8FqWG" role="3clF45" />
        <node concept="3Tm1VV" id="yJsDz8FqWH" role="1B3o_S" />
        <node concept="3clFbS" id="yJsDz8FqWI" role="3clF47">
          <node concept="1VvQvr" id="yJsDz8FqWJ" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FqWK" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="yJsDz8FqWL" role="1tU5fm" />
              <node concept="Xl_RD" id="yJsDz8FqWM" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="yJsDz8FqWN" role="1VvQv6">
              <node concept="2bR_Jt" id="yJsDz8FqWO" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8FqWP" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="yJsDz8FqWQ" role="2bR_Ii">
                  <node concept="37vLTw" id="yJsDz8FqWR" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="yJsDz8FqWS" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="yJsDz8FqWT" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <property role="2RYUZ3" value="--" />
                <node concept="2bPkdi" id="yJsDz8FqWU" role="2LFqv$">
                  <property role="2RRbnN" value="---" />
                  <node concept="2bR_Jt" id="yJsDz8FqWV" role="2bPkdh">
                    <property role="2OgiEK" value="true" />
                    <node concept="2bR_Jk" id="yJsDz8FqWW" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="yJsDz8FqWX" role="2bR_Ii">
                      <node concept="37vLTw" id="yJsDz8FqWY" role="2bR_Jm">
                        <ref role="3cqZAo" node="yJsDz8FqX1" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="yJsDz8FqWZ" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FqX0" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="yJsDz8FqX1" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="yJsDz8FqX2" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="yJsDz8FqX3" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8FqX4" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8FqX5" role="3cqZAp" />
          <node concept="3cpWs8" id="yJsDz8FqX6" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FqX7" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="yJsDz8FqX8" role="1tU5fm" />
              <node concept="3cmrfG" id="yJsDz8FqX9" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="yJsDz8FqXa" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FqXb" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="yJsDz8FqXc" role="1tU5fm">
                <node concept="17QB3L" id="yJsDz8FqXd" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="yJsDz8FqXe" role="33vP2m">
                <node concept="3$_iS1" id="yJsDz8FqXf" role="2ShVmc">
                  <node concept="3$GHV9" id="yJsDz8FqXg" role="3$GQph">
                    <node concept="3cmrfG" id="yJsDz8FqXh" role="3$I4v7">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="yJsDz8FqXi" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FqXj" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FqXk" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FqXl" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8FqXm" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FqXn" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FqX7" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FqXo" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FqXb" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FqXp" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FqXq" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FqXr" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FqXs" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FqXt" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FqXb" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FqXu" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FqXv" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FqX7" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FqXw" role="37vLTx">
                <property role="Xl_RC" value="    Name is [one]--Name is [two]--Name is [three]After loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8FqXx" role="3cqZAp" />
          <node concept="3vlDli" id="yJsDz8FqXS" role="3cqZAp">
            <node concept="37vLTw" id="yJsDz8FqXT" role="3tpDZB">
              <ref role="3cqZAo" node="yJsDz8FqWK" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="yJsDz8FqXU" role="3tpDZA">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <node concept="Xl_RD" id="yJsDz8FqXV" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="yJsDz8FqXW" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8FqXb" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="yJsDz8LkZF" role="3s_gse">
        <property role="3s$Bm0" value="forWithSeparatorWithNewline" />
        <node concept="3cqZAl" id="yJsDz8LkZG" role="3clF45" />
        <node concept="3Tm1VV" id="yJsDz8LkZH" role="1B3o_S" />
        <node concept="3clFbS" id="yJsDz8LkZI" role="3clF47">
          <node concept="1VvQvr" id="yJsDz8LkZJ" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8LkZK" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="yJsDz8LkZL" role="1tU5fm" />
              <node concept="Xl_RD" id="yJsDz8LkZM" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="yJsDz8LkZN" role="1VvQv6">
              <node concept="2bR_Jt" id="yJsDz8LkZO" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8LkZP" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="yJsDz8LkZQ" role="2bR_Ii">
                  <node concept="37vLTw" id="yJsDz8LkZR" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="yJsDz8LkZS" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="yJsDz8LkZT" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <property role="2RYUZ3" value="--" />
                <node concept="2bPkdi" id="yJsDz8LkZU" role="2LFqv$">
                  <property role="2RRbnN" value="---" />
                  <node concept="2bR_Jt" id="yJsDz8LkZV" role="2bPkdh">
                    <node concept="2bR_Jk" id="yJsDz8LkZW" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="yJsDz8LkZX" role="2bR_Ii">
                      <node concept="37vLTw" id="yJsDz8LkZY" role="2bR_Jm">
                        <ref role="3cqZAo" node="yJsDz8Ll01" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="yJsDz8LkZZ" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8Ll00" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="yJsDz8Ll01" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="yJsDz8Ll02" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="yJsDz8Ll03" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8LR05" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8Ll05" role="3cqZAp" />
          <node concept="3cpWs8" id="yJsDz8Ll06" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8Ll07" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="yJsDz8Ll08" role="1tU5fm" />
              <node concept="3cmrfG" id="yJsDz8Ll09" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="yJsDz8Ll0a" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8Ll0b" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="yJsDz8Ll0c" role="1tU5fm">
                <node concept="17QB3L" id="yJsDz8Ll0d" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="yJsDz8Ll0e" role="33vP2m">
                <node concept="3$_iS1" id="yJsDz8Ll0f" role="2ShVmc">
                  <node concept="3$GHV9" id="yJsDz8Ll0g" role="3$GQph">
                    <node concept="3cmrfG" id="yJsDz8LyM_" role="3$I4v7">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="yJsDz8Ll0i" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8Ll0j" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8Ll0k" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8Ll0l" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8Ll0m" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8Ll0n" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8Ll07" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8Ll0o" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8Ll0p" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8LqE4" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8LqE5" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8LqE6" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8LqE7" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8LqE8" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8LqE9" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8Ll07" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8LqEa" role="37vLTx">
                <property role="Xl_RC" value="    Name is [one]--\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8Ll0q" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8Ll0r" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8Ll0s" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8Ll0t" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8Ll0u" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8Ll0v" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8Ll07" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8Ll0w" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]--\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8Lsm1" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8Lsm2" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8Lsm3" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8Lsm4" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8Lsm5" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8Lsm6" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8Ll07" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8Lsm7" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8Ltg6" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8Ltg7" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8Ltg8" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8Ltg9" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8Ltga" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8Ltgb" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8Ll07" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8Ltgc" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8Ll0x" role="3cqZAp" />
          <node concept="3clFbF" id="yJsDz8M5Ln" role="3cqZAp">
            <node concept="2YIFZM" id="yJsDz8M6RM" role="3clFbG">
              <ref role="37wK5l" node="yJsDz8LV3i" resolve="log" />
              <ref role="1Pybhc" node="yJsDz8LUtJ" resolve="TestUtil" />
              <node concept="Xl_RD" id="yJsDz8M7wC" role="37wK5m">
                <property role="Xl_RC" value="forSeparator" />
              </node>
              <node concept="37vLTw" id="yJsDz8M7Je" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8LkZK" resolve="t1" />
              </node>
              <node concept="2YIFZM" id="yJsDz8M7OQ" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="yJsDz8M7OR" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="yJsDz8M7OS" role="37wK5m">
                  <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="yJsDz8Ll0y" role="3cqZAp">
            <node concept="37vLTw" id="yJsDz8Ll0z" role="3tpDZB">
              <ref role="3cqZAo" node="yJsDz8LkZK" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="yJsDz8Ll0$" role="3tpDZA">
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="yJsDz8Ll0_" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="yJsDz8Ll0A" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8Ll0b" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="yJsDz8EhEx" role="3s_gse">
        <property role="3s$Bm0" value="forWithStart" />
        <node concept="3cqZAl" id="yJsDz8EhEy" role="3clF45" />
        <node concept="3Tm1VV" id="yJsDz8EhEz" role="1B3o_S" />
        <node concept="3clFbS" id="yJsDz8EhE$" role="3clF47">
          <node concept="1VvQvr" id="yJsDz8EhE_" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8EhEA" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="yJsDz8EhEB" role="1tU5fm" />
              <node concept="Xl_RD" id="yJsDz8EhEC" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="yJsDz8EhED" role="1VvQv6">
              <node concept="2bR_Jt" id="yJsDz8EhEE" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8EhEF" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="yJsDz8EhEG" role="2bR_Ii">
                  <node concept="37vLTw" id="yJsDz8EhEH" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="yJsDz8EhEI" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="yJsDz8EhEJ" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <property role="2ROMRh" value="[[" />
                <node concept="2bPkdi" id="yJsDz8EhEK" role="2LFqv$">
                  <property role="2RRbnN" value="---" />
                  <node concept="2bR_Jt" id="yJsDz8EhEL" role="2bPkdh">
                    <node concept="2bR_Jk" id="yJsDz8EhEM" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="yJsDz8EhEN" role="2bR_Ii">
                      <node concept="37vLTw" id="yJsDz8EhEO" role="2bR_Jm">
                        <ref role="3cqZAo" node="yJsDz8EhF9" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="yJsDz8EhEP" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8EhF8" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="yJsDz8EhF9" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="yJsDz8EhFa" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="yJsDz8EhFb" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8EhFc" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8EhFd" role="3cqZAp" />
          <node concept="3cpWs8" id="yJsDz8EhFe" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8EhFf" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="yJsDz8EhFg" role="1tU5fm" />
              <node concept="3cmrfG" id="yJsDz8EhFh" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="yJsDz8EhFi" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8EhFj" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="yJsDz8EhFk" role="1tU5fm">
                <node concept="17QB3L" id="yJsDz8EhFl" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="yJsDz8EhFm" role="33vP2m">
                <node concept="3$_iS1" id="yJsDz8EhFn" role="2ShVmc">
                  <node concept="3$GHV9" id="yJsDz8EhFo" role="3$GQph">
                    <node concept="3cmrfG" id="yJsDz8EhFp" role="3$I4v7">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="yJsDz8EhFq" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8EhFr" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8EhFs" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8EhFt" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8EhFu" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8EhFv" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8EhFf" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8EhFw" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8EhFx" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FwRa" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FwRb" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FwRc" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FwRd" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FwRe" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FwRf" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8EhFf" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FwRg" role="37vLTx">
                <property role="Xl_RC" value="    [[Name is [one]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8EhFy" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8EhFz" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8EhF$" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8EhF_" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8EhFA" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8EhFB" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8EhFf" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8EhFC" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FyT2" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FyT3" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FyT4" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FyT5" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FyT6" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FyT7" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8EhFf" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FyT8" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FAs9" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FDi6" role="3clFbG">
              <node concept="Xl_RD" id="yJsDz8FEc6" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
              <node concept="AH0OO" id="yJsDz8FBtE" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8FCOt" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FCOv" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8EhFf" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FAs7" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8EhHW" role="3cqZAp" />
          <node concept="3clFbF" id="2zob2wYqgVY" role="3cqZAp">
            <node concept="2YIFZM" id="2zob2wYqgVZ" role="3clFbG">
              <ref role="1Pybhc" node="yJsDz8LUtJ" resolve="TestUtil" />
              <ref role="37wK5l" node="yJsDz8LV3i" resolve="log" />
              <node concept="Xl_RD" id="2zob2wYqgW0" role="37wK5m">
                <property role="Xl_RC" value="forSeparator" />
              </node>
              <node concept="37vLTw" id="2zob2wYqgW1" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8EhEA" resolve="t1" />
              </node>
              <node concept="2YIFZM" id="2zob2wYqgW2" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
                <node concept="Xl_RD" id="2zob2wYqgW3" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="2zob2wYqgW4" role="37wK5m">
                  <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="yJsDz8EhHX" role="3cqZAp">
            <node concept="37vLTw" id="yJsDz8EhHY" role="3tpDZB">
              <ref role="3cqZAo" node="yJsDz8EhEA" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="yJsDz8EhHZ" role="3tpDZA">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <node concept="Xl_RD" id="yJsDz8EhI0" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="yJsDz8EhI1" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8EhFj" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="yJsDz8FRZN" role="3s_gse">
        <property role="3s$Bm0" value="forWithEnd" />
        <node concept="3cqZAl" id="yJsDz8FRZO" role="3clF45" />
        <node concept="3Tm1VV" id="yJsDz8FRZP" role="1B3o_S" />
        <node concept="3clFbS" id="yJsDz8FRZQ" role="3clF47">
          <node concept="1VvQvr" id="yJsDz8FRZR" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FRZS" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="yJsDz8FRZT" role="1tU5fm" />
              <node concept="Xl_RD" id="yJsDz8FRZU" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="yJsDz8FRZV" role="1VvQv6">
              <node concept="2bR_Jt" id="yJsDz8FRZW" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8FRZX" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="yJsDz8FRZY" role="2bR_Ii">
                  <node concept="37vLTw" id="yJsDz8FRZZ" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="yJsDz8FS00" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="yJsDz8FS01" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <property role="2ROMRk" value="&lt;end&gt;" />
                <node concept="2bPkdi" id="yJsDz8FS02" role="2LFqv$">
                  <property role="2RRbnN" value="---" />
                  <node concept="2bR_Jt" id="yJsDz8FS03" role="2bPkdh">
                    <node concept="2bR_Jk" id="yJsDz8FS04" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="yJsDz8FS05" role="2bR_Ii">
                      <node concept="37vLTw" id="yJsDz8FS06" role="2bR_Jm">
                        <ref role="3cqZAo" node="yJsDz8FS09" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="yJsDz8FS07" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FS08" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="yJsDz8FS09" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="yJsDz8FS0a" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="yJsDz8FS0b" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8FS0c" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8FS0d" role="3cqZAp" />
          <node concept="3cpWs8" id="yJsDz8FS0e" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FS0f" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="yJsDz8FS0g" role="1tU5fm" />
              <node concept="3cmrfG" id="yJsDz8FS0h" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="yJsDz8FS0i" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8FS0j" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="yJsDz8FS0k" role="1tU5fm">
                <node concept="17QB3L" id="yJsDz8FS0l" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="yJsDz8FS0m" role="33vP2m">
                <node concept="3$_iS1" id="yJsDz8FS0n" role="2ShVmc">
                  <node concept="3$GHV9" id="yJsDz8FS0o" role="3$GQph">
                    <node concept="3cmrfG" id="yJsDz8FS0p" role="3$I4v7">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="yJsDz8FS0q" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FS0r" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FS0s" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FS0t" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8FS0u" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FS0v" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FS0f" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FS0w" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FS0x" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FS0y" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FS0z" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FS0$" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FS0_" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FS0A" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FS0B" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FS0f" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FS0C" role="37vLTx">
                <property role="Xl_RC" value="    Name is [one]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FS0D" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FS0E" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FS0F" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FS0G" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FS0H" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FS0I" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FS0f" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FS0J" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FS0K" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FS0L" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8FS0M" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8FS0N" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8FS0O" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FS0P" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FS0f" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8FS0Q" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]&lt;end&gt;\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8FS0R" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8FS0S" role="3clFbG">
              <node concept="Xl_RD" id="yJsDz8FS0T" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
              <node concept="AH0OO" id="yJsDz8FS0U" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8FS0V" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8FS0W" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8FS0f" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8FS0X" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8FS0Y" role="3cqZAp" />
          <node concept="3clFbF" id="2zob2wYqibq" role="3cqZAp">
            <node concept="2YIFZM" id="2zob2wYqibr" role="3clFbG">
              <ref role="1Pybhc" node="yJsDz8LUtJ" resolve="TestUtil" />
              <ref role="37wK5l" node="yJsDz8LV3i" resolve="log" />
              <node concept="Xl_RD" id="2zob2wYqibs" role="37wK5m">
                <property role="Xl_RC" value="forSeparator" />
              </node>
              <node concept="37vLTw" id="2zob2wYqibt" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8FRZS" resolve="t1" />
              </node>
              <node concept="2YIFZM" id="2zob2wYqibu" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
                <node concept="Xl_RD" id="2zob2wYqibv" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="2zob2wYqibw" role="37wK5m">
                  <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="yJsDz8FS1l" role="3cqZAp">
            <node concept="37vLTw" id="yJsDz8FS1m" role="3tpDZB">
              <ref role="3cqZAo" node="yJsDz8FRZS" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="yJsDz8FS1n" role="3tpDZA">
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="yJsDz8FS1o" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="yJsDz8FS1p" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8FS0j" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="yJsDz8L5xH" role="3s_gse">
        <property role="3s$Bm0" value="forWithStartSeparatorEnd" />
        <node concept="3cqZAl" id="yJsDz8L5xI" role="3clF45" />
        <node concept="3Tm1VV" id="yJsDz8L5xJ" role="1B3o_S" />
        <node concept="3clFbS" id="yJsDz8L5xK" role="3clF47">
          <node concept="1VvQvr" id="yJsDz8L5xL" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8L5xM" role="3cpWs9">
              <property role="TrG5h" value="t1" />
              <node concept="17QB3L" id="yJsDz8L5xN" role="1tU5fm" />
              <node concept="Xl_RD" id="yJsDz8L5xO" role="33vP2m" />
            </node>
            <node concept="2bPkdi" id="yJsDz8L5xP" role="1VvQv6">
              <node concept="2bR_Jt" id="yJsDz8L5xQ" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8L5xR" role="2bR_Ii">
                  <property role="2bR_ID" value="Test " />
                </node>
                <node concept="2bR_Jh" id="yJsDz8L5xS" role="2bR_Ii">
                  <node concept="37vLTw" id="yJsDz8L5xT" role="2bR_Jm">
                    <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
                  </node>
                </node>
                <node concept="2bR_Jk" id="yJsDz8L5xU" role="2bR_Ii">
                  <property role="2bR_ID" value=" insertion." />
                </node>
              </node>
              <node concept="2bM0UA" id="yJsDz8L5xV" role="2bPkdh">
                <property role="1cXfaj" value="    " />
                <property role="2ROMRh" value="&lt;s&gt;" />
                <property role="2RYUZ3" value="&lt;sep&gt;" />
                <property role="2ROMRk" value="&lt;end&gt;" />
                <node concept="2bPkdi" id="yJsDz8L5xW" role="2LFqv$">
                  <node concept="2bR_Jt" id="yJsDz8L5xX" role="2bPkdh">
                    <node concept="2bR_Jk" id="yJsDz8L5xY" role="2bR_Ii">
                      <property role="2bR_ID" value="Name is [" />
                    </node>
                    <node concept="2bR_Jh" id="yJsDz8L5xZ" role="2bR_Ii">
                      <node concept="37vLTw" id="yJsDz8L5y0" role="2bR_Jm">
                        <ref role="3cqZAo" node="yJsDz8L5yl" resolve="s" />
                      </node>
                    </node>
                    <node concept="2bR_Jk" id="yJsDz8L5y1" role="2bR_Ii">
                      <property role="2bR_ID" value="]" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8L5yk" role="1DdaDG">
                  <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
                </node>
                <node concept="3cpWsn" id="yJsDz8L5yl" role="1Duv9x">
                  <property role="TrG5h" value="s" />
                  <node concept="17QB3L" id="yJsDz8L5ym" role="1tU5fm" />
                </node>
              </node>
              <node concept="2bR_Jt" id="yJsDz8L5yn" role="2bPkdh">
                <node concept="2bR_Jk" id="yJsDz8L5yo" role="2bR_Ii">
                  <property role="2bR_ID" value="After loop" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8L5yp" role="3cqZAp" />
          <node concept="3cpWs8" id="yJsDz8L5yq" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8L5yr" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="yJsDz8L5ys" role="1tU5fm" />
              <node concept="3cmrfG" id="yJsDz8L5yt" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="yJsDz8L5yu" role="3cqZAp">
            <node concept="3cpWsn" id="yJsDz8L5yv" role="3cpWs9">
              <property role="TrG5h" value="lines" />
              <node concept="10Q1$e" id="yJsDz8L5yw" role="1tU5fm">
                <node concept="17QB3L" id="yJsDz8L5yx" role="10Q1$1" />
              </node>
              <node concept="2ShNRf" id="yJsDz8L5yy" role="33vP2m">
                <node concept="3$_iS1" id="yJsDz8L5yz" role="2ShVmc">
                  <node concept="3$GHV9" id="yJsDz8L5y$" role="3$GQph">
                    <node concept="3cmrfG" id="yJsDz8L5y_" role="3$I4v7">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="yJsDz8L5yA" role="3$_nBY" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8L5yB" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8L5yC" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8L5yD" role="37vLTJ">
                <node concept="3uNrnE" id="yJsDz8L5yE" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8L5yF" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8L5yr" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="yJsDz8L5yG" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8L5yH" role="37vLTx">
                <property role="Xl_RC" value="Test variable-string insertion.\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8L5yI" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8L5yJ" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8L5yK" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8L5yL" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8L5yM" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8L5yN" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8L5yr" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8L5yO" role="37vLTx">
                <property role="Xl_RC" value="    &lt;s&gt;Name is [one]&lt;sep&gt;\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8L5zv" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8L5zw" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8L5zx" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8L5zy" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8L5zz" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8L5z$" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8L5yr" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8L5z_" role="37vLTx">
                <property role="Xl_RC" value="    Name is [two]&lt;sep&gt;\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8L5$g" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8L5$h" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8L5$i" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8L5$j" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8L5$k" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8L5$l" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8L5yr" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8L5$m" role="37vLTx">
                <property role="Xl_RC" value="    Name is [three]&lt;end&gt;\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="yJsDz8L5_1" role="3cqZAp">
            <node concept="37vLTI" id="yJsDz8L5_2" role="3clFbG">
              <node concept="AH0OO" id="yJsDz8L5_3" role="37vLTJ">
                <node concept="37vLTw" id="yJsDz8L5_4" role="AHHXb">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
                <node concept="3uNrnE" id="yJsDz8L5_5" role="AHEQo">
                  <node concept="37vLTw" id="yJsDz8L5_6" role="2$L3a6">
                    <ref role="3cqZAo" node="yJsDz8L5yr" resolve="i" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="yJsDz8L5_7" role="37vLTx">
                <property role="Xl_RC" value="After loop\n" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="yJsDz8L5_8" role="3cqZAp" />
          <node concept="3clFbF" id="2zob2wYqjlH" role="3cqZAp">
            <node concept="2YIFZM" id="2zob2wYqjlI" role="3clFbG">
              <ref role="1Pybhc" node="yJsDz8LUtJ" resolve="TestUtil" />
              <ref role="37wK5l" node="yJsDz8LV3i" resolve="log" />
              <node concept="Xl_RD" id="2zob2wYqjlJ" role="37wK5m">
                <property role="Xl_RC" value="forSeparator" />
              </node>
              <node concept="37vLTw" id="2zob2wYqjlK" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8L5xM" resolve="t1" />
              </node>
              <node concept="2YIFZM" id="2zob2wYqjlL" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
                <node concept="Xl_RD" id="2zob2wYqjlM" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="2zob2wYqjlN" role="37wK5m">
                  <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="yJsDz8L5_9" role="3cqZAp">
            <node concept="37vLTw" id="yJsDz8L5_a" role="3tpDZB">
              <ref role="3cqZAo" node="yJsDz8L5xM" resolve="t1" />
            </node>
            <node concept="2YIFZM" id="yJsDz8L5_b" role="3tpDZA">
              <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.CharSequence...)" resolve="join" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="Xl_RD" id="yJsDz8L5_c" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="yJsDz8L5_d" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8L5yv" resolve="lines" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="3V8bJPMClZa" role="1KhZu4">
      <node concept="3clFbS" id="3V8bJPMClZb" role="2VODD2">
        <node concept="3clFbF" id="3V8bJPMCm2P" role="3cqZAp">
          <node concept="37vLTI" id="3V8bJPMCmmK" role="3clFbG">
            <node concept="Xl_RD" id="3V8bJPMCmoN" role="37vLTx">
              <property role="Xl_RC" value="variable-string" />
            </node>
            <node concept="37vLTw" id="3V8bJPMCm2O" role="37vLTJ">
              <ref role="3cqZAo" node="3V8bJPMClTw" resolve="variable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V8bJPMEqah" role="3cqZAp">
          <node concept="37vLTI" id="3V8bJPMEqai" role="3clFbG">
            <node concept="2ShNRf" id="3V8bJPMEqaj" role="37vLTx">
              <node concept="1pGfFk" id="3V8bJPMEqak" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="17QB3L" id="3V8bJPMEqal" role="1pMfVU" />
              </node>
            </node>
            <node concept="37vLTw" id="3V8bJPMErwA" role="37vLTJ">
              <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V8bJPMEqan" role="3cqZAp">
          <node concept="2OqwBi" id="3V8bJPMEqao" role="3clFbG">
            <node concept="37vLTw" id="3V8bJPMErQm" role="2Oq$k0">
              <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
            </node>
            <node concept="liA8E" id="3V8bJPMEqaq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="3V8bJPMEqar" role="37wK5m">
                <property role="Xl_RC" value="one" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V8bJPMEqas" role="3cqZAp">
          <node concept="2OqwBi" id="3V8bJPMEqat" role="3clFbG">
            <node concept="37vLTw" id="3V8bJPMEs3q" role="2Oq$k0">
              <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
            </node>
            <node concept="liA8E" id="3V8bJPMEqav" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="3V8bJPMEqaw" role="37wK5m">
                <property role="Xl_RC" value="two" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3V8bJPMEqax" role="3cqZAp">
          <node concept="2OqwBi" id="3V8bJPMEqay" role="3clFbG">
            <node concept="37vLTw" id="3V8bJPMEshk" role="2Oq$k0">
              <ref role="3cqZAo" node="3V8bJPMEmhT" resolve="names" />
            </node>
            <node concept="liA8E" id="3V8bJPMEqa$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="Xl_RD" id="3V8bJPMEqa_" role="37wK5m">
                <property role="Xl_RC" value="three" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="yJsDz8LUtJ">
    <property role="TrG5h" value="TestUtil" />
    <node concept="2YIFZL" id="yJsDz8LV3i" role="jymVt">
      <property role="TrG5h" value="log" />
      <node concept="3clFbS" id="yJsDz8LV3l" role="3clF47">
        <node concept="3clFbF" id="yJsDz8LXNu" role="3cqZAp">
          <node concept="2OqwBi" id="yJsDz8LXNv" role="3clFbG">
            <node concept="10M0yZ" id="yJsDz8LXNw" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="yJsDz8LXNx" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="yJsDz8LXNy" role="37wK5m">
                <node concept="Xl_RD" id="yJsDz8LXNz" role="3uHU7w">
                  <property role="Xl_RC" value=" ==================" />
                </node>
                <node concept="3cpWs3" id="yJsDz8LXN$" role="3uHU7B">
                  <node concept="Xl_RD" id="yJsDz8LXN_" role="3uHU7B">
                    <property role="Xl_RC" value="============ Actual " />
                  </node>
                  <node concept="37vLTw" id="yJsDz8LXNA" role="3uHU7w">
                    <ref role="3cqZAo" node="yJsDz8LV5U" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yJsDz8LYZk" role="3cqZAp">
          <node concept="2OqwBi" id="yJsDz8LYZh" role="3clFbG">
            <node concept="10M0yZ" id="yJsDz8LYZi" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="yJsDz8LYZj" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="yJsDz8LZl2" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8LV9T" resolve="s1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yJsDz8LVrz" role="3cqZAp">
          <node concept="2OqwBi" id="yJsDz8LVrw" role="3clFbG">
            <node concept="10M0yZ" id="yJsDz8LVrx" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="yJsDz8LVry" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="yJsDz8LWDK" role="37wK5m">
                <node concept="Xl_RD" id="yJsDz8LWQd" role="3uHU7w">
                  <property role="Xl_RC" value=" ==================" />
                </node>
                <node concept="3cpWs3" id="yJsDz8LW8J" role="3uHU7B">
                  <node concept="Xl_RD" id="yJsDz8LVvg" role="3uHU7B">
                    <property role="Xl_RC" value="============ Expected " />
                  </node>
                  <node concept="37vLTw" id="yJsDz8LWdk" role="3uHU7w">
                    <ref role="3cqZAo" node="yJsDz8LV5U" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="yJsDz8LZPH" role="3cqZAp">
          <node concept="2OqwBi" id="yJsDz8LZPE" role="3clFbG">
            <node concept="10M0yZ" id="yJsDz8LZPF" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="yJsDz8LZPG" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="37vLTw" id="yJsDz8M0ci" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8LVhW" resolve="s2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yJsDz8LUZ5" role="1B3o_S" />
      <node concept="3cqZAl" id="yJsDz8LV1q" role="3clF45" />
      <node concept="37vLTG" id="yJsDz8LV5U" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="yJsDz8LV5T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="yJsDz8LV9T" role="3clF46">
        <property role="TrG5h" value="s1" />
        <node concept="17QB3L" id="yJsDz8LVcw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="yJsDz8LVhW" role="3clF46">
        <property role="TrG5h" value="s2" />
        <node concept="17QB3L" id="yJsDz8LVjM" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="yJsDz8LUtK" role="1B3o_S" />
  </node>
</model>

