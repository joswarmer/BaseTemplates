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
  <node concept="37WguZ" id="6EV$eJxr_3k">
    <property role="TrG5h" value="template" />
    <node concept="37WvkG" id="6EV$eJxr_3l" role="37WGs$">
      <ref role="37XkoT" to="2ox9:4oa7lsXtnEc" resolve="Template" />
      <node concept="37Y9Zx" id="6EV$eJxr_3m" role="37ZfLb">
        <node concept="3clFbS" id="6EV$eJxr_3n" role="2VODD2">
          <node concept="3clFbF" id="7fu6WF7HHHd" role="3cqZAp">
            <node concept="2OqwBi" id="7fu6WF7HK0B" role="3clFbG">
              <node concept="2OqwBi" id="7fu6WF7HHHi" role="2Oq$k0">
                <node concept="1r4Lsj" id="7fu6WF7HHHj" role="2Oq$k0" />
                <node concept="3TrEf2" id="7fu6WF7HHHk" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="2DeJnY" id="7fu6WF7HKDK" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="7fu6WF7HHzv" role="3cqZAp" />
          <node concept="3clFbF" id="4oa7lsXujpj" role="3cqZAp">
            <node concept="37vLTI" id="4oa7lsXul6a" role="3clFbG">
              <node concept="2ShNRf" id="4oa7lsXulde" role="37vLTx">
                <node concept="3zrR0B" id="4oa7lsXuldc" role="2ShVmc">
                  <node concept="3Tqbb2" id="4oa7lsXuldd" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4oa7lsXujKZ" role="37vLTJ">
                <node concept="1r4Lsj" id="4oa7lsXujph" role="2Oq$k0" />
                <node concept="3TrEf2" id="4oa7lsXukz0" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4oa7lsXum8a" role="3cqZAp">
            <node concept="37vLTI" id="4oa7lsXum8b" role="3clFbG">
              <node concept="2OqwBi" id="4oa7lsXum8c" role="37vLTJ">
                <node concept="2OqwBi" id="4oa7lsXum8d" role="2Oq$k0">
                  <node concept="1r4Lsj" id="4oa7lsXum8e" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4oa7lsXum8f" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4oa7lsXum8g" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="2c44tf" id="4oa7lsXum8h" role="37vLTx">
                <node concept="17QB3L" id="4oa7lsXum8i" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4oa7lsXuefV" role="3cqZAp">
            <node concept="37vLTI" id="4oa7lsXuopO" role="3clFbG">
              <node concept="2OqwBi" id="4oa7lsXufHh" role="37vLTJ">
                <node concept="2OqwBi" id="4oa7lsXuevt" role="2Oq$k0">
                  <node concept="1r4Lsj" id="4oa7lsXuefU" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4oa7lsXufhu" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="4oa7lsXunjb" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                </node>
              </node>
              <node concept="2c44tf" id="4oa7lsXuoQO" role="37vLTx">
                <node concept="Xl_RD" id="4oa7lsXuoZz" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="17bdEo4NxmV" role="37WGs$">
      <ref role="37XkoT" to="2ox9:17bdEo4Nh3M" resolve="TemplateMethod2Template" />
      <node concept="37Y9Zx" id="17bdEo4NxmW" role="37ZfLb">
        <node concept="3clFbS" id="17bdEo4NxmX" role="2VODD2">
          <node concept="3clFbF" id="17bdEo4NxmY" role="3cqZAp">
            <node concept="2OqwBi" id="17bdEo4NxmZ" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4Nxn0" role="2Oq$k0">
                <node concept="1r4Lsj" id="17bdEo4Nxn1" role="2Oq$k0" />
                <node concept="3TrEf2" id="17bdEo4Nxn2" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="2DeJnY" id="17bdEo4Nxn3" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="17bdEo4Nxn4" role="3cqZAp" />
          <node concept="3clFbF" id="17bdEo4Nxn5" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4Nxn6" role="3clFbG">
              <node concept="2ShNRf" id="17bdEo4Nxn7" role="37vLTx">
                <node concept="3zrR0B" id="17bdEo4Nxn8" role="2ShVmc">
                  <node concept="3Tqbb2" id="17bdEo4Nxn9" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="17bdEo4Nxna" role="37vLTJ">
                <node concept="1r4Lsj" id="17bdEo4Nxnb" role="2Oq$k0" />
                <node concept="3TrEf2" id="17bdEo4Nxnc" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4Nxnd" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4Nxne" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4Nxnf" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4Nxng" role="2Oq$k0">
                  <node concept="1r4Lsj" id="17bdEo4Nxnh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="17bdEo4Nxni" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4Nxnj" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="2c44tf" id="17bdEo4Nxnk" role="37vLTx">
                <node concept="17QB3L" id="17bdEo4Nxnl" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4Nxnm" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4Nxnn" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4Nxno" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4Nxnp" role="2Oq$k0">
                  <node concept="1r4Lsj" id="17bdEo4Nxnq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="17bdEo4Nxnr" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4Nxns" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                </node>
              </node>
              <node concept="2c44tf" id="17bdEo4Nxnt" role="37vLTx">
                <node concept="Xl_RD" id="17bdEo4Nxnu" role="2c44tc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37WvkG" id="17bdEo4O2z2" role="37WGs$">
      <ref role="37XkoT" to="2ox9:17bdEo4NfkI" resolve="TemplateMethod2" />
      <node concept="37Y9Zx" id="17bdEo4O2z3" role="37ZfLb">
        <node concept="3clFbS" id="17bdEo4O2z4" role="2VODD2">
          <node concept="3clFbF" id="17bdEo4ObZy" role="3cqZAp">
            <node concept="2OqwBi" id="17bdEo4OdhU" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4OcJo" role="2Oq$k0">
                <node concept="1r4Lsj" id="17bdEo4ObZw" role="2Oq$k0" />
                <node concept="3TrEf2" id="17bdEo4OcQA" role="2OqNvi">
                  <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                </node>
              </node>
              <node concept="2DeJnY" id="17bdEo4Oejz" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4O2C3" role="3cqZAp">
            <node concept="2OqwBi" id="17bdEo4O2C4" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4O2C5" role="2Oq$k0">
                <node concept="2OqwBi" id="17bdEo4O5zy" role="2Oq$k0">
                  <node concept="1r4Lsj" id="17bdEo4O2C6" role="2Oq$k0" />
                  <node concept="3TrEf2" id="17bdEo4O6fo" role="2OqNvi">
                    <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4O2C7" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="2DeJnY" id="17bdEo4O2C8" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4O2Ca" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4O2Cb" role="3clFbG">
              <node concept="2ShNRf" id="17bdEo4O2Cc" role="37vLTx">
                <node concept="3zrR0B" id="17bdEo4O2Cd" role="2ShVmc">
                  <node concept="3Tqbb2" id="17bdEo4O2Ce" role="3zrR0E">
                    <ref role="ehGHo" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="17bdEo4O2Cf" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4O7WR" role="2Oq$k0">
                  <node concept="1r4Lsj" id="17bdEo4O2Cg" role="2Oq$k0" />
                  <node concept="3TrEf2" id="17bdEo4O83O" role="2OqNvi">
                    <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4O2Ch" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4O2Ci" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4O2Cj" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4O2Ck" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4O2Cl" role="2Oq$k0">
                  <node concept="2OqwBi" id="17bdEo4O9h6" role="2Oq$k0">
                    <node concept="1r4Lsj" id="17bdEo4O2Cm" role="2Oq$k0" />
                    <node concept="3TrEf2" id="17bdEo4O9o3" role="2OqNvi">
                      <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="17bdEo4O2Cn" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4O2Co" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" resolve="type" />
                </node>
              </node>
              <node concept="2c44tf" id="17bdEo4O2Cp" role="37vLTx">
                <node concept="17QB3L" id="17bdEo4O2Cq" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="17bdEo4O2Cr" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4O2Cs" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4O2Ct" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4O2Cu" role="2Oq$k0">
                  <node concept="2OqwBi" id="17bdEo4Oa_t" role="2Oq$k0">
                    <node concept="1r4Lsj" id="17bdEo4O2Cv" role="2Oq$k0" />
                    <node concept="3TrEf2" id="17bdEo4Obhn" role="2OqNvi">
                      <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="17bdEo4O2Cw" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4O2Cx" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz3vP1I" resolve="initializer" />
                </node>
              </node>
              <node concept="2c44tf" id="17bdEo4O2Cy" role="37vLTx">
                <node concept="Xl_RD" id="17bdEo4O2Cz" role="2c44tc" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="17bdEo4OeQf" role="3cqZAp" />
          <node concept="3clFbF" id="17bdEo4Oft2" role="3cqZAp">
            <node concept="2OqwBi" id="17bdEo4Oibl" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4Ogeh" role="2Oq$k0">
                <node concept="1r4Lsj" id="17bdEo4Oft0" role="2Oq$k0" />
                <node concept="3TrEf2" id="17bdEo4OhAc" role="2OqNvi">
                  <ref role="3Tt5mk" to="2ox9:17bdEo4O2yY" resolve="lines" />
                </node>
              </node>
              <node concept="2DeJnY" id="17bdEo4OiQM" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

