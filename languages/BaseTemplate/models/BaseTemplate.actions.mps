<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e9e01e80-4286-4d32-a07f-af147ab3fad3(BaseTemplate.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2ox9" ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
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
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="37WguZ" id="6EV$eJxr_3k">
    <property role="TrG5h" value="template" />
    <node concept="37WvkG" id="2LAMgc0wHiQ" role="37WGs$">
      <ref role="37XkoT" to="2ox9:4oa7lsXtnEc" resolve="Template" />
      <node concept="37Y9Zx" id="2LAMgc0wHiR" role="37ZfLb">
        <node concept="3clFbS" id="2LAMgc0wHiS" role="2VODD2">
          <node concept="3clFbF" id="2LAMgc0wHiT" role="3cqZAp">
            <node concept="2OqwBi" id="2LAMgc0wHiU" role="3clFbG">
              <node concept="2OqwBi" id="2LAMgc0wHiV" role="2Oq$k0">
                <node concept="1r4Lsj" id="2LAMgc0wHiW" role="2Oq$k0" />
                <node concept="3TrEf2" id="2LAMgc0wHiX" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="2DeJnY" id="2LAMgc0wHiY" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="2LAMgc0wHiZ" role="3cqZAp" />
          <node concept="3clFbF" id="2LAMgc0wHj0" role="3cqZAp">
            <node concept="37vLTI" id="2LAMgc0wHj1" role="3clFbG">
              <node concept="2ShNRf" id="2LAMgc0wHj2" role="37vLTx">
                <node concept="3zrR0B" id="2LAMgc0wHj3" role="2ShVmc">
                  <node concept="3Tqbb2" id="2LAMgc0wHj4" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2LAMgc0wHj5" role="37vLTJ">
                <node concept="1r4Lsj" id="2LAMgc0wHj6" role="2Oq$k0" />
                <node concept="3TrEf2" id="2LAMgc0wHj7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2LAMgc0wHj8" role="3cqZAp">
            <node concept="37vLTI" id="2LAMgc0wHj9" role="3clFbG">
              <node concept="2OqwBi" id="2LAMgc0wHja" role="37vLTJ">
                <node concept="2OqwBi" id="2LAMgc0wHjb" role="2Oq$k0">
                  <node concept="1r4Lsj" id="2LAMgc0wHjc" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2LAMgc0wHjd" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2LAMgc0wHje" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="2c44tf" id="2LAMgc0wHjf" role="37vLTx">
                <node concept="17QB3L" id="2LAMgc0wHjg" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2LAMgc0wHjh" role="3cqZAp">
            <node concept="37vLTI" id="2LAMgc0wHji" role="3clFbG">
              <node concept="2OqwBi" id="2LAMgc0wHjj" role="37vLTJ">
                <node concept="2OqwBi" id="2LAMgc0wHjk" role="2Oq$k0">
                  <node concept="1r4Lsj" id="2LAMgc0wHjl" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2LAMgc0wHjm" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2LAMgc0wHjn" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                </node>
              </node>
              <node concept="2c44tf" id="2LAMgc0wHjo" role="37vLTx">
                <node concept="Xl_RD" id="2LAMgc0wHjp" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="15Qfdb4Yv_e" role="37WGs$">
      <ref role="37XkoT" to="2ox9:6EV$eJxrHeT" resolve="TemplateStatementList" />
      <node concept="37Y9Zx" id="15Qfdb4Yv_f" role="37ZfLb">
        <node concept="3clFbS" id="15Qfdb4Yv_g" role="2VODD2">
          <node concept="3clFbF" id="15Qfdb4YvIj" role="3cqZAp">
            <node concept="2OqwBi" id="15Qfdb4Yy0w" role="3clFbG">
              <node concept="2OqwBi" id="15Qfdb4YvT0" role="2Oq$k0">
                <node concept="1r4Lsj" id="15Qfdb4YvIi" role="2Oq$k0" />
                <node concept="3Tsc0h" id="15Qfdb4Yw3T" role="2OqNvi">
                  <ref role="3TtcxE" to="2ox9:6EV$eJxrHeU" resolve="statements" />
                </node>
              </node>
              <node concept="2DeJg1" id="15Qfdb4Y_oN" role="2OqNvi">
                <ref role="1A0vxQ" to="2ox9:6EV$eJxrieU" resolve="TemplateStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

