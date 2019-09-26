<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f2ca5f71-ae1d-4e6e-a033-39f6b00404a2(BaseTemplate.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="120e1c9d-4e27-4478-b2af-b2c3bd3850b0" name="com.mbeddr.mpsutil.editor.querylist" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="2ox9" ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="2000375450116454183" name="jetbrains.mps.lang.editor.structure.ISubstituteMenu" flags="ng" index="22mbnS">
        <child id="414384289274416996" name="parts" index="3ft7WO" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c">
        <child id="4242538589859162459" name="hints" index="2w$qW5" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970223" name="modifiers" index="2PWKIB" />
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="615427434521884870" name="jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts" flags="ng" index="2VfDsV" />
      <concept id="1186413799158" name="jetbrains.mps.lang.editor.structure.BracketColorStyleClassItem" flags="ln" index="VLuvy" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
        <child id="1223387335081" name="query" index="3n$kyP" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <reference id="1139445935125" name="applicableConcept" index="1chiOs" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1223386653097" name="jetbrains.mps.lang.editor.structure.StrikeOutStyleSheet" flags="ln" index="3nxI2P" />
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="3308396621974580100" name="jetbrains.mps.lang.editor.structure.SubstituteMenu_Default" flags="ng" index="3p36aQ" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1219226236603" name="jetbrains.mps.lang.editor.structure.DrawBracketsStyleClassItem" flags="ln" index="3vyZuw" />
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4323500428121274054" name="id" index="2SqHTX" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <child id="5861024100072578575" name="addHints" index="3xwHhi" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1176809959526" name="jetbrains.mps.lang.editor.structure.QueryFunction_Color" flags="in" index="3ZlJ5R" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="120e1c9d-4e27-4478-b2af-b2c3bd3850b0" name="com.mbeddr.mpsutil.editor.querylist">
      <concept id="6202678563380238499" name="com.mbeddr.mpsutil.editor.querylist.structure.Function_GetElements" flags="ig" index="s8sZD" />
      <concept id="6202678563380233810" name="com.mbeddr.mpsutil.editor.querylist.structure.CellModel_QueryList" flags="ng" index="s8t4o">
        <property id="730823979356023502" name="duplicatesSafe" index="28Zw97" />
        <reference id="730823979350682502" name="elementsConcept" index="28F8cf" />
        <child id="6202678563380433923" name="query" index="sbcd9" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="6EV$eJxpsIk">
    <ref role="1XX52x" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
    <node concept="3EZMnI" id="6EV$eJxpsIm" role="2wV5jI">
      <node concept="3F2HdR" id="6EV$eJxpsIt" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:6EV$eJxpsHT" resolve="words" />
        <node concept="2iRfu4" id="6EV$eJxpsIv" role="2czzBx" />
        <node concept="3F0ifn" id="6EV$eJxrBuy" role="2czzBI">
          <property role="ilYzB" value="Type &quot; for string or &lt; for expression" />
        </node>
      </node>
      <node concept="35HoNQ" id="6EV$eJxrqIX" role="3EZMnx" />
      <node concept="1HlG4h" id="7fu6WF7FOfe" role="3EZMnx">
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        <node concept="1HfYo3" id="7fu6WF7FOfg" role="1HlULh">
          <node concept="3TQlhw" id="7fu6WF7FOfi" role="1Hhtcw">
            <node concept="3clFbS" id="7fu6WF7FOfk" role="2VODD2">
              <node concept="3clFbF" id="7fu6WF7FOo8" role="3cqZAp">
                <node concept="Xl_RD" id="7fu6WF7FOo7" role="3clFbG">
                  <property role="Xl_RC" value="\u00AB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="7fu6WF7FPct" role="pqm2j">
          <node concept="3clFbS" id="7fu6WF7FPcu" role="2VODD2">
            <node concept="3clFbF" id="7fu6WF7FPjU" role="3cqZAp">
              <node concept="2OqwBi" id="7fu6WF7FPy1" role="3clFbG">
                <node concept="pncrf" id="7fu6WF7FPjT" role="2Oq$k0" />
                <node concept="3TrcHB" id="7fu6WF7FQiq" role="2OqNvi">
                  <ref role="3TsBF5" to="2ox9:7fu6WF7BN5U" resolve="withoutNewline" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6EV$eJxpsIp" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7fu6WF7BN5W" role="6VMZX">
      <node concept="2iRfu4" id="7fu6WF7BN5X" role="2iSdaV" />
      <node concept="3F0ifn" id="7fu6WF7BN60" role="3EZMnx">
        <property role="3F0ifm" value="without newline:" />
      </node>
      <node concept="3F0A7n" id="7fu6WF7BN65" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:7fu6WF7BN5U" resolve="withoutNewline" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6EV$eJxpsIV">
    <ref role="1XX52x" to="2ox9:6EV$eJxpsGU" resolve="TemplateExpressionWord" />
    <node concept="3EZMnI" id="6EV$eJxpsIX" role="2wV5jI">
      <node concept="3F0ifn" id="6EV$eJxpsJ4" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        <node concept="11L4FC" id="3V8bJPMCySn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6EV$eJxpu2b" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:6EV$eJxpsGX" resolve="exp" />
      </node>
      <node concept="3F0ifn" id="6EV$eJxpsJi" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="2iRfu4" id="6EV$eJxpsJ0" role="2iSdaV" />
      <node concept="11L4FC" id="3V8bJPMCJfs" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="11LMrY" id="3V8bJPMCJje" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6EV$eJxpsJO">
    <ref role="1XX52x" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
    <node concept="3F0A7n" id="6EV$eJxpsJQ" role="2wV5jI">
      <property role="1O74Pk" value="true" />
      <property role="1$x2rV" value="&lt;text&gt;" />
      <ref role="1NtTu8" to="2ox9:6EV$eJxpsH2" resolve="text" />
      <ref role="34QXea" node="6EV$eJxqfsR" resolve="Template" />
      <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
      <node concept="30gYXW" id="61QejaU_oxb" role="3F10Kt">
        <node concept="3ZlJ5R" id="61QejaU_sbR" role="VblUZ">
          <node concept="3clFbS" id="61QejaU_sbS" role="2VODD2">
            <node concept="3clFbJ" id="3HMKjsymh6t" role="3cqZAp">
              <node concept="3clFbC" id="3HMKjsymh6u" role="3clFbw">
                <node concept="3cmrfG" id="3HMKjsymh6v" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2dk9JS" id="3HMKjsymh6w" role="3uHU7B">
                  <node concept="2OqwBi" id="3HMKjsymh6x" role="3uHU7B">
                    <node concept="pncrf" id="3HMKjsymh6y" role="2Oq$k0" />
                    <node concept="2bSWHS" id="3HMKjsymh6z" role="2OqNvi" />
                  </node>
                  <node concept="3cmrfG" id="3HMKjsymh6$" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3HMKjsymh6_" role="3clFbx">
                <node concept="3cpWs6" id="3HMKjsymh6J" role="3cqZAp">
                  <node concept="2ShNRf" id="3HMKjsymh6K" role="3cqZAk">
                    <node concept="1pGfFk" id="3HMKjsymh6L" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                      <node concept="3cmrfG" id="3HMKjsymh6M" role="37wK5m">
                        <property role="3cmrfH" value="94" />
                      </node>
                      <node concept="3cmrfG" id="3HMKjsymh6N" role="37wK5m">
                        <property role="3cmrfH" value="153" />
                      </node>
                      <node concept="3cmrfG" id="3HMKjsymsPe" role="37wK5m">
                        <property role="3cmrfH" value="255" />
                      </node>
                      <node concept="3cmrfG" id="3HMKjsymzEd" role="37wK5m">
                        <property role="3cmrfH" value="40" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="3HMKjsymh6H" role="9aQIa">
                <node concept="3clFbS" id="3HMKjsymh6I" role="9aQI4">
                  <node concept="3cpWs6" id="3HMKjsymh6A" role="3cqZAp">
                    <node concept="2ShNRf" id="3HMKjsymh6B" role="3cqZAk">
                      <node concept="1pGfFk" id="3HMKjsymh6C" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                        <node concept="3cmrfG" id="3HMKjsymh6D" role="37wK5m">
                          <property role="3cmrfH" value="204" />
                        </node>
                        <node concept="3cmrfG" id="3HMKjsymm_8" role="37wK5m">
                          <property role="3cmrfH" value="255" />
                        </node>
                        <node concept="3cmrfG" id="3HMKjsympc7" role="37wK5m">
                          <property role="3cmrfH" value="229" />
                        </node>
                        <node concept="3cmrfG" id="3HMKjsymh6G" role="37wK5m">
                          <property role="3cmrfH" value="100" />
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
  </node>
  <node concept="325Ffw" id="6EV$eJxqfsR">
    <property role="TrG5h" value="Template" />
    <property role="3GE5qa" value="other" />
    <ref role="1chiOs" to="2ox9:6EV$eJxpsGZ" resolve="TemplateStringWord" />
    <node concept="2PxR9H" id="6EV$eJxqfsS" role="2QnnpI">
      <node concept="2Py5lD" id="6EV$eJxqfsT" role="2PyaAO">
        <property role="2PWKIB" value="ctrl" />
        <property role="2PWKIS" value="VK_ENTER" />
      </node>
      <node concept="2PzhpH" id="6EV$eJxqfsU" role="2PL9iG">
        <node concept="3clFbS" id="6EV$eJxqfsV" role="2VODD2">
          <node concept="3clFbF" id="6EV$eJxqftd" role="3cqZAp">
            <node concept="2OqwBi" id="6EV$eJxqgnq" role="3clFbG">
              <node concept="2OqwBi" id="6EV$eJxqfBL" role="2Oq$k0">
                <node concept="0GJ7k" id="6EV$eJxqftc" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6EV$eJxqg9m" role="2OqNvi">
                  <node concept="1xMEDy" id="6EV$eJxqg9o" role="1xVPHs">
                    <node concept="chp4Y" id="6EV$eJxqgbE" role="ri$Ld">
                      <ref role="cht4Q" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="HtI8k" id="6EV$eJxqhqW" role="2OqNvi">
                <node concept="2ShNRf" id="6EV$eJxqhAB" role="HtI8F">
                  <node concept="3zrR0B" id="6EV$eJxqiIi" role="2ShVmc">
                    <node concept="3Tqbb2" id="6EV$eJxqiIk" role="3zrR0E">
                      <ref role="ehGHo" to="2ox9:6EV$eJxpsGQ" resolve="TemplateTextStatement" />
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
  <node concept="24kQdi" id="6EV$eJxriKO">
    <ref role="1XX52x" to="2ox9:6EV$eJxrieV" resolve="TemplateIfStatement" />
    <node concept="3EZMnI" id="7mU70b39mfW" role="2wV5jI">
      <node concept="2iRfu4" id="7mU70b39mfX" role="2iSdaV" />
      <node concept="3F0A7n" id="7mU70b39mRd" role="3EZMnx">
        <property role="1$x2rV" value="&lt;indent&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1k5W1q" node="7mU70b2PNgn" resolve="TemplateText" />
        <ref role="1NtTu8" to="2ox9:22chdPGubpe" resolve="indent" />
        <node concept="pkWqt" id="22chdPGufDn" role="pqm2j">
          <node concept="3clFbS" id="22chdPGufDo" role="2VODD2">
            <node concept="3clFbF" id="22chdPGufNj" role="3cqZAp">
              <node concept="3y3z36" id="22chdPGukB7" role="3clFbG">
                <node concept="2OqwBi" id="22chdPGug3q" role="3uHU7B">
                  <node concept="pncrf" id="22chdPGufNi" role="2Oq$k0" />
                  <node concept="3TrcHB" id="22chdPGugVt" role="2OqNvi">
                    <ref role="3TsBF5" to="2ox9:22chdPGubpe" resolve="indent" />
                  </node>
                </node>
                <node concept="10Nm6u" id="22chdPGukdC" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2yhw7toTNhH" role="lGtFl">
          <property role="3V$3am" value="styleItem" />
          <property role="3V$3ak" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" />
          <node concept="11LMrY" id="22chdPG_tc_" role="8Wnug">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6EV$eJxriKQ" role="3EZMnx">
        <node concept="3EZMnI" id="6EV$eJxriLk" role="3EZMnx">
          <node concept="2iRfu4" id="6EV$eJxriLl" role="2iSdaV" />
          <node concept="3F0ifn" id="6EV$eJxriL0" role="3EZMnx">
            <property role="3F0ifm" value="if" />
            <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
          </node>
          <node concept="3F1sOY" id="6EV$eJxriL_" role="3EZMnx">
            <ref role="1NtTu8" to="2ox9:6EV$eJxrieZ" resolve="condition" />
          </node>
          <node concept="3F0ifn" id="6EV$eJxrmOy" role="3EZMnx">
            <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
          </node>
        </node>
        <node concept="3EZMnI" id="6EV$eJxrHgy" role="3EZMnx">
          <node concept="2iRfu4" id="6EV$eJxrHgz" role="2iSdaV" />
          <node concept="3XFhqQ" id="6EV$eJxrHh9" role="3EZMnx" />
          <node concept="3XFhqQ" id="6EV$eJxrHh3" role="3EZMnx" />
          <node concept="3F1sOY" id="6EV$eJxrHfN" role="3EZMnx">
            <ref role="1NtTu8" to="2ox9:6EV$eJxriKc" resolve="whenTrue" />
          </node>
        </node>
        <node concept="3F0ifn" id="4AafYjkYNKa" role="3EZMnx">
          <property role="3F0ifm" value="else" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
          <node concept="pkWqt" id="4AafYjl1Hc3" role="pqm2j">
            <node concept="3clFbS" id="4AafYjl1Hc4" role="2VODD2">
              <node concept="3clFbF" id="4AafYjl1Hkl" role="3cqZAp">
                <node concept="2OqwBi" id="4AafYjl1ILC" role="3clFbG">
                  <node concept="2OqwBi" id="4AafYjl1Hys" role="2Oq$k0">
                    <node concept="pncrf" id="4AafYjl1Hkk" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4AafYjl1Ift" role="2OqNvi">
                      <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="4AafYjl1JMd" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="4AafYjkYNK_" role="3EZMnx">
          <node concept="2iRfu4" id="4AafYjkYNKA" role="2iSdaV" />
          <node concept="3XFhqQ" id="4AafYjkYNKB" role="3EZMnx" />
          <node concept="3XFhqQ" id="4AafYjkYNKC" role="3EZMnx" />
          <node concept="3F1sOY" id="4AafYjkYNKD" role="3EZMnx">
            <ref role="1NtTu8" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
          </node>
          <node concept="pkWqt" id="4AafYjl1KIr" role="pqm2j">
            <node concept="3clFbS" id="4AafYjl1KIs" role="2VODD2">
              <node concept="3clFbF" id="4AafYjl1KQH" role="3cqZAp">
                <node concept="2OqwBi" id="4AafYjl1Mxb" role="3clFbG">
                  <node concept="2OqwBi" id="4AafYjl1L4O" role="2Oq$k0">
                    <node concept="pncrf" id="4AafYjl1KQG" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4AafYjl1LU4" role="2OqNvi">
                      <ref role="3Tt5mk" to="2ox9:4AafYjkYNK6" resolve="whenFalse" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="4AafYjl1Nw4" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="6EV$eJxriLU" role="3EZMnx">
          <property role="3F0ifm" value="endif" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="2iRkQZ" id="6EV$eJxriKT" role="2iSdaV" />
        <node concept="11L4FC" id="2yhw7toTXOF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="6EV$eJxriL9">
    <property role="TrG5h" value="Template" />
    <property role="3GE5qa" value="other" />
    <node concept="14StLt" id="6EV$eJxriLd" role="V601i">
      <property role="TrG5h" value="ExpressionSeparator" />
      <node concept="VechU" id="6EV$eJxriLh" role="3F10Kt">
        <node concept="1iSF2X" id="6EV$eJxrFQw" role="VblUZ">
          <property role="1iTho6" value="8000FF" />
        </node>
      </node>
      <node concept="Vb9p2" id="7qKxkmlFRa" role="3F10Kt" />
    </node>
    <node concept="14StLt" id="6EV$eJxrs7u" role="V601i">
      <property role="TrG5h" value="Template" />
      <node concept="VechU" id="6EV$eJxrs7D" role="3F10Kt">
        <property role="Vb096" value="DARK_GREEN" />
      </node>
      <node concept="Vb9p2" id="6EV$eJxrtux" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
    <node concept="14StLt" id="7mU70b2PNgn" role="V601i">
      <property role="TrG5h" value="TemplateText" />
      <node concept="3Xmtl4" id="7mU70b2POnI" role="3F10Kt">
        <node concept="1wgc9g" id="7mU70b2POY1" role="3XvnJa">
          <ref role="1wgcnl" to="tpen:hgVSdfU" resolve="StringLiteral" />
        </node>
      </node>
      <node concept="30gYXW" id="7mU70b2PNgx" role="3F10Kt">
        <node concept="3ZlJ5R" id="7mU70b2PNgy" role="VblUZ">
          <node concept="3clFbS" id="7mU70b2PNgz" role="2VODD2">
            <node concept="3clFbH" id="22chdPG$99L" role="3cqZAp" />
            <node concept="3cpWs6" id="7mU70b2PNgH" role="3cqZAp">
              <node concept="2ShNRf" id="7mU70b2PNgI" role="3cqZAk">
                <node concept="1pGfFk" id="7mU70b2PNgJ" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="7mU70b2PNgK" role="37wK5m">
                    <property role="3cmrfH" value="94" />
                  </node>
                  <node concept="3cmrfG" id="7mU70b2PNgL" role="37wK5m">
                    <property role="3cmrfH" value="153" />
                  </node>
                  <node concept="3cmrfG" id="7mU70b2PNgM" role="37wK5m">
                    <property role="3cmrfH" value="255" />
                  </node>
                  <node concept="3cmrfG" id="7mU70b2PNgN" role="37wK5m">
                    <property role="3cmrfH" value="40" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="22chdPG$ahW" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbJ" id="7mU70b2PNg$" role="8Wnug">
                <node concept="3clFbC" id="7mU70b2PNg_" role="3clFbw">
                  <node concept="3cmrfG" id="7mU70b2PNgA" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2dk9JS" id="7mU70b2PNgB" role="3uHU7B">
                    <node concept="2OqwBi" id="7mU70b2PNgC" role="3uHU7B">
                      <node concept="pncrf" id="7mU70b2PNgD" role="2Oq$k0" />
                      <node concept="2bSWHS" id="7mU70b2PNgE" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="7mU70b2PNgF" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7mU70b2PNgG" role="3clFbx" />
                <node concept="9aQIb" id="7mU70b2PNgO" role="9aQIa">
                  <node concept="3clFbS" id="7mU70b2PNgP" role="9aQI4">
                    <node concept="3cpWs6" id="7mU70b2PNgQ" role="3cqZAp">
                      <node concept="2ShNRf" id="7mU70b2PNgR" role="3cqZAk">
                        <node concept="1pGfFk" id="7mU70b2PNgS" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                          <node concept="3cmrfG" id="7mU70b2PNgT" role="37wK5m">
                            <property role="3cmrfH" value="204" />
                          </node>
                          <node concept="3cmrfG" id="7mU70b2PNgU" role="37wK5m">
                            <property role="3cmrfH" value="255" />
                          </node>
                          <node concept="3cmrfG" id="7mU70b2PNgV" role="37wK5m">
                            <property role="3cmrfH" value="229" />
                          </node>
                          <node concept="3cmrfG" id="7mU70b2PNgW" role="37wK5m">
                            <property role="3cmrfH" value="100" />
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
    </node>
    <node concept="14StLt" id="2LAMgc1vc09" role="V601i">
      <property role="TrG5h" value="TemplateError" />
      <node concept="VechU" id="2LAMgc1vc9O" role="3F10Kt">
        <property role="Vb096" value="red" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6EV$eJxrHfm">
    <ref role="1XX52x" to="2ox9:6EV$eJxrHeT" resolve="TemplateStatementList" />
    <node concept="3EZMnI" id="6EV$eJxrL8j" role="2wV5jI">
      <node concept="3F2HdR" id="6EV$eJxrL8t" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:6EV$eJxrHeU" resolve="statements" />
        <node concept="2iRkQZ" id="6EV$eJxrL8v" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="6EV$eJxrL8m" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6EV$eJxsUrH">
    <ref role="1XX52x" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="3EZMnI" id="6EV$eJxsUrJ" role="2wV5jI">
      <node concept="3EZMnI" id="6EV$eJxsUrT" role="3EZMnx">
        <node concept="VPM3Z" id="6EV$eJxsUrV" role="3F10Kt" />
        <node concept="3F0A7n" id="7mU70b2PiVZ" role="3EZMnx">
          <property role="1$x2rV" value="&lt;indent&gt;" />
          <property role="1O74Pk" value="true" />
          <ref role="1k5W1q" node="7mU70b2PNgn" resolve="TemplateText" />
          <ref role="1NtTu8" to="2ox9:22chdPGubpe" resolve="indent" />
          <node concept="pkWqt" id="22chdPGvZGV" role="pqm2j">
            <node concept="3clFbS" id="22chdPGvZGW" role="2VODD2">
              <node concept="3clFbF" id="22chdPGvZQ1" role="3cqZAp">
                <node concept="3y3z36" id="22chdPGw1Wd" role="3clFbG">
                  <node concept="10Nm6u" id="22chdPGw2nS" role="3uHU7w" />
                  <node concept="2OqwBi" id="22chdPGw08f" role="3uHU7B">
                    <node concept="pncrf" id="22chdPGvZQ0" role="2Oq$k0" />
                    <node concept="3TrcHB" id="22chdPGw11l" role="2OqNvi">
                      <ref role="3TsBF5" to="2ox9:22chdPGubpe" resolve="indent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="2yhw7tp2ior" role="3EZMnx">
          <node concept="11L4FC" id="2yhw7toZp_Q" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2iRkQZ" id="2yhw7tp2ios" role="2iSdaV" />
          <node concept="3EZMnI" id="2yhw7tp2bUs" role="3EZMnx">
            <node concept="2iRfu4" id="2yhw7tp2bUt" role="2iSdaV" />
            <node concept="3F0ifn" id="6EV$eJxsUs7" role="3EZMnx">
              <property role="3F0ifm" value="for" />
              <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
            </node>
            <node concept="3F1sOY" id="6EV$eJxsUsg" role="3EZMnx">
              <ref role="1NtTu8" to="2ox9:gDDuvdF" resolve="variable" />
            </node>
            <node concept="3F0ifn" id="6EV$eJxsUst" role="3EZMnx">
              <property role="3F0ifm" value="in" />
              <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
            </node>
            <node concept="3F1sOY" id="6EV$eJxsUsI" role="3EZMnx">
              <ref role="1NtTu8" to="2ox9:gDDdaHA" resolve="iterable" />
            </node>
            <node concept="3EZMnI" id="7mU70b29XkD" role="3EZMnx">
              <node concept="2iRfu4" id="7mU70b29XkE" role="2iSdaV" />
              <node concept="3F0ifn" id="7mU70b29XiH" role="3EZMnx">
                <property role="3F0ifm" value="start" />
                <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
              </node>
              <node concept="3F0A7n" id="7mU70b2qjAM" role="3EZMnx">
                <ref role="1NtTu8" to="2ox9:7mU70b2qj7j" resolve="start" />
                <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
                <node concept="30gYXW" id="7mU70b2qkmK" role="3F10Kt">
                  <node concept="3ZlJ5R" id="7mU70b2qkmL" role="VblUZ">
                    <node concept="3clFbS" id="7mU70b2qkmM" role="2VODD2">
                      <node concept="3clFbJ" id="7mU70b2qkmN" role="3cqZAp">
                        <node concept="3clFbC" id="7mU70b2qkmO" role="3clFbw">
                          <node concept="3cmrfG" id="7mU70b2qkmP" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2dk9JS" id="7mU70b2qkmQ" role="3uHU7B">
                            <node concept="2OqwBi" id="7mU70b2qkmR" role="3uHU7B">
                              <node concept="pncrf" id="7mU70b2qkmS" role="2Oq$k0" />
                              <node concept="2bSWHS" id="7mU70b2qkmT" role="2OqNvi" />
                            </node>
                            <node concept="3cmrfG" id="7mU70b2qkmU" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7mU70b2qkmV" role="3clFbx">
                          <node concept="3cpWs6" id="7mU70b2qkmW" role="3cqZAp">
                            <node concept="2ShNRf" id="7mU70b2qkmX" role="3cqZAk">
                              <node concept="1pGfFk" id="7mU70b2qkmY" role="2ShVmc">
                                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                <node concept="3cmrfG" id="7mU70b2qkmZ" role="37wK5m">
                                  <property role="3cmrfH" value="94" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qkn0" role="37wK5m">
                                  <property role="3cmrfH" value="153" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qkn1" role="37wK5m">
                                  <property role="3cmrfH" value="255" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qkn2" role="37wK5m">
                                  <property role="3cmrfH" value="40" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="7mU70b2qkn3" role="9aQIa">
                          <node concept="3clFbS" id="7mU70b2qkn4" role="9aQI4">
                            <node concept="3cpWs6" id="7mU70b2qkn5" role="3cqZAp">
                              <node concept="2ShNRf" id="7mU70b2qkn6" role="3cqZAk">
                                <node concept="1pGfFk" id="7mU70b2qkn7" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                  <node concept="3cmrfG" id="7mU70b2qkn8" role="37wK5m">
                                    <property role="3cmrfH" value="204" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qkn9" role="37wK5m">
                                    <property role="3cmrfH" value="255" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qkna" role="37wK5m">
                                    <property role="3cmrfH" value="229" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qknb" role="37wK5m">
                                    <property role="3cmrfH" value="100" />
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
              <node concept="pkWqt" id="7mU70b29Xl6" role="pqm2j">
                <node concept="3clFbS" id="7mU70b29Xl7" role="2VODD2">
                  <node concept="3clFbF" id="7mU70b2a48k" role="3cqZAp">
                    <node concept="2OqwBi" id="7mU70b2a6ul" role="3clFbG">
                      <node concept="2OqwBi" id="7mU70b2a5E9" role="2Oq$k0">
                        <node concept="pncrf" id="7mU70b2a48j" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7mU70b2qs0e" role="2OqNvi">
                          <ref role="3TsBF5" to="2ox9:7mU70b2qj7j" resolve="start" />
                        </node>
                      </node>
                      <node concept="17RvpY" id="7mU70b2qsRi" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3EZMnI" id="7mU70b2a7WK" role="3EZMnx">
              <node concept="2iRfu4" id="7mU70b2a7WL" role="2iSdaV" />
              <node concept="3F0ifn" id="7mU70b29Xjb" role="3EZMnx">
                <property role="3F0ifm" value="separator" />
                <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
              </node>
              <node concept="3F0A7n" id="7mU70b2gSN8" role="3EZMnx">
                <ref role="1NtTu8" to="2ox9:7mU70b2grf1" resolve="separator" />
                <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
                <node concept="30gYXW" id="7mU70b2qlRe" role="3F10Kt">
                  <node concept="3ZlJ5R" id="7mU70b2qlRf" role="VblUZ">
                    <node concept="3clFbS" id="7mU70b2qlRg" role="2VODD2">
                      <node concept="3clFbJ" id="7mU70b2qlRh" role="3cqZAp">
                        <node concept="3clFbC" id="7mU70b2qlRi" role="3clFbw">
                          <node concept="3cmrfG" id="7mU70b2qlRj" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2dk9JS" id="7mU70b2qlRk" role="3uHU7B">
                            <node concept="2OqwBi" id="7mU70b2qlRl" role="3uHU7B">
                              <node concept="pncrf" id="7mU70b2qlRm" role="2Oq$k0" />
                              <node concept="2bSWHS" id="7mU70b2qlRn" role="2OqNvi" />
                            </node>
                            <node concept="3cmrfG" id="7mU70b2qlRo" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7mU70b2qlRp" role="3clFbx">
                          <node concept="3cpWs6" id="7mU70b2qlRq" role="3cqZAp">
                            <node concept="2ShNRf" id="7mU70b2qlRr" role="3cqZAk">
                              <node concept="1pGfFk" id="7mU70b2qlRs" role="2ShVmc">
                                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                <node concept="3cmrfG" id="7mU70b2qlRt" role="37wK5m">
                                  <property role="3cmrfH" value="94" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qlRu" role="37wK5m">
                                  <property role="3cmrfH" value="153" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qlRv" role="37wK5m">
                                  <property role="3cmrfH" value="255" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qlRw" role="37wK5m">
                                  <property role="3cmrfH" value="40" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="7mU70b2qlRx" role="9aQIa">
                          <node concept="3clFbS" id="7mU70b2qlRy" role="9aQI4">
                            <node concept="3cpWs6" id="7mU70b2qlRz" role="3cqZAp">
                              <node concept="2ShNRf" id="7mU70b2qlR$" role="3cqZAk">
                                <node concept="1pGfFk" id="7mU70b2qlR_" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                  <node concept="3cmrfG" id="7mU70b2qlRA" role="37wK5m">
                                    <property role="3cmrfH" value="204" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qlRB" role="37wK5m">
                                    <property role="3cmrfH" value="255" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qlRC" role="37wK5m">
                                    <property role="3cmrfH" value="229" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qlRD" role="37wK5m">
                                    <property role="3cmrfH" value="100" />
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
              <node concept="pkWqt" id="7mU70b2a8lx" role="pqm2j">
                <node concept="3clFbS" id="7mU70b2a8ly" role="2VODD2">
                  <node concept="3clFbF" id="7mU70b2a8sV" role="3cqZAp">
                    <node concept="3y3z36" id="yJsDz8EoEN" role="3clFbG">
                      <node concept="10Nm6u" id="yJsDz8Ep5c" role="3uHU7w" />
                      <node concept="2OqwBi" id="7mU70b2a8Je" role="3uHU7B">
                        <node concept="pncrf" id="7mU70b2a8sU" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7mU70b2gTqH" role="2OqNvi">
                          <ref role="3TsBF5" to="2ox9:7mU70b2grf1" resolve="separator" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3EZMnI" id="7mU70b2abxq" role="3EZMnx">
              <node concept="2iRfu4" id="7mU70b2abxr" role="2iSdaV" />
              <node concept="3F0ifn" id="7mU70b29XjV" role="3EZMnx">
                <property role="3F0ifm" value="end" />
                <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
              </node>
              <node concept="3F0A7n" id="7mU70b2qn7x" role="3EZMnx">
                <ref role="1k5W1q" to="tpen:hgVSdfU" resolve="StringLiteral" />
                <ref role="1NtTu8" to="2ox9:7mU70b2qj7m" resolve="end" />
                <node concept="30gYXW" id="7mU70b2qnrt" role="3F10Kt">
                  <node concept="3ZlJ5R" id="7mU70b2qnru" role="VblUZ">
                    <node concept="3clFbS" id="7mU70b2qnrv" role="2VODD2">
                      <node concept="3clFbJ" id="7mU70b2qnrw" role="3cqZAp">
                        <node concept="3clFbC" id="7mU70b2qnrx" role="3clFbw">
                          <node concept="3cmrfG" id="7mU70b2qnry" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2dk9JS" id="7mU70b2qnrz" role="3uHU7B">
                            <node concept="2OqwBi" id="7mU70b2qnr$" role="3uHU7B">
                              <node concept="pncrf" id="7mU70b2qnr_" role="2Oq$k0" />
                              <node concept="2bSWHS" id="7mU70b2qnrA" role="2OqNvi" />
                            </node>
                            <node concept="3cmrfG" id="7mU70b2qnrB" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7mU70b2qnrC" role="3clFbx">
                          <node concept="3cpWs6" id="7mU70b2qnrD" role="3cqZAp">
                            <node concept="2ShNRf" id="7mU70b2qnrE" role="3cqZAk">
                              <node concept="1pGfFk" id="7mU70b2qnrF" role="2ShVmc">
                                <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                <node concept="3cmrfG" id="7mU70b2qnrG" role="37wK5m">
                                  <property role="3cmrfH" value="94" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qnrH" role="37wK5m">
                                  <property role="3cmrfH" value="153" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qnrI" role="37wK5m">
                                  <property role="3cmrfH" value="255" />
                                </node>
                                <node concept="3cmrfG" id="7mU70b2qnrJ" role="37wK5m">
                                  <property role="3cmrfH" value="40" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="7mU70b2qnrK" role="9aQIa">
                          <node concept="3clFbS" id="7mU70b2qnrL" role="9aQI4">
                            <node concept="3cpWs6" id="7mU70b2qnrM" role="3cqZAp">
                              <node concept="2ShNRf" id="7mU70b2qnrN" role="3cqZAk">
                                <node concept="1pGfFk" id="7mU70b2qnrO" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                                  <node concept="3cmrfG" id="7mU70b2qnrP" role="37wK5m">
                                    <property role="3cmrfH" value="204" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qnrQ" role="37wK5m">
                                    <property role="3cmrfH" value="255" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qnrR" role="37wK5m">
                                    <property role="3cmrfH" value="229" />
                                  </node>
                                  <node concept="3cmrfG" id="7mU70b2qnrS" role="37wK5m">
                                    <property role="3cmrfH" value="100" />
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
              <node concept="pkWqt" id="7mU70b2abVF" role="pqm2j">
                <node concept="3clFbS" id="7mU70b2abVG" role="2VODD2">
                  <node concept="3clFbF" id="7mU70b2ac35" role="3cqZAp">
                    <node concept="2OqwBi" id="7mU70b2qqfq" role="3clFbG">
                      <node concept="2OqwBi" id="7mU70b2acjc" role="2Oq$k0">
                        <node concept="pncrf" id="7mU70b2ac34" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7mU70b2qpnr" role="2OqNvi">
                          <ref role="3TsBF5" to="2ox9:7mU70b2qj7m" resolve="end" />
                        </node>
                      </node>
                      <node concept="17RvpY" id="7mU70b2qrje" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3EZMnI" id="2yhw7tp2s39" role="3EZMnx">
            <node concept="2iRfu4" id="2yhw7tp2s3a" role="2iSdaV" />
            <node concept="3XFhqQ" id="2yhw7tp2s3b" role="3EZMnx" />
            <node concept="3XFhqQ" id="2yhw7tp2s3c" role="3EZMnx" />
            <node concept="3F1sOY" id="2yhw7tp2s3d" role="3EZMnx">
              <ref role="1NtTu8" to="2ox9:gMLFqrC" resolve="body" />
            </node>
          </node>
          <node concept="3EZMnI" id="7mU70b2PlDb" role="3EZMnx">
            <node concept="2iRfu4" id="7mU70b2PlDc" role="2iSdaV" />
            <node concept="3F0ifn" id="6EV$eJxsUuG" role="3EZMnx">
              <property role="3F0ifm" value="endfor" />
              <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="6EV$eJxsUrY" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="6EV$eJxsUrM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4oa7lsXtnEG">
    <ref role="1XX52x" to="2ox9:4oa7lsXtnEc" resolve="Template" />
    <node concept="3EZMnI" id="4oa7lsXtnEI" role="2wV5jI">
      <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
      <node concept="3EZMnI" id="4oa7lsXutma" role="3EZMnx">
        <node concept="3F0ifn" id="4oa7lsXutnM" role="3EZMnx">
          <property role="3F0ifm" value="template" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="2iRfu4" id="4oa7lsXutmb" role="2iSdaV" />
        <node concept="3F1sOY" id="4oa7lsXtnEP" role="3EZMnx">
          <ref role="1NtTu8" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
          <node concept="2w$q5c" id="4oa7lsXu3G$" role="3xwHhi">
            <node concept="2aJ2om" id="4oa7lsXu3G_" role="2w$qW5">
              <ref role="2$4xQ3" node="4oa7lsXu3Gy" resolve="Template" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="4oa7lsXutmr" role="3EZMnx">
          <property role="3F0ifm" value="is" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="pkWqt" id="7fu6WF7PmZs" role="pqm2j">
          <node concept="3clFbS" id="7fu6WF7PmZt" role="2VODD2">
            <node concept="3clFbF" id="7fu6WF7Pn6Q" role="3cqZAp">
              <node concept="1Wc70l" id="2LAMgc0urt2" role="3clFbG">
                <node concept="2OqwBi" id="2LAMgc0uvXG" role="3uHU7w">
                  <node concept="2OqwBi" id="2LAMgc0us0Z" role="2Oq$k0">
                    <node concept="pncrf" id="2LAMgc0urHC" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="2LAMgc0utrT" role="2OqNvi">
                      <node concept="1xMEDy" id="2LAMgc0utrV" role="1xVPHs">
                        <node concept="chp4Y" id="2LAMgc0uuL1" role="ri$Ld">
                          <ref role="cht4Q" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="2LAMgc0u_at" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="7fu6WF7PpYj" role="3uHU7B">
                  <node concept="2OqwBi" id="7fu6WF7PnpX" role="2Oq$k0">
                    <node concept="pncrf" id="7fu6WF7Pn6P" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="7fu6WF7Poun" role="2OqNvi">
                      <node concept="1xMEDy" id="7fu6WF7Poup" role="1xVPHs">
                        <node concept="chp4Y" id="7fu6WF7PoN4" role="ri$Ld">
                          <ref role="cht4Q" to="2ox9:7qKxkmc3Bh" resolve="TemplateMethod" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3w_OXm" id="7fu6WF7PEIR" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4oa7lsXutmI" role="3EZMnx">
        <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
        <ref role="34QXea" node="2LAMgc0zo2j" resolve="BlockKeyMap" />
        <node concept="3XFhqQ" id="4oa7lsXutn6" role="3EZMnx" />
        <node concept="3XFhqQ" id="4oa7lsXutnm" role="3EZMnx" />
        <node concept="3F1sOY" id="4AafYjl13wE" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:4oa7lsXtnEh" resolve="lines" />
        </node>
        <node concept="2iRfu4" id="4oa7lsXutmJ" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4oa7lsXutns" role="3EZMnx">
        <property role="3F0ifm" value="end template" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
        <ref role="34QXea" node="2LAMgc0zo2j" resolve="BlockKeyMap" />
      </node>
      <node concept="2iRkQZ" id="4oa7lsXtnEL" role="2iSdaV" />
      <node concept="VPM3Z" id="2LAMgc0yP6V" role="3F10Kt">
        <node concept="3nzxsE" id="2LAMgc0yPtw" role="3n$kyP">
          <node concept="3clFbS" id="2LAMgc0yPtx" role="2VODD2">
            <node concept="3clFbF" id="2LAMgc0yPAL" role="3cqZAp">
              <node concept="2OqwBi" id="2LAMgc0ySsV" role="3clFbG">
                <node concept="2OqwBi" id="2LAMgc0yPTS" role="2Oq$k0">
                  <node concept="pncrf" id="2LAMgc0yPAK" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="2LAMgc0yR25" role="2OqNvi">
                    <node concept="1xMEDy" id="2LAMgc0yR27" role="1xVPHs">
                      <node concept="chp4Y" id="2LAMgc0yRqx" role="ri$Ld">
                        <ref role="cht4Q" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3x8VRR" id="2LAMgc0yXpm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2ABfQD" id="4oa7lsXu3Gx">
    <property role="TrG5h" value="template" />
    <property role="3GE5qa" value="other" />
    <node concept="2BsEeg" id="4oa7lsXu3Gy" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="Template" />
    </node>
    <node concept="2BsEeg" id="7fu6WF7z95Q" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="MPS" />
    </node>
  </node>
  <node concept="24kQdi" id="4oa7lsXu3GC">
    <ref role="1XX52x" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    <node concept="2aJ2om" id="4oa7lsXu3GE" role="CpUAK">
      <ref role="2$4xQ3" node="4oa7lsXu3Gy" resolve="Template" />
    </node>
    <node concept="3EZMnI" id="hiAXQQr" role="2wV5jI">
      <node concept="PMmxH" id="hiAXQQ_" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hcE9nLY" resolve="VariableDeclaration_NameCellComponent" />
      </node>
      <node concept="l2Vlx" id="i0ujUbt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7qKxkmc5fh">
    <property role="3GE5qa" value="additions" />
    <ref role="1XX52x" to="2ox9:7qKxkmc3Bh" resolve="TemplateMethod" />
    <node concept="3EZMnI" id="fDoU8NI" role="2wV5jI">
      <node concept="VPM3Z" id="hEU$PuE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="7qKxkmdPTM" role="3EZMnx">
        <property role="3F0ifm" value="template" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="PMmxH" id="hfRTI2S" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hfRTih$" resolve="BaseMethodDeclaration_NameCellComponent" />
        <node concept="3nxI2P" id="hO0Csuf" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="fDoU8NM" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="2SqB2G" id="2VygjZZ9zbe" role="2SqHTX">
          <property role="TrG5h" value="leftParen" />
        </node>
      </node>
      <node concept="3F2HdR" id="g$abzDm" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpee:fzclF7Y" resolve="parameter" />
        <node concept="3F0ifn" id="g$abzDn" role="2czzBI">
          <node concept="VPM3Z" id="hEU$Ppc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="hEZKQ$A" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="i0NJYCV" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="fDoU8NP" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="2SqB2G" id="2VygjZZ9_bd" role="2SqHTX">
          <property role="TrG5h" value="rightParen" />
        </node>
        <node concept="VPM3Z" id="hEU$PaU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="1wEcoXjJMHs" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMHl" resolve="InstanceMethodDeclaration_ApplySideTransforms_1" />
        </node>
      </node>
      <node concept="PMmxH" id="4ZFm$8SP73$" role="3EZMnx">
        <ref role="PMmxG" to="tpen:4ZFm$8SP4Ko" resolve="BaseMethodDeclaration_ThrowsCollection_Component" />
      </node>
      <node concept="3F0ifn" id="7fu6WF7PSWy" role="3EZMnx">
        <property role="3F0ifm" value="is" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="3F0ifn" id="h9E_8mS" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
        <ref role="1ERwB7" to="tpen:64WA21b_Rbu" resolve="DeleteClassifierMember" />
        <node concept="pkWqt" id="h9E_9ea" role="pqm2j">
          <node concept="3clFbS" id="h9E_9eb" role="2VODD2">
            <node concept="3cpWs6" id="h9E_9Cm" role="3cqZAp">
              <node concept="3fqX7Q" id="4SpJmwPM3Ef" role="3cqZAk">
                <node concept="2OqwBi" id="4SpJmwPM3Eh" role="3fr31v">
                  <node concept="pncrf" id="4SpJmwPM3Ei" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4SpJmwPM3Ej" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:10BRnhak8m8" resolve="hasBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="i0HIZvq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="5UYpxeVajUe" role="3EZMnx">
        <ref role="PMmxG" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
        <node concept="pkWqt" id="5UYpxeVajUh" role="pqm2j">
          <node concept="3clFbS" id="5UYpxeVajUi" role="2VODD2">
            <node concept="3cpWs6" id="5UYpxeVajUj" role="3cqZAp">
              <node concept="2OqwBi" id="7fnnP3fG0In" role="3cqZAk">
                <node concept="pncrf" id="7fnnP3fG0vY" role="2Oq$k0" />
                <node concept="2qgKlT" id="4SpJmwPM6Rt" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:10BRnhak8m8" resolve="hasBody" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="i0HIZv_" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="5UYpxeVafB6">
    <property role="TrG5h" value="TemplateMethodDeclaration_BodyComponent" />
    <property role="3GE5qa" value="additions" />
    <ref role="1XX52x" to="2ox9:7qKxkmc3Bh" resolve="TemplateMethod" />
    <node concept="3EZMnI" id="5UYpxeVafB8" role="2wV5jI">
      <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      <node concept="ljvvj" id="1_9L3A4Gl2g" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="s8t4o" id="7fu6WF7NZAg" role="3EZMnx">
        <property role="28Zw97" value="true" />
        <ref role="28F8cf" to="tpee:fzclF8l" resolve="Statement" />
        <node concept="xShMh" id="7fu6WF7NZAi" role="3F10Kt" />
        <node concept="ljvvj" id="7fu6WF7O5ID" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="7fu6WF7O6gz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="s8sZD" id="7fu6WF7NZAj" role="sbcd9">
          <node concept="3clFbS" id="7fu6WF7NZAk" role="2VODD2">
            <node concept="3clFbF" id="7fu6WF7NZAl" role="3cqZAp">
              <node concept="2OqwBi" id="7fu6WF7O2R5" role="3clFbG">
                <node concept="2OqwBi" id="7fu6WF7O0zL" role="2Oq$k0">
                  <node concept="pncrf" id="7fu6WF7NZYx" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7fu6WF7O1Qx" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                  </node>
                </node>
                <node concept="2qgKlT" id="7fu6WF7O4mL" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:4GU1DgEHJ2u" resolve="getFirstStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5UYpxeVafBa" role="2iSdaV" />
    </node>
    <node concept="1PE4EZ" id="7qKxkmgfFr" role="1PM95z">
      <ref role="1PE7su" to="tpen:5UYpxeVafB6" resolve="BaseMethodDeclaration_BodyComponent" />
    </node>
  </node>
  <node concept="24kQdi" id="7qKxkmhxHr">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="2ox9:7qKxkmhuSK" resolve="TemplateCase" />
    <node concept="3EZMnI" id="7qKxkmhxHt" role="2wV5jI">
      <node concept="3EZMnI" id="7qKxkmhxHu" role="3EZMnx">
        <node concept="VPM3Z" id="7qKxkmhxHv" role="3F10Kt" />
        <node concept="3F0ifn" id="7qKxkmhxHw" role="3EZMnx">
          <property role="3F0ifm" value="case" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="3F1sOY" id="7qKxkmhxHF" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:7qKxkmhv5t" resolve="concept" />
        </node>
        <node concept="2iRfu4" id="7qKxkmhxHx" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7qKxkmjbHQ" role="3EZMnx">
        <node concept="2iRfu4" id="7qKxkmjbHR" role="2iSdaV" />
        <node concept="3XFhqQ" id="7qKxkmjbHV" role="3EZMnx" />
        <node concept="3XFhqQ" id="7qKxkmjbI0" role="3EZMnx" />
        <node concept="3F1sOY" id="7qKxkmiNbT" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:7qKxkmi2ZR" resolve="lines" />
        </node>
      </node>
      <node concept="2iRkQZ" id="7qKxkmhxHy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7qKxkmjB6r">
    <property role="3GE5qa" value="" />
    <ref role="1XX52x" to="2ox9:7qKxkmjvUp" resolve="TemplateSwitchStatement" />
    <node concept="3EZMnI" id="22chdPGw3sb" role="2wV5jI">
      <node concept="3F0A7n" id="22chdPGw3K3" role="3EZMnx">
        <property role="1$x2rV" value="&lt;indent&gt;" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="2ox9:22chdPGubpe" resolve="indent" />
        <ref role="1k5W1q" node="7mU70b2PNgn" resolve="TemplateText" />
        <node concept="pkWqt" id="22chdPGw3K4" role="pqm2j">
          <node concept="3clFbS" id="22chdPGw3K5" role="2VODD2">
            <node concept="3clFbF" id="22chdPGw3K6" role="3cqZAp">
              <node concept="3y3z36" id="22chdPGw3K7" role="3clFbG">
                <node concept="2OqwBi" id="22chdPGw3K8" role="3uHU7B">
                  <node concept="pncrf" id="22chdPGw3K9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="22chdPGw3Ka" role="2OqNvi">
                    <ref role="3TsBF5" to="2ox9:22chdPGubpe" resolve="indent" />
                  </node>
                </node>
                <node concept="10Nm6u" id="22chdPGw3Kb" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11LMrY" id="22chdPGEQUu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="22chdPGw3sc" role="2iSdaV" />
      <node concept="3EZMnI" id="7qKxkmjB6t" role="3EZMnx">
        <node concept="3EZMnI" id="7qKxkmjB6u" role="3EZMnx">
          <node concept="VPM3Z" id="7qKxkmjB6v" role="3F10Kt" />
          <node concept="3F0ifn" id="7qKxkmjB6x" role="3EZMnx">
            <property role="3F0ifm" value="switch" />
            <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
          </node>
          <node concept="3F1sOY" id="7qKxkmjB6y" role="3EZMnx">
            <ref role="1NtTu8" to="2ox9:7qKxkmjvUq" resolve="node" />
          </node>
          <node concept="2iRfu4" id="7qKxkmjB6z" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="7qKxkmjB6$" role="3EZMnx">
          <node concept="3XFhqQ" id="7qKxkmjB6_" role="3EZMnx" />
          <node concept="3XFhqQ" id="7qKxkmjB6A" role="3EZMnx" />
          <node concept="2iRfu4" id="7qKxkmjB6B" role="2iSdaV" />
          <node concept="3F2HdR" id="7qKxkmjB6C" role="3EZMnx">
            <ref role="1NtTu8" to="2ox9:7qKxkmjvUr" resolve="cases" />
            <node concept="2iRkQZ" id="7qKxkmjB6D" role="2czzBx" />
          </node>
        </node>
        <node concept="3F0ifn" id="7qKxkmlzFV" role="3EZMnx">
          <property role="3F0ifm" value="end switch" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="2iRkQZ" id="7qKxkmjB6E" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="3p36aQ" id="4AafYjkYRpc">
    <property role="3GE5qa" value="other" />
    <ref role="aqKnT" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="2VfDsV" id="4AafYjkYT9t" role="3ft7WO" />
  </node>
  <node concept="24kQdi" id="4AafYjkZ07t">
    <ref role="1XX52x" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="3F0ifn" id="2hoWzkhByKS" role="2wV5jI">
      <node concept="VPxyj" id="2hoWzkhChAw" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4AafYjlY7I8">
    <ref role="1XX52x" to="2ox9:4AafYjlY7rQ" resolve="TemplateCommentStatement" />
    <node concept="3EZMnI" id="4AafYjlY7J0" role="2wV5jI">
      <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
      <node concept="3F0ifn" id="4AafYjlY7K0" role="3EZMnx">
        <property role="3F0ifm" value="//" />
      </node>
      <node concept="3F0A7n" id="4AafYjlY7LP" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:4AafYjlY7_Z" resolve="text" />
      </node>
      <node concept="2iRfu4" id="4AafYjlY7J3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7fu6WF7z95z">
    <ref role="1XX52x" to="2ox9:6EV$eJxsTTd" resolve="TemplateForStatement" />
    <node concept="3EZMnI" id="7fu6WF7z95$" role="2wV5jI">
      <node concept="3EZMnI" id="7fu6WF7$2sc" role="3EZMnx">
        <node concept="VPM3Z" id="7fu6WF7$2sd" role="3F10Kt" />
        <node concept="3F0ifn" id="7fu6WF7$2se" role="3EZMnx">
          <property role="3F0ifm" value="$LOOP$" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="3F1sOY" id="7fu6WF7$2sf" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:gDDuvdF" resolve="variable" />
        </node>
        <node concept="3F0ifn" id="7fu6WF7$2sg" role="3EZMnx">
          <property role="3F0ifm" value="in" />
        </node>
        <node concept="3F1sOY" id="7fu6WF7$2sh" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:gDDdaHA" resolve="iterable" />
        </node>
        <node concept="2iRfu4" id="7fu6WF7$2si" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7fu6WF7z95_" role="3EZMnx">
        <node concept="VPM3Z" id="7fu6WF7z95A" role="3F10Kt" />
        <node concept="3XFhqQ" id="7fu6WF7$2t9" role="3EZMnx" />
        <node concept="3XFhqQ" id="7fu6WF7$2tv" role="3EZMnx" />
        <node concept="3F1sOY" id="7fu6WF7z963" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:gMLFqrC" resolve="body" />
          <node concept="3vyZuw" id="7fu6WF7zn96" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VLuvy" id="7fu6WF7zn9b" role="3F10Kt">
            <node concept="1iSF2X" id="7fu6WF7zSS_" role="VblUZ">
              <property role="1iTho6" value="8000FF" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="7fu6WF7z95F" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7fu6WF7z95N" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="7fu6WF7z95T" role="CpUAK">
      <ref role="2$4xQ3" node="7fu6WF7z95Q" resolve="MPS" />
    </node>
    <node concept="3EZMnI" id="7fu6WF7z96u" role="6VMZX">
      <node concept="VPM3Z" id="7fu6WF7z96v" role="3F10Kt" />
      <node concept="3F0ifn" id="7fu6WF7z96w" role="3EZMnx">
        <property role="3F0ifm" value="for" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="3F1sOY" id="7fu6WF7z96x" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:gDDuvdF" resolve="variable" />
      </node>
      <node concept="3F0ifn" id="7fu6WF7z96y" role="3EZMnx">
        <property role="3F0ifm" value="in" />
      </node>
      <node concept="3F1sOY" id="7fu6WF7z96z" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:gDDdaHA" resolve="iterable" />
      </node>
      <node concept="2iRfu4" id="7fu6WF7z96$" role="2iSdaV" />
      <node concept="3F0ifn" id="7fu6WF7z96_" role="3EZMnx">
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="7fu6WF7NnlJ">
    <property role="3GE5qa" value="other" />
    <property role="TrG5h" value="Block" />
    <ref role="1h_SK9" to="tpee:fzclF80" resolve="StatementList" />
    <node concept="1hA7zw" id="7fu6WF7NnlY" role="1h_SK8">
      <property role="1hAc7j" value="insert_action_id" />
      <node concept="1hAIg9" id="7fu6WF7NnlZ" role="1hA7z_">
        <node concept="3clFbS" id="7fu6WF7Nnm0" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="7fu6WF7NnlK" role="1h_SK8">
      <property role="1hAc7j" value="insert_before_action_id" />
      <node concept="1hAIg9" id="7fu6WF7NnlL" role="1hA7z_">
        <node concept="3clFbS" id="7fu6WF7NnlM" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="7fu6WF7Nnmq" role="1h_SK8">
      <property role="1hAc7j" value="insert_placeholder_action_id" />
      <node concept="1hAIg9" id="7fu6WF7Nnmr" role="1hA7z_">
        <node concept="3clFbS" id="7fu6WF7Nnms" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="7fu6WF7NnmI" role="1h_SK8">
      <property role="1hAc7j" value="insert_placeholder_before_action_id" />
      <node concept="1hAIg9" id="7fu6WF7NnmJ" role="1hA7z_">
        <node concept="3clFbS" id="7fu6WF7NnmK" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="2LAMgc0yehs" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2LAMgc0yeht" role="1hA7z_">
        <node concept="3clFbS" id="2LAMgc0yehu" role="2VODD2" />
      </node>
    </node>
    <node concept="1hA7zw" id="7fu6WF7Nnn5" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="7fu6WF7Nnn6" role="1hA7z_">
        <node concept="3clFbS" id="7fu6WF7Nnn7" role="2VODD2" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="17bdEo4Nhiw">
    <property role="3GE5qa" value="additions" />
    <ref role="1XX52x" to="2ox9:17bdEo4NfkI" resolve="TemplateMethod2" />
    <node concept="3EZMnI" id="17bdEo4Nhiy" role="2wV5jI">
      <node concept="3EZMnI" id="17bdEo4NhiD" role="3EZMnx">
        <node concept="VPM3Z" id="17bdEo4NhiF" role="3F10Kt" />
        <node concept="3F0ifn" id="17bdEo4NhiN" role="3EZMnx">
          <property role="3F0ifm" value="template2" />
          <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
        </node>
        <node concept="1iCGBv" id="17bdEo4Oj0c" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:17bdEo4O2yV" resolve="var" />
          <node concept="1sVBvm" id="17bdEo4Oj0e" role="1sWHZn">
            <node concept="1iCGBv" id="17bdEo4Oj0v" role="2wV5jI">
              <ref role="1NtTu8" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
              <node concept="1sVBvm" id="17bdEo4Oj0x" role="1sWHZn">
                <node concept="3F0A7n" id="17bdEo4Oj0F" role="2wV5jI">
                  <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="17bdEo4Nhj5" role="3EZMnx">
          <property role="3F0ifm" value="is" />
        </node>
        <node concept="3F0ifn" id="17bdEo4O2oN" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="2iRfu4" id="17bdEo4NhiI" role="2iSdaV" />
        <node concept="3F2HdR" id="17bdEo4O2o6" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="tpee:fzclF7Y" resolve="parameter" />
          <node concept="3F0ifn" id="17bdEo4O2o7" role="2czzBI">
            <node concept="VPM3Z" id="17bdEo4O2o8" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VPxyj" id="17bdEo4O2o9" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="17bdEo4O2oa" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="17bdEo4O2ot" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
      </node>
      <node concept="3EZMnI" id="7B6ZlWYXArL" role="3EZMnx">
        <node concept="2iRfu4" id="7B6ZlWYXArM" role="2iSdaV" />
        <node concept="3XFhqQ" id="7B6ZlWYXAsg" role="3EZMnx" />
        <node concept="3XFhqQ" id="7B6ZlWYXAst" role="3EZMnx" />
        <node concept="3F1sOY" id="17bdEo4Nhji" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:17bdEo4O2yY" resolve="lines" />
        </node>
      </node>
      <node concept="3F0ifn" id="17bdEo4Nhjr" role="3EZMnx">
        <property role="3F0ifm" value="end template" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="2iRkQZ" id="17bdEo4Nhi_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="17bdEo4NhxY">
    <property role="3GE5qa" value="additions" />
    <ref role="1XX52x" to="2ox9:17bdEo4Nh3M" resolve="TemplateMethod2Template" />
    <node concept="3EZMnI" id="17bdEo4Nhy0" role="2wV5jI">
      <node concept="3EZMnI" id="17bdEo4Nhy1" role="3EZMnx">
        <node concept="2iRfu4" id="17bdEo4Nhy3" role="2iSdaV" />
        <node concept="3F1sOY" id="17bdEo4Nhy4" role="3EZMnx">
          <ref role="1NtTu8" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
          <node concept="2w$q5c" id="17bdEo4Nhy5" role="3xwHhi">
            <node concept="2aJ2om" id="17bdEo4Nhy6" role="2w$qW5">
              <ref role="2$4xQ3" node="4oa7lsXu3Gy" resolve="Template" />
            </node>
          </node>
        </node>
        <node concept="pkWqt" id="17bdEo4Nhy8" role="pqm2j">
          <node concept="3clFbS" id="17bdEo4Nhy9" role="2VODD2">
            <node concept="3clFbF" id="17bdEo4Nhya" role="3cqZAp">
              <node concept="2OqwBi" id="17bdEo4Nhyb" role="3clFbG">
                <node concept="2OqwBi" id="17bdEo4Nhyc" role="2Oq$k0">
                  <node concept="pncrf" id="17bdEo4Nhyd" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="17bdEo4Nhye" role="2OqNvi">
                    <node concept="1xMEDy" id="17bdEo4Nhyf" role="1xVPHs">
                      <node concept="chp4Y" id="17bdEo4Nhyg" role="ri$Ld">
                        <ref role="cht4Q" to="2ox9:7qKxkmc3Bh" resolve="TemplateMethod" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3w_OXm" id="17bdEo4Nhyh" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="17bdEo4Nhyi" role="3EZMnx">
        <node concept="3XFhqQ" id="17bdEo4Nhyj" role="3EZMnx" />
        <node concept="3XFhqQ" id="17bdEo4Nhyk" role="3EZMnx" />
        <node concept="3F1sOY" id="17bdEo4Nhyl" role="3EZMnx">
          <ref role="1NtTu8" to="2ox9:17bdEo4Nh3N" resolve="lines" />
        </node>
        <node concept="2iRfu4" id="17bdEo4Nhym" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="17bdEo4Nhyo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="22chdPF5h_m">
    <ref role="1XX52x" to="2ox9:22chdPF5he9" resolve="TemplateTabWord" />
    <node concept="3F0ifn" id="22chdPF5hB4" role="2wV5jI">
      <property role="3F0ifm" value="&gt;&gt;&gt;&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="2LAMgc0tTOp">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="2ox9:2LAMgc0tTOm" resolve="StubMethodBodyStatementList3" />
    <node concept="PMmxH" id="2LAMgc0tTOq" role="2wV5jI">
      <ref role="PMmxG" to="tpco:37EzmTDC95l" resolve="ImplementationRemovedInStubMessage" />
    </node>
  </node>
  <node concept="3p36aQ" id="2LAMgc0tTOr">
    <property role="3GE5qa" value="methods" />
    <ref role="aqKnT" to="2ox9:2LAMgc0tTOm" resolve="StubMethodBodyStatementList3" />
  </node>
  <node concept="24kQdi" id="2LAMgc0tWNU">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="2ox9:2LAMgc0tT_0" resolve="MethodBodyStatementList3" />
    <node concept="3EZMnI" id="hT0Kxcl" role="2wV5jI">
      <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
      <node concept="VPM3Z" id="hVXAmy6" role="3F10Kt" />
      <node concept="ljvvj" id="2LAMgc0wa3R" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="pVoyu" id="2LAMgc0wxfO" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="l2Vlx" id="i0qsPtC" role="2iSdaV" />
      <node concept="3F2HdR" id="hT0KxlR" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:fzcqZ_x" resolve="statement" />
        <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
        <node concept="3F0ifn" id="hT0KxlS" role="2czzBI">
          <property role="ilYzB" value="&lt;no statements&gt;" />
          <node concept="VPM3Z" id="hT0KxlT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="hT0KxlU" role="3F10Kt">
            <property role="Vbekb" value="ITALIC" />
          </node>
          <node concept="VPxyj" id="hT0KxlV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="hT0KxlW" role="3F10Kt">
            <property role="Vb096" value="darkGray" />
          </node>
        </node>
        <node concept="VPM3Z" id="hT0KxlX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pj6Ft" id="7zOahLfnq$4" role="3F10Kt">
          <property role="VOm3f" value="true" />
          <node concept="3nzxsE" id="7zOahLfnq$5" role="3n$kyP">
            <node concept="3clFbS" id="7zOahLfnq$6" role="2VODD2">
              <node concept="3cpWs6" id="7zOahLfnq$7" role="3cqZAp">
                <node concept="3fqX7Q" id="7zOahLfnq$8" role="3cqZAk">
                  <node concept="2OqwBi" id="7zOahLfnq$9" role="3fr31v">
                    <node concept="pncrf" id="7zOahLfnq$a" role="2Oq$k0" />
                    <node concept="2qgKlT" id="7zOahLfnq$b" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i0zxBt8" resolve="isCompact" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="i0qsPWT" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2LAMgc0u33A">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
    <node concept="3EZMnI" id="2LAMgc0u35t" role="2wV5jI">
      <node concept="VPM3Z" id="2LAMgc0u35u" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="2LAMgc0u35v" role="3EZMnx">
        <property role="3F0ifm" value="template3" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="PMmxH" id="2LAMgc0u35w" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hfRTih$" resolve="BaseMethodDeclaration_NameCellComponent" />
        <node concept="3nxI2P" id="2LAMgc0u35x" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="2LAMgc0u35y" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        <node concept="2SqB2G" id="2LAMgc0u35z" role="2SqHTX">
          <property role="TrG5h" value="leftParen" />
        </node>
      </node>
      <node concept="3F2HdR" id="2LAMgc0u35$" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tpee:fzclF7Y" resolve="parameter" />
        <node concept="3F0ifn" id="2LAMgc0u35_" role="2czzBI">
          <node concept="VPM3Z" id="2LAMgc0u35A" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPxyj" id="2LAMgc0u35B" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="2LAMgc0u35C" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2LAMgc0u35D" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="2SqB2G" id="2LAMgc0u35E" role="2SqHTX">
          <property role="TrG5h" value="rightParen" />
        </node>
        <node concept="VPM3Z" id="2LAMgc0u35F" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="A1WHu" id="2LAMgc0u35G" role="3vIgyS">
          <ref role="A1WHt" to="tpen:1wEcoXjJMHl" resolve="InstanceMethodDeclaration_ApplySideTransforms_1" />
        </node>
      </node>
      <node concept="PMmxH" id="2LAMgc0u35H" role="3EZMnx">
        <ref role="PMmxG" to="tpen:4ZFm$8SP4Ko" resolve="BaseMethodDeclaration_ThrowsCollection_Component" />
      </node>
      <node concept="3F0ifn" id="2LAMgc0u35I" role="3EZMnx">
        <property role="3F0ifm" value="is" />
        <ref role="1k5W1q" node="6EV$eJxriLd" resolve="ExpressionSeparator" />
      </node>
      <node concept="3F0ifn" id="2LAMgc0u35J" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1ERwB7" to="tpen:64WA21b_Rbu" resolve="DeleteClassifierMember" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
        <node concept="pkWqt" id="2LAMgc0u35K" role="pqm2j">
          <node concept="3clFbS" id="2LAMgc0u35L" role="2VODD2">
            <node concept="3cpWs6" id="2LAMgc0u35M" role="3cqZAp">
              <node concept="3fqX7Q" id="2LAMgc0u35N" role="3cqZAk">
                <node concept="2OqwBi" id="2LAMgc0u35O" role="3fr31v">
                  <node concept="pncrf" id="2LAMgc0u35P" role="2Oq$k0" />
                  <node concept="2qgKlT" id="2LAMgc0u35Q" role="2OqNvi">
                    <ref role="37wK5l" to="tpek:10BRnhak8m8" resolve="hasBody" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ljvvj" id="2LAMgc0u35R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2LAMgc0u5gi" role="3EZMnx">
        <ref role="1NtTu8" to="2ox9:fzclF7Z" resolve="body" />
        <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
      </node>
      <node concept="l2Vlx" id="2LAMgc0u35Z" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2LAMgc0wQkB">
    <property role="3GE5qa" value="methods" />
    <ref role="1XX52x" to="2ox9:2LAMgc0wQbd" resolve="TemplateReturnStatement" />
    <node concept="1QoScp" id="2LAMgc0$myN" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="35HoNQ" id="2LAMgc0$myP" role="1QoS34">
        <ref role="1ERwB7" node="7fu6WF7NnlJ" resolve="Block" />
      </node>
      <node concept="pkWqt" id="2LAMgc0$myQ" role="3e4ffs">
        <node concept="3clFbS" id="2LAMgc0$myS" role="2VODD2">
          <node concept="3clFbF" id="2LAMgc0$mJa" role="3cqZAp">
            <node concept="2OqwBi" id="2LAMgc0$vYv" role="3clFbG">
              <node concept="2OqwBi" id="2LAMgc0$tzC" role="2Oq$k0">
                <node concept="pncrf" id="2LAMgc0$tgr" role="2Oq$k0" />
                <node concept="2TvwIu" id="2LAMgc0$uHn" role="2OqNvi" />
              </node>
              <node concept="3GX2aA" id="2LAMgc0$yGV" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2LAMgc0$z4w" role="1QoVPY">
        <property role="3F0ifm" value="Template Incorrect: Run &quot;Fix Incorrect Template Method&quot;  intention to fix" />
        <ref role="1k5W1q" node="2LAMgc1vc09" resolve="TemplateError" />
      </node>
    </node>
  </node>
  <node concept="325Ffw" id="2LAMgc0zo2j">
    <property role="3GE5qa" value="other" />
    <property role="TrG5h" value="BlockKeyMap" />
    <node concept="2PxR9H" id="2LAMgc0zo9v" role="2QnnpI">
      <node concept="2Py5lD" id="2LAMgc0zo9w" role="2PyaAO">
        <property role="2PWKIS" value="VK_DELETE" />
      </node>
      <node concept="2PzhpH" id="2LAMgc0zo9x" role="2PL9iG">
        <node concept="3clFbS" id="2LAMgc0zo9y" role="2VODD2" />
      </node>
    </node>
    <node concept="2PxR9H" id="2LAMgc0zodf" role="2QnnpI">
      <node concept="2Py5lD" id="2LAMgc0zodg" role="2PyaAO">
        <property role="2PWKIS" value="VK_BACK_SPACE" />
      </node>
      <node concept="2PzhpH" id="2LAMgc0zodh" role="2PL9iG">
        <node concept="3clFbS" id="2LAMgc0zodi" role="2VODD2" />
      </node>
    </node>
  </node>
</model>

