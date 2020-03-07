<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ae19249-b5cc-42be-affe-041af14add37(BaseTemplate.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="0" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="if8w" ref="r:95397225-9080-48bc-b1aa-0ce7c4f3d2ce(jetbrains.mps.lang.traceable.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="kt01" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.datatransfer(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="2ox9" ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes">
      <concept id="8077936094962944991" name="jetbrains.mps.lang.scopes.structure.ComeFromExpression" flags="nn" index="iy1fb">
        <reference id="8077936094962945822" name="link" index="iy1sa" />
      </concept>
      <concept id="8077936094962911282" name="jetbrains.mps.lang.scopes.structure.ParentScope" flags="nn" index="iy90A" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
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
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="1143224066846" name="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" flags="nn" index="HtI8k">
        <child id="1143224066849" name="insertedNode" index="HtI8F" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="6EV$eJxt0nW">
    <ref role="13h7C2" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="13hLZK" id="6EV$eJxt0nX" role="13h7CW">
      <node concept="3clFbS" id="6EV$eJxt0nY" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2a$QO9k_z3_" role="13h7CS">
      <property role="TrG5h" value="getScopeVariables" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" to="if8w:4pl5GY7LKmA" resolve="getScopeVariables" />
      <node concept="3Tm1VV" id="2a$QO9k_z3A" role="1B3o_S" />
      <node concept="3clFbS" id="2a$QO9k_z3B" role="3clF47">
        <node concept="3cpWs6" id="2a$QO9k_z3C" role="3cqZAp">
          <node concept="2ShNRf" id="2a$QO9k_z3D" role="3cqZAk">
            <node concept="Tc6Ow" id="2a$QO9k_z3E" role="2ShVmc">
              <node concept="3Tqbb2" id="2a$QO9k_z3F" role="HW$YZ">
                <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
              </node>
              <node concept="2OqwBi" id="2a$QO9k_z3G" role="HW$Y0">
                <node concept="13iPFW" id="2a$QO9k_z3K" role="2Oq$k0" />
                <node concept="3TrEf2" id="2a$QO9k_z3I" role="2OqNvi">
                  <ref role="3Tt5mk" to="2ox9:gDDuvdF" resolve="variable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2a$QO9k_z3J" role="3clF45">
        <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="13i0hz" id="6oIBdQGQEUC" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="TrG5h" value="getScope" />
      <property role="13i0it" value="false" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="6oIBdQGQEUD" role="1B3o_S" />
      <node concept="3clFbS" id="6oIBdQGQEUE" role="3clF47">
        <node concept="3clFbJ" id="6oIBdQGQEUT" role="3cqZAp">
          <node concept="2OqwBi" id="gVddlT4Sdy" role="3clFbw">
            <node concept="37vLTw" id="42Bx8VbD0wp" role="2Oq$k0">
              <ref role="3cqZAo" node="6oIBdQGQEUF" resolve="kind" />
            </node>
            <node concept="3O6GUB" id="gVddlT4SdC" role="2OqNvi">
              <node concept="chp4Y" id="gVddlT4SdE" role="3QVz_e">
                <ref role="cht4Q" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6oIBdQGQEUU" role="3clFbx">
            <node concept="3clFbJ" id="6oIBdQGQEV9" role="3cqZAp">
              <node concept="3clFbS" id="6oIBdQGQEVa" role="3clFbx">
                <node concept="3cpWs6" id="3A2qfoxXvCf" role="3cqZAp">
                  <node concept="2YIFZM" id="3A2qfoxXvCj" role="3cqZAk">
                    <ref role="1Pybhc" to="fnmy:3A2qfoxVUBF" resolve="Scopes" />
                    <ref role="37wK5l" to="fnmy:6Kqn2fZyoY_" resolve="forVariables" />
                    <node concept="37vLTw" id="42Bx8VbD0ws" role="37wK5m">
                      <ref role="3cqZAo" node="6oIBdQGQEUF" resolve="kind" />
                    </node>
                    <node concept="2OqwBi" id="3A2qfoxXvCB" role="37wK5m">
                      <node concept="13iPFW" id="3A2qfoxXvCm" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3A2qfoxXvCG" role="2OqNvi">
                        <ref role="3Tt5mk" to="2ox9:gDDuvdF" resolve="variable" />
                      </node>
                    </node>
                    <node concept="iy90A" id="3A2qfoxXvCI" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="iy1fb" id="32q8Ak4j9xB" role="3clFbw">
                <ref role="iy1sa" to="2ox9:gMLFqrC" resolve="body" />
              </node>
              <node concept="9aQIb" id="6wd6Ayore9K" role="9aQIa">
                <node concept="3clFbS" id="6wd6Ayore9L" role="9aQI4">
                  <node concept="3cpWs6" id="6wd6Ayore9M" role="3cqZAp">
                    <node concept="iy90A" id="6wd6Ayore9O" role="3cqZAk" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EV$eJxt70O" role="3cqZAp">
          <node concept="3cpWsn" id="6EV$eJxt70R" role="3cpWs9">
            <property role="TrG5h" value="parentWithScope" />
            <node concept="3Tqbb2" id="6EV$eJxt70M" role="1tU5fm">
              <ref role="ehGHo" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="2OqwBi" id="6EV$eJxt7mf" role="33vP2m">
              <node concept="13iPFW" id="6EV$eJxt7mg" role="2Oq$k0" />
              <node concept="2Xjw5R" id="6EV$eJxt7mh" role="2OqNvi">
                <node concept="1xMEDy" id="6EV$eJxt7mi" role="1xVPHs">
                  <node concept="chp4Y" id="6EV$eJxt7mj" role="ri$Ld">
                    <ref role="cht4Q" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6EV$eJxt7Pu" role="3cqZAp">
          <node concept="2OqwBi" id="6EV$eJxt8d8" role="3clFbG">
            <node concept="37vLTw" id="6EV$eJxt7Ps" role="2Oq$k0">
              <ref role="3cqZAo" node="6EV$eJxt70R" resolve="parentWithScope" />
            </node>
            <node concept="2qgKlT" id="6EV$eJxt8pT" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QDV$" resolve="getScope" />
              <node concept="37vLTw" id="6EV$eJxt8uG" role="37wK5m">
                <ref role="3cqZAo" node="6oIBdQGQEUF" resolve="kind" />
              </node>
              <node concept="37vLTw" id="6EV$eJxt8Hc" role="37wK5m">
                <ref role="3cqZAo" node="6oIBdQGQEUH" resolve="child" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6oIBdQGQEUF" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="42Bx8VbD0wn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6oIBdQGQEUH" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="6oIBdQGQEUI" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6oIBdQGQEUJ" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="7mU70b2uziq" role="13h7CS">
      <property role="TrG5h" value="end" />
      <ref role="13i0hy" node="7mU70b2rtRY" resolve="end" />
      <node concept="3Tm1VV" id="7mU70b2uzir" role="1B3o_S" />
      <node concept="3clFbS" id="7mU70b2uziw" role="3clF47">
        <node concept="3clFbJ" id="7mU70b2uzKY" role="3cqZAp">
          <node concept="3clFbS" id="7mU70b2uzL0" role="3clFbx">
            <node concept="3cpWs6" id="7mU70b2uC_$" role="3cqZAp">
              <node concept="2OqwBi" id="7mU70b2uCOR" role="3cqZAk">
                <node concept="13iAh5" id="7mU70b2uCOS" role="2Oq$k0">
                  <ref role="3eA5LN" to="2ox9:7mU70b2rtRp" resolve="TemplateSeparators" />
                </node>
                <node concept="2qgKlT" id="7mU70b2uCOT" role="2OqNvi">
                  <ref role="37wK5l" node="7mU70b2rtRY" resolve="end" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7mU70b2u$Sw" role="3clFbw">
            <node concept="2OqwBi" id="7mU70b2u$6E" role="2Oq$k0">
              <node concept="13iPFW" id="7mU70b2uzPd" role="2Oq$k0" />
              <node concept="3TrcHB" id="7mU70b2u$yV" role="2OqNvi">
                <ref role="3TsBF5" to="2ox9:7mU70b2qj7m" resolve="end" />
              </node>
            </node>
            <node concept="17RlXB" id="7mU70b2u_Dx" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="7mU70b2uAdH" role="9aQIa">
            <node concept="3clFbS" id="7mU70b2uAdI" role="9aQI4">
              <node concept="3cpWs6" id="7mU70b2uBl9" role="3cqZAp">
                <node concept="3cpWs3" id="7mU70b2wTPc" role="3cqZAk">
                  <node concept="Xl_RD" id="7mU70b2wTWv" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;FOR&gt;" />
                  </node>
                  <node concept="2OqwBi" id="7mU70b2uBDQ" role="3uHU7w">
                    <node concept="13iPFW" id="7mU70b2uBlt" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7mU70b2uCqt" role="2OqNvi">
                      <ref role="3TsBF5" to="2ox9:7mU70b2qj7m" resolve="end" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7mU70b2uzix" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="7qKxkmkAo$">
    <ref role="13h7C2" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
    <node concept="13hLZK" id="7qKxkmkAo_" role="13h7CW">
      <node concept="3clFbS" id="7qKxkmkAoA" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7mU70b2ryzn" role="13h7CS">
      <property role="TrG5h" value="end" />
      <ref role="13i0hy" node="7mU70b2rtRY" resolve="end" />
      <node concept="3Tm1VV" id="7mU70b2ryzo" role="1B3o_S" />
      <node concept="3clFbS" id="7mU70b2ryzt" role="3clF47">
        <node concept="3cpWs8" id="7mU70b2ryQm" role="3cqZAp">
          <node concept="3cpWsn" id="7mU70b2ryQp" role="3cpWs9">
            <property role="TrG5h" value="forst" />
            <node concept="3Tqbb2" id="7mU70b2ryQh" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
            </node>
            <node concept="2OqwBi" id="7mU70b2rz38" role="33vP2m">
              <node concept="13iPFW" id="7mU70b2ryRy" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7mU70b2rzzL" role="2OqNvi">
                <node concept="1xMEDy" id="7mU70b2rzzN" role="1xVPHs">
                  <node concept="chp4Y" id="7mU70b2rzA4" role="ri$Ld">
                    <ref role="cht4Q" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mU70b2rzCh" role="3cqZAp">
          <node concept="3clFbS" id="7mU70b2rzCj" role="3clFbx">
            <node concept="3cpWs6" id="7mU70b2rB1D" role="3cqZAp">
              <node concept="2OqwBi" id="7mU70b2rBiS" role="3cqZAk">
                <node concept="13iAh5" id="7mU70b2rB5d" role="2Oq$k0">
                  <ref role="3eA5LN" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
                </node>
                <node concept="2qgKlT" id="7mU70b2rBMi" role="2OqNvi">
                  <ref role="37wK5l" node="7mU70b2rtRY" resolve="end" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7mU70b2rzQI" role="3clFbw">
            <node concept="37vLTw" id="7mU70b2rzD6" role="2Oq$k0">
              <ref role="3cqZAo" node="7mU70b2ryQp" resolve="forst" />
            </node>
            <node concept="3w_OXm" id="7mU70b2rAYI" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="7mU70b2rBUZ" role="9aQIa">
            <node concept="3clFbS" id="7mU70b2rBV0" role="9aQI4">
              <node concept="3cpWs6" id="7mU70b2rC2w" role="3cqZAp">
                <node concept="3cpWs3" id="7mU70b2E5MK" role="3cqZAk">
                  <node concept="Xl_RD" id="7mU70b2E5Z3" role="3uHU7B">
                    <property role="Xl_RC" value="&lt;TEXT-FOR&gt;" />
                  </node>
                  <node concept="2OqwBi" id="7mU70b2rCvh" role="3uHU7w">
                    <node concept="37vLTw" id="7mU70b2rCai" role="2Oq$k0">
                      <ref role="3cqZAo" node="7mU70b2ryQp" resolve="forst" />
                    </node>
                    <node concept="2qgKlT" id="7mU70b2rFI$" role="2OqNvi">
                      <ref role="37wK5l" node="7mU70b2rtRY" resolve="end" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="7mU70b2ryzu" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4AafYjl6cFZ">
    <property role="3GE5qa" value="" />
    <ref role="13h7C2" to="2ox9:7qKxkmjvUp" resolve="TemplateSwitchStatement" />
    <node concept="13hLZK" id="4AafYjl6cG0" role="13h7CW">
      <node concept="3clFbS" id="4AafYjl6cG1" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="3bf11hdNzr0">
    <property role="TrG5h" value="PlaintextPaster" />
    <node concept="2YIFZL" id="3bf11hdO7p6" role="jymVt">
      <property role="TrG5h" value="getStringFromClipboard" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4TtYrYGuXny" role="3clF47">
        <node concept="3cpWs8" id="4TtYrYGuXnz" role="3cqZAp">
          <node concept="3cpWsn" id="4TtYrYGuXn$" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="3uibUv" id="4TtYrYGuXn_" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
            <node concept="10Nm6u" id="4TtYrYGuXnA" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="3bf11hdOziX" role="3cqZAp" />
        <node concept="1DcWWT" id="4TtYrYGuXnB" role="3cqZAp">
          <node concept="2OqwBi" id="4TtYrYGuXnC" role="1DdaDG">
            <node concept="2YIFZM" id="4TtYrYGuXnD" role="2Oq$k0">
              <ref role="1Pybhc" to="ddhc:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getInstanceEx()" resolve="getInstanceEx" />
            </node>
            <node concept="liA8E" id="4TtYrYGuXnE" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~CopyPasteManagerEx.getAllContents()" resolve="getAllContents" />
            </node>
          </node>
          <node concept="3cpWsn" id="4TtYrYGuXnF" role="1Duv9x">
            <property role="TrG5h" value="trf" />
            <node concept="3uibUv" id="4TtYrYGuXnG" role="1tU5fm">
              <ref role="3uigEE" to="kt01:~Transferable" resolve="Transferable" />
            </node>
          </node>
          <node concept="3clFbS" id="4TtYrYGuXnH" role="2LFqv$">
            <node concept="3clFbJ" id="4TtYrYGuXnI" role="3cqZAp">
              <node concept="1Wc70l" id="4TtYrYGuXnJ" role="3clFbw">
                <node concept="3y3z36" id="4TtYrYGuXnK" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTAy8" role="3uHU7B">
                    <ref role="3cqZAo" node="4TtYrYGuXnF" resolve="trf" />
                  </node>
                  <node concept="10Nm6u" id="4TtYrYGuXnM" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="4TtYrYGuXnN" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagT$tE" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TtYrYGuXnF" resolve="trf" />
                  </node>
                  <node concept="liA8E" id="4TtYrYGuXnP" role="2OqNvi">
                    <ref role="37wK5l" to="kt01:~Transferable.isDataFlavorSupported(java.awt.datatransfer.DataFlavor)" resolve="isDataFlavorSupported" />
                    <node concept="10M0yZ" id="4TtYrYGuXnQ" role="37wK5m">
                      <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                      <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4TtYrYGuXnR" role="3clFbx">
                <node concept="3clFbF" id="4TtYrYGuXnS" role="3cqZAp">
                  <node concept="37vLTI" id="4TtYrYGuXnT" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT$UD" role="37vLTJ">
                      <ref role="3cqZAo" node="4TtYrYGuXn$" resolve="contents" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzMG" role="37vLTx">
                      <ref role="3cqZAo" node="4TtYrYGuXnF" resolve="trf" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zACq4" id="4TtYrYGuXnW" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbJ" id="4TtYrYGuXnX" role="3cqZAp">
          <node concept="3clFbS" id="4TtYrYGuXo1" role="3clFbx">
            <node concept="3cpWs6" id="4TtYrYGuXo2" role="3cqZAp">
              <node concept="10Nm6u" id="4TtYrYGuXo3" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4TtYrYGuXnY" role="3clFbw">
            <node concept="10Nm6u" id="4TtYrYGuXo0" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvgX" role="3uHU7B">
              <ref role="3cqZAo" node="4TtYrYGuXn$" resolve="contents" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4TtYrYGuXo4" role="3cqZAp">
          <node concept="3clFbS" id="4TtYrYGuXo9" role="3clFbx">
            <node concept="SfApY" id="4TtYrYGuXoa" role="3cqZAp">
              <node concept="3clFbS" id="4TtYrYGuXoq" role="SfCbr">
                <node concept="3cpWs8" id="4TtYrYGuXor" role="3cqZAp">
                  <node concept="3cpWsn" id="4TtYrYGuXos" role="3cpWs9">
                    <property role="TrG5h" value="data" />
                    <node concept="3uibUv" id="4TtYrYGuXot" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="4TtYrYGuXou" role="33vP2m">
                      <node concept="liA8E" id="4TtYrYGuXow" role="2OqNvi">
                        <ref role="37wK5l" to="kt01:~Transferable.getTransferData(java.awt.datatransfer.DataFlavor)" resolve="getTransferData" />
                        <node concept="10M0yZ" id="4TtYrYGuXox" role="37wK5m">
                          <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                          <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTBVU" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TtYrYGuXn$" resolve="contents" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4TtYrYGuXoy" role="3cqZAp">
                  <node concept="2ZW3vV" id="4TtYrYGuXoz" role="3clFbw">
                    <node concept="37vLTw" id="3GM_nagTxJg" role="2ZW6bz">
                      <ref role="3cqZAo" node="4TtYrYGuXos" resolve="data" />
                    </node>
                    <node concept="17QB3L" id="6gwxh6GbYK$" role="2ZW6by" />
                  </node>
                  <node concept="3clFbS" id="4TtYrYGuXoA" role="3clFbx">
                    <node concept="3cpWs6" id="4TtYrYGuXoB" role="3cqZAp">
                      <node concept="10QFUN" id="4TtYrYGuXoC" role="3cqZAk">
                        <node concept="17QB3L" id="6gwxh6GbYAc" role="10QFUM" />
                        <node concept="37vLTw" id="3GM_nagTAjr" role="10QFUP">
                          <ref role="3cqZAo" node="4TtYrYGuXos" resolve="data" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="4TtYrYGuXob" role="TEbGg">
                <node concept="3clFbS" id="4TtYrYGuXoc" role="TDEfX">
                  <node concept="3cpWs6" id="4TtYrYGuXod" role="3cqZAp">
                    <node concept="10Nm6u" id="4TtYrYGuXoe" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3cpWsn" id="4TtYrYGuXof" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="4TtYrYGuXog" role="1tU5fm">
                    <ref role="3uigEE" to="kt01:~UnsupportedFlavorException" resolve="UnsupportedFlavorException" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="4TtYrYGuXoh" role="TEbGg">
                <node concept="3cpWsn" id="4TtYrYGuXoo" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="4TtYrYGuXop" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="4TtYrYGuXoi" role="TDEfX">
                  <node concept="2xdQw9" id="7OK$UMc1xnw" role="3cqZAp">
                    <property role="2xdLsb" value="gZ5fh_4/error" />
                    <node concept="Xl_RD" id="3bf11hdNZKH" role="9lYJi">
                      <property role="Xl_RC" value="Pasting from clipboard went wrong!" />
                    </node>
                    <node concept="37vLTw" id="3bf11hdNZKJ" role="9lYJj">
                      <ref role="3cqZAo" node="4TtYrYGuXoo" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4TtYrYGuXo5" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT$zW" role="2Oq$k0">
              <ref role="3cqZAo" node="4TtYrYGuXn$" resolve="contents" />
            </node>
            <node concept="liA8E" id="4TtYrYGuXo7" role="2OqNvi">
              <ref role="37wK5l" to="kt01:~Transferable.isDataFlavorSupported(java.awt.datatransfer.DataFlavor)" resolve="isDataFlavorSupported" />
              <node concept="10M0yZ" id="4TtYrYGuXo8" role="37wK5m">
                <ref role="3cqZAo" to="kt01:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                <ref role="1PxDUh" to="kt01:~DataFlavor" resolve="DataFlavor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4TtYrYGuXoF" role="3cqZAp">
          <node concept="10Nm6u" id="4TtYrYGuXoG" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="6gwxh6GbYrO" role="3clF45" />
      <node concept="3Tm1VV" id="4TtYrYGuXnw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gwxh6GbZbF" role="jymVt" />
    <node concept="2YIFZL" id="3bf11hdO7A2" role="jymVt">
      <property role="TrG5h" value="pastePlainText" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3bf11hdO0xL" role="3clF47">
        <node concept="3cpWs8" id="3bf11hdO0MU" role="3cqZAp">
          <node concept="3cpWsn" id="3bf11hdO0MV" role="3cpWs9">
            <property role="TrG5h" value="text" />
            <node concept="17QB3L" id="KbPw5FdNps" role="1tU5fm" />
            <node concept="1rXfSq" id="3bf11hdO0NM" role="33vP2m">
              <ref role="37wK5l" node="3bf11hdO7p6" resolve="getStringFromClipboard" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4AafYjm6cRg" role="3cqZAp">
          <node concept="3cpWsn" id="4AafYjm6cRj" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="4AafYjm6cRe" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
            </node>
            <node concept="37vLTw" id="4AafYjm6d4P" role="33vP2m">
              <ref role="3cqZAo" node="3bf11hdO0WC" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="KbPw5Fc34t" role="3cqZAp">
          <node concept="3clFbS" id="KbPw5Fc34v" role="3clFbx">
            <node concept="2Gpval" id="3bf11hdO25r" role="3cqZAp">
              <node concept="2GrKxI" id="3bf11hdO25t" role="2Gsz3X">
                <property role="TrG5h" value="line" />
              </node>
              <node concept="2OqwBi" id="3bf11hdO2zX" role="2GsD0m">
                <node concept="37vLTw" id="3bf11hdO2x2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bf11hdO0MV" resolve="text" />
                </node>
                <node concept="liA8E" id="3bf11hdO2En" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                  <node concept="Xl_RD" id="3bf11hdO2Fn" role="37wK5m">
                    <property role="Xl_RC" value="\\r?\\n" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3bf11hdO25x" role="2LFqv$">
                <node concept="3cpWs8" id="4AafYjm5TxR" role="3cqZAp">
                  <node concept="3cpWsn" id="4AafYjm5TxS" role="3cpWs9">
                    <property role="TrG5h" value="l" />
                    <node concept="17QB3L" id="4AafYjm5TxT" role="1tU5fm" />
                    <node concept="2OqwBi" id="4AafYjm5TxU" role="33vP2m">
                      <node concept="2GrUjf" id="4AafYjm5TxV" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3bf11hdO25t" resolve="line" />
                      </node>
                      <node concept="liA8E" id="4AafYjm5TxW" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
                        <node concept="Xl_RD" id="4AafYjm5TxX" role="37wK5m">
                          <property role="Xl_RC" value="\t" />
                        </node>
                        <node concept="Xl_RD" id="4AafYjm5TxY" role="37wK5m">
                          <property role="Xl_RC" value="    " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7fu6WF7Ab9C" role="3cqZAp">
                  <node concept="3clFbS" id="7fu6WF7Ab9E" role="3clFbx">
                    <node concept="3cpWs8" id="3bf11hdNbyg" role="3cqZAp">
                      <node concept="3cpWsn" id="3bf11hdNbyj" role="3cpWs9">
                        <property role="TrG5h" value="lineNode" />
                        <node concept="3Tqbb2" id="3bf11hdNbye" role="1tU5fm">
                          <ref role="ehGHo" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
                        </node>
                        <node concept="2ShNRf" id="3bf11hdNb$n" role="33vP2m">
                          <node concept="3zrR0B" id="3bf11hdNb$h" role="2ShVmc">
                            <node concept="3Tqbb2" id="3bf11hdNb$i" role="3zrR0E">
                              <ref role="ehGHo" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="4AafYjm5bfb" role="3cqZAp">
                      <node concept="3cpWsn" id="4AafYjm5bfe" role="3cpWs9">
                        <property role="TrG5h" value="word" />
                        <node concept="3Tqbb2" id="4AafYjm5bf9" role="1tU5fm">
                          <ref role="ehGHo" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
                        </node>
                        <node concept="2OqwBi" id="4AafYjm5hZr" role="33vP2m">
                          <node concept="2OqwBi" id="4AafYjm5d0Y" role="2Oq$k0">
                            <node concept="37vLTw" id="4AafYjm5cOC" role="2Oq$k0">
                              <ref role="3cqZAo" node="3bf11hdNbyj" resolve="lineNode" />
                            </node>
                            <node concept="3Tsc0h" id="4AafYjm5g7S" role="2OqNvi">
                              <ref role="3TtcxE" to="2ox9:6EV$eJxpsHT" resolve="words" />
                            </node>
                          </node>
                          <node concept="WFELt" id="4AafYjm5j7x" role="2OqNvi">
                            <ref role="1A0vxQ" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4AafYjm5myw" role="3cqZAp">
                      <node concept="37vLTI" id="4AafYjm5RAQ" role="3clFbG">
                        <node concept="37vLTw" id="4AafYjm5Vho" role="37vLTx">
                          <ref role="3cqZAo" node="4AafYjm5TxS" resolve="l" />
                        </node>
                        <node concept="2OqwBi" id="4AafYjm5o5y" role="37vLTJ">
                          <node concept="37vLTw" id="4AafYjm5myu" role="2Oq$k0">
                            <ref role="3cqZAo" node="4AafYjm5bfe" resolve="word" />
                          </node>
                          <node concept="3TrcHB" id="4AafYjm5oii" role="2OqNvi">
                            <ref role="3TsBF5" to="2ox9:6EV$eJxpsH2" resolve="text" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4AafYjm6dnl" role="3cqZAp">
                      <node concept="37vLTI" id="4AafYjm6dFd" role="3clFbG">
                        <node concept="37vLTw" id="4AafYjm6dnj" role="37vLTJ">
                          <ref role="3cqZAo" node="4AafYjm6cRj" resolve="current" />
                        </node>
                        <node concept="2OqwBi" id="4AafYjm6dN8" role="37vLTx">
                          <node concept="37vLTw" id="4AafYjm6dN9" role="2Oq$k0">
                            <ref role="3cqZAo" node="4AafYjm6cRj" resolve="current" />
                          </node>
                          <node concept="HtI8k" id="4AafYjm6dNa" role="2OqNvi">
                            <node concept="37vLTw" id="4AafYjm6dNb" role="HtI8F">
                              <ref role="3cqZAo" node="3bf11hdNbyj" resolve="lineNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7fu6WF7Abwl" role="3clFbw">
                    <node concept="37vLTw" id="7fu6WF7AbaS" role="2Oq$k0">
                      <ref role="3cqZAo" node="4AafYjm5TxS" resolve="l" />
                    </node>
                    <node concept="17RvpY" id="7fu6WF7AMtM" role="2OqNvi" />
                  </node>
                  <node concept="9aQIb" id="7fu6WF7ANMT" role="9aQIa">
                    <node concept="3clFbS" id="7fu6WF7ANMU" role="9aQI4">
                      <node concept="3cpWs8" id="7fu6WF7ANNB" role="3cqZAp">
                        <node concept="3cpWsn" id="7fu6WF7ANNE" role="3cpWs9">
                          <property role="TrG5h" value="stat" />
                          <node concept="3Tqbb2" id="7fu6WF7ANNA" role="1tU5fm">
                            <ref role="ehGHo" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
                          </node>
                          <node concept="2ShNRf" id="7fu6WF7ANP4" role="33vP2m">
                            <node concept="3zrR0B" id="7fu6WF7ANOR" role="2ShVmc">
                              <node concept="3Tqbb2" id="7fu6WF7ANOS" role="3zrR0E">
                                <ref role="ehGHo" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7fu6WF7ANRv" role="3cqZAp">
                        <node concept="37vLTI" id="7fu6WF7ANRw" role="3clFbG">
                          <node concept="37vLTw" id="7fu6WF7ANRx" role="37vLTJ">
                            <ref role="3cqZAo" node="4AafYjm6cRj" resolve="current" />
                          </node>
                          <node concept="2OqwBi" id="7fu6WF7ANRy" role="37vLTx">
                            <node concept="37vLTw" id="7fu6WF7ANRz" role="2Oq$k0">
                              <ref role="3cqZAo" node="4AafYjm6cRj" resolve="current" />
                            </node>
                            <node concept="HtI8k" id="7fu6WF7ANR$" role="2OqNvi">
                              <node concept="37vLTw" id="7fu6WF7ANX3" role="HtI8F">
                                <ref role="3cqZAo" node="7fu6WF7ANNE" resolve="stat" />
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
          </node>
          <node concept="2OqwBi" id="KbPw5Fc3dG" role="3clFbw">
            <node concept="37vLTw" id="KbPw5Fc39b" role="2Oq$k0">
              <ref role="3cqZAo" node="3bf11hdO0MV" resolve="text" />
            </node>
            <node concept="17RvpY" id="KbPw5Fc3ls" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3bf11hdO0WC" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3bf11hdO0WB" role="1tU5fm">
          <ref role="ehGHo" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
        </node>
      </node>
      <node concept="3cqZAl" id="3bf11hdO0xB" role="3clF45" />
      <node concept="3Tm1VV" id="3bf11hdO0q8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2u5C0BwBVJG" role="jymVt" />
    <node concept="3Tm1VV" id="3bf11hdNzr1" role="1B3o_S" />
    <node concept="3UR2Jj" id="4AafYjm6Tar" role="lGtFl">
      <node concept="TZ5HA" id="4AafYjm6Tas" role="TZ5H$">
        <node concept="1dT_AC" id="4AafYjm6Tat" role="1dT_Ay">
          <property role="1dT_AB" value="This class was copied and changed from the plaintextgen MPS plugin" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="76yziJPzChR">
    <property role="TrG5h" value="TemplateResult" />
    <node concept="312cEg" id="7mU70b32JZc" role="jymVt">
      <property role="TrG5h" value="indents" />
      <node concept="3Tm1VV" id="7mU70b338nr" role="1B3o_S" />
      <node concept="oyxx6" id="7mU70b32JXw" role="1tU5fm">
        <node concept="17QB3L" id="7mU70b32JZ9" role="3O5elw" />
      </node>
      <node concept="2ShNRf" id="7mU70b32Lk0" role="33vP2m">
        <node concept="2Jqq0_" id="7mU70b32LjN" role="2ShVmc">
          <node concept="17QB3L" id="7mU70b32LjO" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7mU70b32LmD" role="jymVt" />
    <node concept="2tJIrI" id="7mU70b2fZq_" role="jymVt" />
    <node concept="312cEg" id="76yziJPzE_m" role="jymVt">
      <property role="TrG5h" value="lines" />
      <node concept="3Tm6S6" id="76yziJPzE$t" role="1B3o_S" />
      <node concept="_YKpA" id="7mU70b2e1wP" role="1tU5fm">
        <node concept="3uibUv" id="X3mPUDOWVw" role="_ZDj9">
          <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
        </node>
      </node>
      <node concept="2ShNRf" id="7mU70b2eeci" role="33vP2m">
        <node concept="Tc6Ow" id="7mU70b2eec3" role="2ShVmc">
          <node concept="3uibUv" id="X3mPUDOZ55" role="HW$YZ">
            <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="76yziJPzQqy" role="jymVt">
      <property role="TrG5h" value="currentLine" />
      <node concept="3Tm6S6" id="76yziJPzQpF" role="1B3o_S" />
      <node concept="3uibUv" id="X3mPUDP2eD" role="1tU5fm">
        <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
      </node>
      <node concept="10Nm6u" id="76yziJP$diD" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="76yziJPzQs5" role="jymVt" />
    <node concept="3clFbW" id="76yziJPzQoR" role="jymVt">
      <node concept="3cqZAl" id="76yziJPzQoT" role="3clF45" />
      <node concept="3Tm1VV" id="76yziJPzQoU" role="1B3o_S" />
      <node concept="3clFbS" id="76yziJPzQoV" role="3clF47" />
    </node>
    <node concept="3clFb_" id="76yziJPzQkh" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3clFbS" id="76yziJPzQkk" role="3clF47">
        <node concept="3cpWs8" id="22chdPF4aJX" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF4aK0" role="3cpWs9">
            <property role="TrG5h" value="lines" />
            <node concept="10Q1$e" id="22chdPF4aK5" role="1tU5fm">
              <node concept="17QB3L" id="22chdPF4aJW" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="22chdPF4bcQ" role="33vP2m">
              <node concept="37vLTw" id="22chdPF4aOU" role="2Oq$k0">
                <ref role="3cqZAo" node="76yziJPzQkR" resolve="text" />
              </node>
              <node concept="liA8E" id="22chdPF4bB9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="Xl_RD" id="22chdPF4bEn" role="37wK5m">
                  <property role="Xl_RC" value="\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22chdPF4g9x" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF4g9$" role="3cpWs9">
            <property role="TrG5h" value="first" />
            <node concept="10P_77" id="22chdPF4g9v" role="1tU5fm" />
            <node concept="3clFbT" id="22chdPF4gsa" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="22chdPF4c2M" role="3cqZAp">
          <node concept="3clFbS" id="22chdPF4c2O" role="2LFqv$">
            <node concept="3clFbJ" id="22chdPF4gw7" role="3cqZAp">
              <node concept="3clFbS" id="22chdPF4gw9" role="3clFbx">
                <node concept="3clFbF" id="22chdPF4gzJ" role="3cqZAp">
                  <node concept="37vLTI" id="22chdPF4gPX" role="3clFbG">
                    <node concept="3fqX7Q" id="22chdPF4gQt" role="37vLTx">
                      <node concept="37vLTw" id="22chdPF4puN" role="3fr31v">
                        <ref role="3cqZAo" node="22chdPF4g9$" resolve="first" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="22chdPF4gzH" role="37vLTJ">
                      <ref role="3cqZAo" node="22chdPF4g9$" resolve="first" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="22chdPF4gxh" role="3clFbw">
                <ref role="3cqZAo" node="22chdPF4g9$" resolve="first" />
              </node>
              <node concept="9aQIb" id="22chdPF4pxs" role="9aQIa">
                <node concept="3clFbS" id="22chdPF4pxt" role="9aQI4">
                  <node concept="3clFbF" id="22chdPF4pz3" role="3cqZAp">
                    <node concept="2OqwBi" id="22chdPF4pEf" role="3clFbG">
                      <node concept="Xjq3P" id="22chdPF4pz1" role="2Oq$k0" />
                      <node concept="liA8E" id="22chdPF4qdE" role="2OqNvi">
                        <ref role="37wK5l" node="76yziJPzQnx" resolve="appendNewline" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="22chdPF4cIK" role="3cqZAp">
              <node concept="2OqwBi" id="22chdPF4cOE" role="3clFbG">
                <node concept="Xjq3P" id="22chdPF4cII" role="2Oq$k0" />
                <node concept="liA8E" id="22chdPF4d7j" role="2OqNvi">
                  <ref role="37wK5l" node="22chdPF47TR" resolve="internalAdd" />
                  <node concept="37vLTw" id="22chdPF4dda" role="37wK5m">
                    <ref role="3cqZAo" node="22chdPF4c2P" resolve="line" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="22chdPF4c2P" role="1Duv9x">
            <property role="TrG5h" value="line" />
            <node concept="17QB3L" id="22chdPF4ceh" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="22chdPF4cwv" role="1DdaDG">
            <ref role="3cqZAo" node="22chdPF4aK0" resolve="lines" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="76yziJPzQjG" role="1B3o_S" />
      <node concept="3cqZAl" id="76yziJPzQk6" role="3clF45" />
      <node concept="37vLTG" id="76yziJPzQkR" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="76yziJPzQkQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="22chdPF44aw" role="jymVt" />
    <node concept="3clFb_" id="22chdPF47TR" role="jymVt">
      <property role="TrG5h" value="internalAdd" />
      <node concept="3clFbS" id="22chdPF47TU" role="3clF47">
        <node concept="3clFbF" id="22chdPF4amh" role="3cqZAp">
          <node concept="1rXfSq" id="22chdPF4ami" role="3clFbG">
            <ref role="37wK5l" node="76yziJP$eer" resolve="initNextLine" />
          </node>
        </node>
        <node concept="3clFbF" id="22chdPF4amj" role="3cqZAp">
          <node concept="2OqwBi" id="22chdPF4amk" role="3clFbG">
            <node concept="37vLTw" id="22chdPF4aml" role="2Oq$k0">
              <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
            </node>
            <node concept="liA8E" id="22chdPF4amm" role="2OqNvi">
              <ref role="37wK5l" node="X3mPUDPkb_" resolve="append" />
              <node concept="37vLTw" id="22chdPF4axX" role="37wK5m">
                <ref role="3cqZAo" node="22chdPF498p" resolve="s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="22chdPF46Bz" role="1B3o_S" />
      <node concept="3cqZAl" id="22chdPF47P_" role="3clF45" />
      <node concept="37vLTG" id="22chdPF498p" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="22chdPF498o" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="76yziJPzQlE" role="jymVt" />
    <node concept="3clFb_" id="76yziJPzQnx" role="jymVt">
      <property role="TrG5h" value="appendNewline" />
      <node concept="3clFbS" id="76yziJPzQn$" role="3clF47">
        <node concept="3clFbJ" id="7mU70b37$as" role="3cqZAp">
          <node concept="3clFbS" id="7mU70b37$au" role="3clFbx">
            <node concept="3clFbF" id="X3mPUDQBAI" role="3cqZAp">
              <node concept="2OqwBi" id="X3mPUDQBK9" role="3clFbG">
                <node concept="37vLTw" id="X3mPUDQBAG" role="2Oq$k0">
                  <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                </node>
                <node concept="liA8E" id="X3mPUDQGCH" role="2OqNvi">
                  <ref role="37wK5l" node="X3mPUDQCug" resolve="appendNewline" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mU70b38j$p" role="3cqZAp">
              <node concept="37vLTI" id="7mU70b38k3Z" role="3clFbG">
                <node concept="10Nm6u" id="7mU70b38k91" role="37vLTx" />
                <node concept="37vLTw" id="7mU70b38j$n" role="37vLTJ">
                  <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7mU70b37H9H" role="3clFbw">
            <node concept="10Nm6u" id="7mU70b37H9Z" role="3uHU7w" />
            <node concept="37vLTw" id="7mU70b37$lA" role="3uHU7B">
              <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
            </node>
          </node>
          <node concept="9aQIb" id="4dogokbW4_f" role="9aQIa">
            <node concept="3clFbS" id="4dogokbW4_g" role="9aQI4">
              <node concept="3clFbF" id="4dogokbW4Lq" role="3cqZAp">
                <node concept="2OqwBi" id="4dogokbW4Rm" role="3clFbG">
                  <node concept="Xjq3P" id="4dogokbW4Lp" role="2Oq$k0" />
                  <node concept="liA8E" id="4dogokbW5bM" role="2OqNvi">
                    <ref role="37wK5l" node="76yziJP$eer" resolve="initNextLine" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4dogokbW5pA" role="3cqZAp">
                <node concept="2OqwBi" id="4dogokbW5pB" role="3clFbG">
                  <node concept="37vLTw" id="4dogokbW5pC" role="2Oq$k0">
                    <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                  </node>
                  <node concept="liA8E" id="4dogokbW5pD" role="2OqNvi">
                    <ref role="37wK5l" node="X3mPUDQCug" resolve="appendNewline" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4dogokbW5pE" role="3cqZAp">
                <node concept="37vLTI" id="4dogokbW5pF" role="3clFbG">
                  <node concept="10Nm6u" id="4dogokbW5pG" role="37vLTx" />
                  <node concept="37vLTw" id="4dogokbW5pH" role="37vLTJ">
                    <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="76yziJPzQmH" role="1B3o_S" />
      <node concept="3cqZAl" id="76yziJPzQni" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="X3mPUDR2Ag" role="jymVt" />
    <node concept="3clFb_" id="22chdPF0Iz_" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3clFbS" id="22chdPF0IzC" role="3clF47" />
      <node concept="3Tm1VV" id="22chdPF0HCq" role="1B3o_S" />
      <node concept="3cqZAl" id="22chdPF0Iyd" role="3clF45" />
      <node concept="37vLTG" id="22chdPF0JtC" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="22chdPF0JtB" role="1tU5fm">
          <ref role="3uigEE" node="76yziJPzChR" resolve="TemplateResult" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="22chdPF0KmJ" role="jymVt" />
    <node concept="3clFb_" id="X3mPUDR5tO" role="jymVt">
      <property role="TrG5h" value="appendEnd" />
      <node concept="3clFbS" id="X3mPUDR5tR" role="3clF47">
        <node concept="3clFbJ" id="yJsDz8G4W7" role="3cqZAp">
          <node concept="22lmx$" id="yJsDz8L0fk" role="3clFbw">
            <node concept="3clFbC" id="yJsDz8L1nd" role="3uHU7B">
              <node concept="10Nm6u" id="yJsDz8L1$r" role="3uHU7w" />
              <node concept="37vLTw" id="yJsDz8L0El" role="3uHU7B">
                <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
              </node>
            </node>
            <node concept="2OqwBi" id="yJsDz8G7vZ" role="3uHU7w">
              <node concept="2OqwBi" id="yJsDz8G5bp" role="2Oq$k0">
                <node concept="37vLTw" id="yJsDz8G4ZC" role="2Oq$k0">
                  <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                </node>
                <node concept="liA8E" id="yJsDz8G72t" role="2OqNvi">
                  <ref role="37wK5l" node="X3mPUDQ2dc" resolve="toString" />
                </node>
              </node>
              <node concept="liA8E" id="yJsDz8Gag0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="Xl_RD" id="yJsDz8GajT" role="37wK5m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="yJsDz8G4W9" role="3clFbx">
            <node concept="3cpWs8" id="yJsDz8GaGk" role="3cqZAp">
              <node concept="3cpWsn" id="yJsDz8GaGl" role="3cpWs9">
                <property role="TrG5h" value="previousLine" />
                <node concept="3uibUv" id="yJsDz8GaGm" role="1tU5fm">
                  <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
                </node>
                <node concept="2OqwBi" id="yJsDz8GbXi" role="33vP2m">
                  <node concept="37vLTw" id="yJsDz8Gb4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="76yziJPzE_m" resolve="lines" />
                  </node>
                  <node concept="1yVyf7" id="yJsDz8GcH6" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="yJsDz8JLAn" role="3cqZAp">
              <node concept="3clFbS" id="yJsDz8JLAp" role="3clFbx">
                <node concept="3clFbF" id="yJsDz8JPcv" role="3cqZAp">
                  <node concept="2OqwBi" id="yJsDz8JPlw" role="3clFbG">
                    <node concept="37vLTw" id="yJsDz8JPct" role="2Oq$k0">
                      <ref role="3cqZAo" node="yJsDz8GaGl" resolve="previousLine" />
                    </node>
                    <node concept="liA8E" id="yJsDz8K$kB" role="2OqNvi">
                      <ref role="37wK5l" node="yJsDz8KiLf" resolve="appendEnd" />
                      <node concept="37vLTw" id="yJsDz8KAjZ" role="37wK5m">
                        <ref role="3cqZAo" node="X3mPUDR6qH" resolve="end" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="yJsDz8JP6n" role="3clFbw">
                <node concept="10Nm6u" id="yJsDz8JP8U" role="3uHU7w" />
                <node concept="37vLTw" id="yJsDz8JLJU" role="3uHU7B">
                  <ref role="3cqZAo" node="yJsDz8GaGl" resolve="previousLine" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="yJsDz8McWz" role="9aQIa">
            <node concept="3clFbS" id="yJsDz8McW$" role="9aQI4">
              <node concept="3clFbF" id="yJsDz8MdcQ" role="3cqZAp">
                <node concept="2OqwBi" id="yJsDz8Mdog" role="3clFbG">
                  <node concept="37vLTw" id="yJsDz8MdcP" role="2Oq$k0">
                    <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                  </node>
                  <node concept="liA8E" id="yJsDz8MfcW" role="2OqNvi">
                    <ref role="37wK5l" node="X3mPUDPkb_" resolve="append" />
                    <node concept="37vLTw" id="yJsDz8Mfjc" role="37wK5m">
                      <ref role="3cqZAo" node="X3mPUDR6qH" resolve="end" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="X3mPUDR4vU" role="1B3o_S" />
      <node concept="3cqZAl" id="X3mPUDR5s$" role="3clF45" />
      <node concept="37vLTG" id="X3mPUDR6qH" role="3clF46">
        <property role="TrG5h" value="end" />
        <node concept="17QB3L" id="X3mPUDR6qG" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="76yziJP$dKT" role="jymVt" />
    <node concept="3clFb_" id="76yziJP$eer" role="jymVt">
      <property role="TrG5h" value="initNextLine" />
      <node concept="3clFbS" id="76yziJP$eeu" role="3clF47">
        <node concept="3clFbJ" id="76yziJP$eo_" role="3cqZAp">
          <node concept="3clFbC" id="76yziJP$eLg" role="3clFbw">
            <node concept="10Nm6u" id="76yziJP$eT0" role="3uHU7w" />
            <node concept="37vLTw" id="76yziJP$epf" role="3uHU7B">
              <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
            </node>
          </node>
          <node concept="3clFbS" id="76yziJP$eoB" role="3clFbx">
            <node concept="3clFbF" id="76yziJP$eWu" role="3cqZAp">
              <node concept="37vLTI" id="76yziJP$fov" role="3clFbG">
                <node concept="2ShNRf" id="76yziJP$fws" role="37vLTx">
                  <node concept="HV5vD" id="X3mPUDPdNT" role="2ShVmc">
                    <ref role="HV5vE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
                  </node>
                </node>
                <node concept="37vLTw" id="76yziJP$eWt" role="37vLTJ">
                  <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3V8bJPMFdGI" role="3cqZAp">
              <node concept="2OqwBi" id="3V8bJPMGeM0" role="3clFbG">
                <node concept="2OqwBi" id="3V8bJPMFHYs" role="2Oq$k0">
                  <node concept="2OqwBi" id="3V8bJPMFeJk" role="2Oq$k0">
                    <node concept="37vLTw" id="3V8bJPMFdGG" role="2Oq$k0">
                      <ref role="3cqZAo" node="7mU70b32JZc" resolve="indents" />
                    </node>
                    <node concept="ANE8D" id="3V8bJPMFuo9" role="2OqNvi" />
                  </node>
                  <node concept="35Qw8J" id="3V8bJPMFYCg" role="2OqNvi" />
                </node>
                <node concept="2es0OD" id="3V8bJPMGwtZ" role="2OqNvi">
                  <node concept="1bVj0M" id="3V8bJPMGwu1" role="23t8la">
                    <node concept="3clFbS" id="3V8bJPMGwu2" role="1bW5cS">
                      <node concept="3clFbF" id="3V8bJPMGwJB" role="3cqZAp">
                        <node concept="2OqwBi" id="3V8bJPMGwJC" role="3clFbG">
                          <node concept="37vLTw" id="3V8bJPMGwJD" role="2Oq$k0">
                            <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                          </node>
                          <node concept="liA8E" id="3V8bJPMGwJE" role="2OqNvi">
                            <ref role="37wK5l" node="X3mPUDPkb_" resolve="append" />
                            <node concept="37vLTw" id="3V8bJPMGwJF" role="37wK5m">
                              <ref role="3cqZAo" node="3V8bJPMGwu3" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3V8bJPMGwu3" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3V8bJPMGwu4" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7mU70b2ehZL" role="3cqZAp">
              <node concept="2OqwBi" id="7mU70b2ehZM" role="3clFbG">
                <node concept="37vLTw" id="7mU70b2ehZN" role="2Oq$k0">
                  <ref role="3cqZAo" node="76yziJPzE_m" resolve="lines" />
                </node>
                <node concept="TSZUe" id="7mU70b2ehZO" role="2OqNvi">
                  <node concept="37vLTw" id="7mU70b2ehZP" role="25WWJ7">
                    <ref role="3cqZAo" node="76yziJPzQqy" resolve="currentLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="76yziJP$e4q" role="1B3o_S" />
      <node concept="3cqZAl" id="76yziJP$eee" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7mU70b2czv8" role="jymVt" />
    <node concept="3clFb_" id="76yziJP$yx5" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="76yziJP$yx6" role="1B3o_S" />
      <node concept="17QB3L" id="15Qfdb4X8w5" role="3clF45" />
      <node concept="3clFbS" id="76yziJP$yx9" role="3clF47">
        <node concept="3cpWs8" id="76yziJP$JyB" role="3cqZAp">
          <node concept="3cpWsn" id="76yziJP$JyC" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="X3mPUDPr2Q" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="76yziJP$JEd" role="33vP2m">
              <node concept="1pGfFk" id="X3mPUDPtT0" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="76yziJP$ObQ" role="3cqZAp">
          <node concept="3clFbS" id="76yziJP$ObV" role="2LFqv$">
            <node concept="3clFbF" id="76yziJP$R$L" role="3cqZAp">
              <node concept="2OqwBi" id="76yziJP$RVS" role="3clFbG">
                <node concept="37vLTw" id="76yziJP$R$J" role="2Oq$k0">
                  <ref role="3cqZAo" node="76yziJP$JyC" resolve="result" />
                </node>
                <node concept="liA8E" id="76yziJP$SOL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                  <node concept="2OqwBi" id="X3mPUDQ0L1" role="37wK5m">
                    <node concept="37vLTw" id="76yziJP$SVZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="76yziJP$ObW" resolve="line" />
                    </node>
                    <node concept="liA8E" id="X3mPUDQ1ba" role="2OqNvi">
                      <ref role="37wK5l" node="X3mPUDQ2dc" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="76yziJP$ObW" role="1Duv9x">
            <property role="TrG5h" value="line" />
            <node concept="3uibUv" id="X3mPUDPe0E" role="1tU5fm">
              <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
            </node>
          </node>
          <node concept="37vLTw" id="76yziJP$PsM" role="1DdaDG">
            <ref role="3cqZAo" node="76yziJPzE_m" resolve="lines" />
          </node>
        </node>
        <node concept="3cpWs6" id="76yziJP$JMs" role="3cqZAp">
          <node concept="2OqwBi" id="76yziJP$K40" role="3cqZAk">
            <node concept="37vLTw" id="76yziJP$JMU" role="2Oq$k0">
              <ref role="3cqZAo" node="76yziJP$JyC" resolve="result" />
            </node>
            <node concept="liA8E" id="76yziJP$Lsw" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="76yziJP$yxa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="76yziJP$wQ4" role="jymVt" />
    <node concept="1X3_iC" id="22chdPF1kMk" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFb_" id="7mU70b2cyvB" role="8Wnug">
        <property role="TrG5h" value="value" />
        <node concept="3clFbS" id="7mU70b2cyvE" role="3clF47">
          <node concept="3cpWs6" id="7mU70b2c$tY" role="3cqZAp">
            <node concept="2OqwBi" id="7mU70b2em1j" role="3cqZAk">
              <node concept="37vLTw" id="7mU70b2ek9P" role="2Oq$k0">
                <ref role="3cqZAo" node="76yziJPzE_m" resolve="lines" />
              </node>
              <node concept="3$u5V9" id="7mU70b2eCdO" role="2OqNvi">
                <node concept="1bVj0M" id="7mU70b2eCdQ" role="23t8la">
                  <node concept="3clFbS" id="7mU70b2eCdR" role="1bW5cS">
                    <node concept="3cpWs8" id="7mU70b2fDVy" role="3cqZAp">
                      <node concept="3cpWsn" id="7mU70b2fDVz" role="3cpWs9">
                        <property role="TrG5h" value="result" />
                        <node concept="3uibUv" id="7mU70b2fDV$" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                        </node>
                        <node concept="2ShNRf" id="7mU70b2fDV_" role="33vP2m">
                          <node concept="1pGfFk" id="7mU70b2fDVA" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7mU70b2fF6e" role="3cqZAp">
                      <node concept="2OqwBi" id="7mU70b2fF6f" role="3clFbG">
                        <node concept="37vLTw" id="7mU70b2fF6g" role="2Oq$k0">
                          <ref role="3cqZAo" node="7mU70b2fDVz" resolve="result" />
                        </node>
                        <node concept="liA8E" id="7mU70b2fF6h" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
                          <node concept="37vLTw" id="7mU70b2fF6i" role="37wK5m">
                            <ref role="3cqZAo" node="7mU70b2eCdS" resolve="line" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7mU70b2fF6j" role="3cqZAp">
                      <node concept="2OqwBi" id="7mU70b2fF6k" role="3clFbG">
                        <node concept="37vLTw" id="7mU70b2fF6l" role="2Oq$k0">
                          <ref role="3cqZAo" node="7mU70b2fDVz" resolve="result" />
                        </node>
                        <node concept="liA8E" id="7mU70b2fF6m" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                          <node concept="Xl_RD" id="7mU70b2fF6n" role="37wK5m">
                            <property role="Xl_RC" value="\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7mU70b2fHAG" role="3cqZAp">
                      <node concept="2OqwBi" id="7mU70b2fHAH" role="3cqZAk">
                        <node concept="37vLTw" id="7mU70b2fHAI" role="2Oq$k0">
                          <ref role="3cqZAo" node="7mU70b2fDVz" resolve="result" />
                        </node>
                        <node concept="liA8E" id="7mU70b2fHAJ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7mU70b2eCdS" role="1bW2Oz">
                    <property role="TrG5h" value="line" />
                    <node concept="2jxLKc" id="7mU70b2eCdT" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7mU70b2cxuJ" role="1B3o_S" />
        <node concept="A3Dl8" id="7mU70b2eKTm" role="3clF45">
          <node concept="17QB3L" id="7mU70b2eKTo" role="A3Ik2" />
        </node>
      </node>
    </node>
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
        <node concept="3cpWs8" id="22chdPF36FF" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF36FI" role="3cpWs9">
            <property role="TrG5h" value="een" />
            <node concept="17QB3L" id="22chdPF36FE" role="1tU5fm" />
            <node concept="Xl_RD" id="22chdPF36GS" role="33vP2m">
              <property role="Xl_RC" value="appel\n" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22chdPF36IF" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF36II" role="3cpWs9">
            <property role="TrG5h" value="twee" />
            <node concept="17QB3L" id="22chdPF36ID" role="1tU5fm" />
            <node concept="Xl_RD" id="22chdPF36K3" role="33vP2m">
              <property role="Xl_RC" value="peer\n" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22chdPF36M4" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF36M7" role="3cpWs9">
            <property role="TrG5h" value="drie" />
            <node concept="17QB3L" id="22chdPF36M2" role="1tU5fm" />
            <node concept="3cpWs3" id="22chdPF375m" role="33vP2m">
              <node concept="37vLTw" id="22chdPF375I" role="3uHU7w">
                <ref role="3cqZAo" node="22chdPF36II" resolve="twee" />
              </node>
              <node concept="37vLTw" id="22chdPF36Nk" role="3uHU7B">
                <ref role="3cqZAo" node="22chdPF36FI" resolve="een" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22chdPF37bp" role="3cqZAp">
          <node concept="2OqwBi" id="22chdPF37bm" role="3clFbG">
            <node concept="10M0yZ" id="22chdPF37bn" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="22chdPF37bo" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="22chdPF387u" role="37wK5m">
                <node concept="Xl_RD" id="22chdPF387V" role="3uHU7w">
                  <property role="Xl_RC" value="]" />
                </node>
                <node concept="3cpWs3" id="22chdPF37AW" role="3uHU7B">
                  <node concept="Xl_RD" id="22chdPF37cT" role="3uHU7B">
                    <property role="Xl_RC" value="[" />
                  </node>
                  <node concept="37vLTw" id="22chdPF37CR" role="3uHU7w">
                    <ref role="3cqZAo" node="22chdPF36M7" resolve="drie" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="22chdPF3eB1" role="3cqZAp">
          <node concept="3cpWsn" id="22chdPF3eB4" role="3cpWs9">
            <property role="TrG5h" value="lines" />
            <node concept="10Q1$e" id="22chdPF3eOR" role="1tU5fm">
              <node concept="17QB3L" id="22chdPF3eAZ" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="22chdPF3fn3" role="33vP2m">
              <node concept="37vLTw" id="22chdPF3eSK" role="2Oq$k0">
                <ref role="3cqZAo" node="22chdPF36M7" resolve="drie" />
              </node>
              <node concept="liA8E" id="22chdPF3pwm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="Xl_RD" id="22chdPF3pyB" role="37wK5m">
                  <property role="Xl_RC" value="\n" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22chdPF3IQy" role="3cqZAp">
          <node concept="2OqwBi" id="22chdPF3IQz" role="3clFbG">
            <node concept="10M0yZ" id="22chdPF3IQ$" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="22chdPF3IQ_" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="22chdPF3IQA" role="37wK5m">
                <node concept="2OqwBi" id="22chdPF3IQB" role="3uHU7w">
                  <node concept="37vLTw" id="22chdPF3IQC" role="2Oq$k0">
                    <ref role="3cqZAo" node="22chdPF3eB4" resolve="lines" />
                  </node>
                  <node concept="1Rwk04" id="22chdPF3IQD" role="2OqNvi" />
                </node>
                <node concept="Xl_RD" id="22chdPF3IQE" role="3uHU7B">
                  <property role="Xl_RC" value="lines: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22chdPF3pWH" role="3cqZAp">
          <node concept="2OqwBi" id="22chdPF3pWE" role="3clFbG">
            <node concept="10M0yZ" id="22chdPF3pWF" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="22chdPF3pWG" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="22chdPF3XvN" role="37wK5m">
                <node concept="Xl_RD" id="22chdPF3XZJ" role="3uHU7w">
                  <property role="Xl_RC" value="]" />
                </node>
                <node concept="3cpWs3" id="22chdPF3rjC" role="3uHU7B">
                  <node concept="Xl_RD" id="22chdPF3qdR" role="3uHU7B">
                    <property role="Xl_RC" value="lines[0] [" />
                  </node>
                  <node concept="AH0OO" id="22chdPF3M5V" role="3uHU7w">
                    <node concept="3cmrfG" id="22chdPF3M6j" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="22chdPF3rxn" role="AHHXb">
                      <ref role="3cqZAo" node="22chdPF3eB4" resolve="lines" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22chdPF3NZO" role="3cqZAp">
          <node concept="2OqwBi" id="22chdPF3NZP" role="3clFbG">
            <node concept="10M0yZ" id="22chdPF3NZQ" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="22chdPF3NZR" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="22chdPF3Zgp" role="37wK5m">
                <node concept="Xl_RD" id="22chdPF3ZgH" role="3uHU7w">
                  <property role="Xl_RC" value="]" />
                </node>
                <node concept="3cpWs3" id="22chdPF3NZS" role="3uHU7B">
                  <node concept="Xl_RD" id="22chdPF3NZW" role="3uHU7B">
                    <property role="Xl_RC" value="lines[1] [" />
                  </node>
                  <node concept="AH0OO" id="22chdPF3NZT" role="3uHU7w">
                    <node concept="3cmrfG" id="22chdPF3NZU" role="AHEQo">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="22chdPF3NZV" role="AHHXb">
                      <ref role="3cqZAo" node="22chdPF3eB4" resolve="lines" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="76yziJP$$QT" role="jymVt" />
    <node concept="3Tm1VV" id="76yziJPzChS" role="1B3o_S" />
    <node concept="3UR2Jj" id="76yziJP$vxW" role="lGtFl">
      <node concept="TZ5HA" id="76yziJP$vxX" role="TZ5H$">
        <node concept="1dT_AC" id="76yziJP$vxY" role="1dT_Ay">
          <property role="1dT_AB" value="Keeps result of templates in a list of strings / string builders." />
        </node>
      </node>
      <node concept="TZ5HA" id="76yziJP$vPT" role="TZ5H$">
        <node concept="1dT_AC" id="76yziJP$vPU" role="1dT_Ay">
          <property role="1dT_AB" value="This makes it easier to post-process the template result, like e.g. adding indentation." />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7mU70b2cbN5">
    <ref role="13h7C2" to="2ox9:6EV$eJxrHeT" resolve="TemplateStatementList" />
    <node concept="13i0hz" id="7mU70b2cbNg" role="13h7CS">
      <property role="TrG5h" value="separator" />
      <node concept="3Tm1VV" id="7mU70b2cbNh" role="1B3o_S" />
      <node concept="17QB3L" id="7mU70b2gS9R" role="3clF45" />
      <node concept="3clFbS" id="7mU70b2cbNj" role="3clF47">
        <node concept="3cpWs8" id="7mU70b2cbOO" role="3cqZAp">
          <node concept="3cpWsn" id="7mU70b2cbOR" role="3cpWs9">
            <property role="TrG5h" value="forStmt" />
            <node concept="3Tqbb2" id="7mU70b2cbON" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
            </node>
            <node concept="2OqwBi" id="7mU70b2cbZU" role="33vP2m">
              <node concept="13iPFW" id="7mU70b2cbQk" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7mU70b2ccnR" role="2OqNvi">
                <node concept="1xMEDy" id="7mU70b2ccnT" role="1xVPHs">
                  <node concept="chp4Y" id="7mU70b2ccqa" role="ri$Ld">
                    <ref role="cht4Q" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7mU70b2cc$Y" role="3cqZAp">
          <node concept="3clFbS" id="7mU70b2cc_0" role="3clFbx">
            <node concept="3cpWs6" id="7mU70b2cfDD" role="3cqZAp">
              <node concept="10Nm6u" id="7mU70b2cfGd" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="7mU70b2ccQS" role="3clFbw">
            <node concept="37vLTw" id="7mU70b2ccC9" role="2Oq$k0">
              <ref role="3cqZAo" node="7mU70b2cbOR" resolve="forStmt" />
            </node>
            <node concept="3w_OXm" id="7mU70b2cf$G" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="7mU70b2cfLI" role="9aQIa">
            <node concept="3clFbS" id="7mU70b2cfLJ" role="9aQI4">
              <node concept="3cpWs6" id="7mU70b2cfRe" role="3cqZAp">
                <node concept="2OqwBi" id="7mU70b2cgjR" role="3cqZAk">
                  <node concept="37vLTw" id="7mU70b2cg4a" role="2Oq$k0">
                    <ref role="3cqZAo" node="7mU70b2cbOR" resolve="forStmt" />
                  </node>
                  <node concept="3TrcHB" id="7mU70b2gRYT" role="2OqNvi">
                    <ref role="3TsBF5" to="2ox9:7mU70b2grf1" resolve="separator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7mU70b2cbN6" role="13h7CW">
      <node concept="3clFbS" id="7mU70b2cbN7" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="7mU70b2rtRN">
    <ref role="13h7C2" to="2ox9:7mU70b2rtRp" resolve="TemplateSeparators" />
    <node concept="13i0hz" id="7mU70b2rtRY" role="13h7CS">
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="end" />
      <node concept="3Tm1VV" id="7mU70b2rtRZ" role="1B3o_S" />
      <node concept="17QB3L" id="7mU70b2rtSe" role="3clF45" />
      <node concept="3clFbS" id="7mU70b2rtS1" role="3clF47">
        <node concept="3cpWs6" id="7mU70b2rtU4" role="3cqZAp">
          <node concept="Xl_RD" id="7mU70b2rtUi" role="3cqZAk">
            <property role="Xl_RC" value="&lt;DEFAULT&gt;\n" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="7mU70b2rtRO" role="13h7CW">
      <node concept="3clFbS" id="7mU70b2rtRP" role="2VODD2" />
    </node>
  </node>
  <node concept="312cEu" id="X3mPUDLLBD">
    <property role="TrG5h" value="TemplateResultLine" />
    <node concept="312cEg" id="X3mPUDLNU8" role="jymVt">
      <property role="TrG5h" value="text" />
      <node concept="3Tm6S6" id="X3mPUDLNTI" role="1B3o_S" />
      <node concept="3uibUv" id="X3mPUDLNTX" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
      <node concept="2ShNRf" id="X3mPUDLNUL" role="33vP2m">
        <node concept="1pGfFk" id="X3mPUDLNUC" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="X3mPUDLNVU" role="jymVt">
      <property role="TrG5h" value="hasNewline" />
      <node concept="3Tm6S6" id="X3mPUDLNVq" role="1B3o_S" />
      <node concept="10P_77" id="X3mPUDLNVJ" role="1tU5fm" />
      <node concept="3clFbT" id="X3mPUDLNWu" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="X3mPUDLNWK" role="jymVt" />
    <node concept="3clFb_" id="X3mPUDPkb_" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3clFbS" id="X3mPUDPkbA" role="3clF47">
        <node concept="3clFbF" id="X3mPUDPkbB" role="3cqZAp">
          <node concept="2OqwBi" id="X3mPUDPkbC" role="3clFbG">
            <node concept="2OqwBi" id="X3mPUDPkbD" role="2Oq$k0">
              <node concept="Xjq3P" id="X3mPUDPkbE" role="2Oq$k0" />
              <node concept="2OwXpG" id="X3mPUDPkbF" role="2OqNvi">
                <ref role="2Oxat5" node="X3mPUDLNU8" resolve="text" />
              </node>
            </node>
            <node concept="liA8E" id="X3mPUDPkbG" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="37vLTw" id="X3mPUDPkbH" role="37wK5m">
                <ref role="3cqZAo" node="X3mPUDPkbK" resolve="s" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="X3mPUDPkbI" role="1B3o_S" />
      <node concept="3cqZAl" id="X3mPUDPkbJ" role="3clF45" />
      <node concept="37vLTG" id="X3mPUDPkbK" role="3clF46">
        <property role="TrG5h" value="s" />
        <node concept="17QB3L" id="X3mPUDPkbL" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="X3mPUDPkxL" role="jymVt" />
    <node concept="3clFb_" id="X3mPUDLNY2" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3clFbS" id="X3mPUDLNY5" role="3clF47">
        <node concept="3clFbF" id="X3mPUDLNZV" role="3cqZAp">
          <node concept="2OqwBi" id="X3mPUDLOGA" role="3clFbG">
            <node concept="2OqwBi" id="X3mPUDLO5G" role="2Oq$k0">
              <node concept="Xjq3P" id="X3mPUDLNZU" role="2Oq$k0" />
              <node concept="2OwXpG" id="X3mPUDLOhS" role="2OqNvi">
                <ref role="2Oxat5" node="X3mPUDLNU8" resolve="text" />
              </node>
            </node>
            <node concept="liA8E" id="X3mPUDLVmF" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object)" resolve="append" />
              <node concept="37vLTw" id="X3mPUDLVqn" role="37wK5m">
                <ref role="3cqZAo" node="X3mPUDLNYC" resolve="line" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="X3mPUDLNXt" role="1B3o_S" />
      <node concept="3cqZAl" id="X3mPUDLNXR" role="3clF45" />
      <node concept="37vLTG" id="X3mPUDLNYC" role="3clF46">
        <property role="TrG5h" value="line" />
        <node concept="3uibUv" id="X3mPUDPkGS" role="1tU5fm">
          <ref role="3uigEE" node="X3mPUDLLBD" resolve="TemplateResultLine" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="X3mPUDQ3f8" role="jymVt" />
    <node concept="3clFb_" id="X3mPUDQCug" role="jymVt">
      <property role="TrG5h" value="appendNewline" />
      <node concept="3clFbS" id="X3mPUDQCuj" role="3clF47">
        <node concept="3clFbF" id="X3mPUDQCGq" role="3cqZAp">
          <node concept="37vLTI" id="X3mPUDQDy8" role="3clFbG">
            <node concept="3clFbT" id="X3mPUDQD$T" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="X3mPUDQCMb" role="37vLTJ">
              <node concept="Xjq3P" id="X3mPUDQCGp" role="2Oq$k0" />
              <node concept="2OwXpG" id="X3mPUDQD3I" role="2OqNvi">
                <ref role="2Oxat5" node="X3mPUDLNVU" resolve="hasNewline" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="X3mPUDQCfp" role="1B3o_S" />
      <node concept="3cqZAl" id="X3mPUDQCt8" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="X3mPUDR7wQ" role="jymVt" />
    <node concept="3clFb_" id="yJsDz8KiLf" role="jymVt">
      <property role="TrG5h" value="appendEnd" />
      <node concept="3clFbS" id="yJsDz8KiLi" role="3clF47">
        <node concept="3clFbF" id="yJsDz8Kjf3" role="3cqZAp">
          <node concept="2OqwBi" id="yJsDz8KjCZ" role="3clFbG">
            <node concept="37vLTw" id="yJsDz8Kjf2" role="2Oq$k0">
              <ref role="3cqZAo" node="X3mPUDLNU8" resolve="text" />
            </node>
            <node concept="liA8E" id="yJsDz8KPrQ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
              <node concept="37vLTw" id="yJsDz8KPBT" role="37wK5m">
                <ref role="3cqZAo" node="yJsDz8KyoD" resolve="end" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="yJsDz8KiiJ" role="1B3o_S" />
      <node concept="3cqZAl" id="yJsDz8KiH$" role="3clF45" />
      <node concept="37vLTG" id="yJsDz8KyoD" role="3clF46">
        <property role="TrG5h" value="end" />
        <node concept="17QB3L" id="yJsDz8KyoC" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="X3mPUDQ2dc" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="X3mPUDQ2dd" role="1B3o_S" />
      <node concept="17QB3L" id="15Qfdb4Xaxz" role="3clF45" />
      <node concept="3clFbS" id="X3mPUDQ2dg" role="3clF47">
        <node concept="3clFbF" id="X3mPUDQHkz" role="3cqZAp">
          <node concept="3K4zz7" id="X3mPUDQHkr" role="3clFbG">
            <node concept="37vLTw" id="X3mPUDQHHR" role="3K4Cdx">
              <ref role="3cqZAo" node="X3mPUDLNVU" resolve="hasNewline" />
            </node>
            <node concept="3cpWs3" id="X3mPUDQIed" role="3K4E3e">
              <node concept="Xl_RD" id="X3mPUDQJCo" role="3uHU7w">
                <property role="Xl_RC" value="\n" />
              </node>
              <node concept="2OqwBi" id="X3mPUDQHKh" role="3uHU7B">
                <node concept="37vLTw" id="X3mPUDQHKi" role="2Oq$k0">
                  <ref role="3cqZAo" node="X3mPUDLNU8" resolve="text" />
                </node>
                <node concept="liA8E" id="X3mPUDQHKj" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="X3mPUDQKb6" role="3K4GZi">
              <node concept="37vLTw" id="X3mPUDQKb7" role="2Oq$k0">
                <ref role="3cqZAo" node="X3mPUDLNU8" resolve="text" />
              </node>
              <node concept="liA8E" id="X3mPUDQKb8" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="X3mPUDQ2dh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="X3mPUDLLBE" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="2LAMgc0u0HO">
    <property role="3GE5qa" value="methods" />
    <ref role="13h7C2" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
    <node concept="13i0hz" id="2LAMgc0$PB5" role="13h7CS">
      <property role="TrG5h" value="initialize" />
      <node concept="3Tm1VV" id="2LAMgc0$PB6" role="1B3o_S" />
      <node concept="3cqZAl" id="2LAMgc0$QsM" role="3clF45" />
      <node concept="3clFbS" id="2LAMgc0$PB8" role="3clF47">
        <node concept="3clFbF" id="2LAMgc0$Q$8" role="3cqZAp">
          <node concept="37vLTI" id="2LAMgc0$Q$9" role="3clFbG">
            <node concept="2c44tf" id="2LAMgc0$Q$a" role="37vLTx">
              <node concept="17QB3L" id="2LAMgc0$Q$b" role="2c44tc" />
            </node>
            <node concept="2OqwBi" id="2LAMgc0$Q$c" role="37vLTJ">
              <node concept="13iPFW" id="2LAMgc0$Q$d" role="2Oq$k0" />
              <node concept="3TrEf2" id="2LAMgc0$Q$e" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LAMgc0$Q$f" role="3cqZAp">
          <node concept="2OqwBi" id="2LAMgc0$Q$g" role="3clFbG">
            <node concept="2OqwBi" id="2LAMgc0$Q$h" role="2Oq$k0">
              <node concept="13iPFW" id="2LAMgc0$Q$i" role="2Oq$k0" />
              <node concept="3TrEf2" id="2LAMgc0$Q$j" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
              </node>
            </node>
            <node concept="zfrQC" id="2LAMgc0$Q$k" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="2LAMgc0$Q$l" role="3cqZAp">
          <node concept="3cpWsn" id="2LAMgc0$Q$m" role="3cpWs9">
            <property role="TrG5h" value="template" />
            <node concept="3Tqbb2" id="2LAMgc0$Q$n" role="1tU5fm">
              <ref role="ehGHo" to="2ox9:4oa7lsXtnEc" resolve="Template" />
            </node>
            <node concept="2OqwBi" id="2LAMgc0$Q$o" role="33vP2m">
              <node concept="2OqwBi" id="2LAMgc0$Q$p" role="2Oq$k0">
                <node concept="2OqwBi" id="2LAMgc0$Q$q" role="2Oq$k0">
                  <node concept="13iPFW" id="2LAMgc0$Q$r" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2LAMgc0$Q$s" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2LAMgc0$Q$t" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                </node>
              </node>
              <node concept="2DeJg1" id="2LAMgc0$Q$u" role="2OqNvi">
                <ref role="1A0vxQ" to="2ox9:4oa7lsXtnEc" resolve="Template" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2LAMgc0$Q$v" role="3cqZAp">
          <node concept="3cpWsn" id="2LAMgc0$Q$w" role="3cpWs9">
            <property role="TrG5h" value="ret" />
            <node concept="3Tqbb2" id="2LAMgc0$Q$x" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzcpWvY" resolve="ReturnStatement" />
            </node>
            <node concept="2OqwBi" id="2LAMgc0$Q$y" role="33vP2m">
              <node concept="2OqwBi" id="2LAMgc0$Q$z" role="2Oq$k0">
                <node concept="2OqwBi" id="2LAMgc0$Q$$" role="2Oq$k0">
                  <node concept="13iPFW" id="2LAMgc0$Q$_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2LAMgc0$Q$A" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2LAMgc0$Q$B" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                </node>
              </node>
              <node concept="2DeJg1" id="2LAMgc0$Q$C" role="2OqNvi">
                <ref role="1A0vxQ" to="2ox9:2LAMgc0wQbd" resolve="TemplateReturnStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2LAMgc0$Q$D" role="3cqZAp">
          <node concept="3cpWsn" id="2LAMgc0$Q$E" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3Tqbb2" id="2LAMgc0$Q$F" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz7vLUo" resolve="VariableReference" />
            </node>
            <node concept="2OqwBi" id="2LAMgc0$Q$G" role="33vP2m">
              <node concept="2OqwBi" id="2LAMgc0$Q$H" role="2Oq$k0">
                <node concept="37vLTw" id="2LAMgc0$Q$I" role="2Oq$k0">
                  <ref role="3cqZAo" node="2LAMgc0$Q$w" resolve="ret" />
                </node>
                <node concept="3TrEf2" id="2LAMgc0$Q$J" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcqZ_G" resolve="expression" />
                </node>
              </node>
              <node concept="2DeJnY" id="2LAMgc0$Q$K" role="2OqNvi">
                <ref role="1A9B2P" to="tpee:fz7vLUo" resolve="VariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LAMgc0$Q$L" role="3cqZAp">
          <node concept="37vLTI" id="2LAMgc0$Q$M" role="3clFbG">
            <node concept="2OqwBi" id="2LAMgc0$Q$N" role="37vLTx">
              <node concept="37vLTw" id="2LAMgc0$Q$O" role="2Oq$k0">
                <ref role="3cqZAo" node="2LAMgc0$Q$m" resolve="template" />
              </node>
              <node concept="3TrEf2" id="2LAMgc0$Q$P" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="2LAMgc0$Q$Q" role="37vLTJ">
              <node concept="37vLTw" id="2LAMgc0$Q$R" role="2Oq$k0">
                <ref role="3cqZAo" node="2LAMgc0$Q$E" resolve="ref" />
              </node>
              <node concept="3TrEf2" id="2LAMgc0$Q$S" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LAMgc1q9dY" role="3cqZAp">
          <node concept="37vLTI" id="2LAMgc1uYAT" role="3clFbG">
            <node concept="2OqwBi" id="2LAMgc1uZAO" role="37vLTx">
              <node concept="13iPFW" id="2LAMgc1uYCk" role="2Oq$k0" />
              <node concept="3TrcHB" id="2LAMgc1v1Xs" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="2LAMgc1sY35" role="37vLTJ">
              <node concept="2OqwBi" id="2LAMgc1rcVE" role="2Oq$k0">
                <node concept="37vLTw" id="2LAMgc1rcIN" role="2Oq$k0">
                  <ref role="3cqZAo" node="2LAMgc0$Q$m" resolve="template" />
                </node>
                <node concept="3TrEf2" id="2LAMgc1s5uN" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="2LAMgc1tQGo" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="15Qfdb4HOQ1" role="3cqZAp" />
        <node concept="3clFbF" id="15Qfdb4HQB0" role="3cqZAp">
          <node concept="37vLTI" id="15Qfdb4HWXy" role="3clFbG">
            <node concept="37vLTw" id="15Qfdb4HXbX" role="37vLTx">
              <ref role="3cqZAo" node="2LAMgc0$Q$m" resolve="template" />
            </node>
            <node concept="2OqwBi" id="15Qfdb4HUGW" role="37vLTJ">
              <node concept="13iPFW" id="15Qfdb4HQAY" role="2Oq$k0" />
              <node concept="3TrEf2" id="15Qfdb4HW24" role="2OqNvi">
                <ref role="3Tt5mk" to="2ox9:15Qfdb4Ohqp" resolve="template" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="15Qfdb4G6bJ" role="13h7CS">
      <property role="TrG5h" value="canBeAnnotated" />
      <ref role="13i0hy" to="tpek:hWp4PwP" resolve="canBeAnnotated" />
      <node concept="3Tm1VV" id="15Qfdb4G6bO" role="1B3o_S" />
      <node concept="3clFbS" id="15Qfdb4G6bP" role="3clF47">
        <node concept="3clFbF" id="15Qfdb4G8XP" role="3cqZAp">
          <node concept="3clFbT" id="15Qfdb4G8XO" role="3clFbG" />
        </node>
      </node>
      <node concept="10P_77" id="15Qfdb4G6bQ" role="3clF45" />
    </node>
    <node concept="13hLZK" id="2LAMgc0u0HP" role="13h7CW">
      <node concept="3clFbS" id="2LAMgc0u0HQ" role="2VODD2">
        <node concept="3clFbF" id="2LAMgc0$Sl2" role="3cqZAp">
          <node concept="2OqwBi" id="2LAMgc0$TEt" role="3clFbG">
            <node concept="13iPFW" id="2LAMgc0$Sl0" role="2Oq$k0" />
            <node concept="2qgKlT" id="2LAMgc0$VPH" role="2OqNvi">
              <ref role="37wK5l" node="2LAMgc0$PB5" resolve="initialize" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2LAMgc0u0Li" role="3cqZAp">
          <node concept="37vLTI" id="2LAMgc0u0Lj" role="3clFbG">
            <node concept="Xl_RD" id="2LAMgc0u0Lk" role="37vLTx">
              <property role="Xl_RC" value="templateName" />
            </node>
            <node concept="2OqwBi" id="2LAMgc0u0Ll" role="37vLTJ">
              <node concept="13iPFW" id="2LAMgc0u0Lm" role="2Oq$k0" />
              <node concept="3TrcHB" id="2LAMgc0u0Ln" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="15Qfdb4GnBm" role="13h7CS">
      <property role="TrG5h" value="needsEmptyLineAfter" />
      <ref role="13i0hy" to="tpek:zB21h1tQNm" resolve="needsEmptyLineAfter" />
      <node concept="3Tm1VV" id="15Qfdb4GnBo" role="1B3o_S" />
      <node concept="3clFbS" id="15Qfdb4GnBs" role="3clF47">
        <node concept="3clFbF" id="15Qfdb4GoLo" role="3cqZAp">
          <node concept="3clFbT" id="15Qfdb4GoLn" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="15Qfdb4GnBt" role="3clF45" />
    </node>
  </node>
</model>

