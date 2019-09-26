<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b12bbd6f-d825-410c-8d09-184e761d6b97(BaseTemplate.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="2ox9" ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="7qKxkmdR3b">
    <property role="3GE5qa" value="additions" />
    <ref role="1M2myG" to="2ox9:7qKxkmc3Bh" resolve="TemplateMethod" />
    <node concept="EnEH3" id="7fu6WF7Oiy_" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="1LLf8_" id="7fu6WF7OiyB" role="1LXaQT">
        <node concept="3clFbS" id="7fu6WF7OiyC" role="2VODD2">
          <node concept="3clFbF" id="7fu6WF7OiyY" role="3cqZAp">
            <node concept="37vLTI" id="7fu6WF7OkC$" role="3clFbG">
              <node concept="1Wqviy" id="7fu6WF7OkNA" role="37vLTx" />
              <node concept="2OqwBi" id="7fu6WF7Oj0U" role="37vLTJ">
                <node concept="EsrRn" id="7fu6WF7OiyX" role="2Oq$k0" />
                <node concept="3TrcHB" id="7fu6WF7Ok9S" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7fu6WF7Ol1f" role="3cqZAp">
            <node concept="37vLTI" id="7fu6WF7OKiE" role="3clFbG">
              <node concept="1Wqviy" id="7fu6WF7OKId" role="37vLTx" />
              <node concept="2OqwBi" id="7fu6WF7O$S_" role="37vLTJ">
                <node concept="2OqwBi" id="7fu6WF7Opvm" role="2Oq$k0">
                  <node concept="1PxgMI" id="7fu6WF7OoPe" role="2Oq$k0">
                    <node concept="chp4Y" id="7fu6WF7Op3v" role="3oSUPX">
                      <ref role="cht4Q" to="2ox9:4oa7lsXtnEc" resolve="Template" />
                    </node>
                    <node concept="2OqwBi" id="7fu6WF7Onir" role="1m5AlR">
                      <node concept="2OqwBi" id="7fu6WF7Ol_h" role="2Oq$k0">
                        <node concept="EsrRn" id="7fu6WF7Ol1d" role="2Oq$k0" />
                        <node concept="3TrEf2" id="7fu6WF7OmO$" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="7fu6WF7OotV" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:4GU1DgEHJ2u" resolve="getFirstStatement" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7fu6WF7Ovm9" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7fu6WF7OEsR" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="17bdEo4ND_4">
    <property role="3GE5qa" value="additions" />
    <ref role="1M2myG" to="2ox9:17bdEo4NfkI" resolve="TemplateMethod2" />
    <node concept="EnEH3" id="17bdEo4ND_5" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="Eqf_E" id="17bdEo4ND_7" role="EtsB7">
        <node concept="3clFbS" id="17bdEo4ND_8" role="2VODD2">
          <node concept="3clFbF" id="17bdEo4NDHJ" role="3cqZAp">
            <node concept="2OqwBi" id="17bdEo4NJq5" role="3clFbG">
              <node concept="2OqwBi" id="17bdEo4NH9Q" role="2Oq$k0">
                <node concept="2OqwBi" id="17bdEo4NElO" role="2Oq$k0">
                  <node concept="EsrRn" id="17bdEo4NDHI" role="2Oq$k0" />
                  <node concept="3TrEf2" id="17bdEo4Okhr" role="2OqNvi">
                    <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                  </node>
                </node>
                <node concept="3TrEf2" id="17bdEo4NIqh" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                </node>
              </node>
              <node concept="3TrcHB" id="17bdEo4NLi$" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="17bdEo4NLC4" role="1LXaQT">
        <node concept="3clFbS" id="17bdEo4NLC5" role="2VODD2">
          <node concept="3clFbF" id="17bdEo4NLXP" role="3cqZAp">
            <node concept="37vLTI" id="17bdEo4NT_T" role="3clFbG">
              <node concept="1Wqviy" id="17bdEo4NTVV" role="37vLTx" />
              <node concept="2OqwBi" id="17bdEo4NQN7" role="37vLTJ">
                <node concept="2OqwBi" id="17bdEo4NP0u" role="2Oq$k0">
                  <node concept="2OqwBi" id="17bdEo4NMrL" role="2Oq$k0">
                    <node concept="EsrRn" id="17bdEo4NLXO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="17bdEo4OjPe" role="2OqNvi">
                      <ref role="3Tt5mk" to="2ox9:17bdEo4O2yV" resolve="var" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="17bdEo4NQ6H" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="17bdEo4NSzi" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2LAMgc0wLRq">
    <property role="3GE5qa" value="methods" />
    <ref role="1M2myG" to="2ox9:2LAMgc0tLpx" resolve="TemplateMethod3" />
    <node concept="EnEH3" id="2LAMgc0wLUE" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="1LLf8_" id="2LAMgc0wLUF" role="1LXaQT">
        <node concept="3clFbS" id="2LAMgc0wLUG" role="2VODD2">
          <node concept="3clFbF" id="2LAMgc0wLUH" role="3cqZAp">
            <node concept="37vLTI" id="2LAMgc0wLUI" role="3clFbG">
              <node concept="1Wqviy" id="2LAMgc0wLUJ" role="37vLTx" />
              <node concept="2OqwBi" id="2LAMgc0wLUK" role="37vLTJ">
                <node concept="EsrRn" id="2LAMgc0wLUL" role="2Oq$k0" />
                <node concept="3TrcHB" id="2LAMgc0wLUM" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2LAMgc0wLUN" role="3cqZAp">
            <node concept="37vLTI" id="2LAMgc0wLUO" role="3clFbG">
              <node concept="1Wqviy" id="2LAMgc0wLUP" role="37vLTx" />
              <node concept="2OqwBi" id="2LAMgc0wLUQ" role="37vLTJ">
                <node concept="2OqwBi" id="2LAMgc0wLUR" role="2Oq$k0">
                  <node concept="1PxgMI" id="2LAMgc0wLUS" role="2Oq$k0">
                    <node concept="chp4Y" id="2LAMgc0wLUT" role="3oSUPX">
                      <ref role="cht4Q" to="2ox9:4oa7lsXtnEc" resolve="Template" />
                    </node>
                    <node concept="2OqwBi" id="2LAMgc0wLUU" role="1m5AlR">
                      <node concept="2OqwBi" id="2LAMgc0wLUV" role="2Oq$k0">
                        <node concept="EsrRn" id="2LAMgc0wLUW" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2LAMgc0wLUX" role="2OqNvi">
                          <ref role="3Tt5mk" to="2ox9:fzclF7Z" resolve="body" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="2LAMgc0wLUY" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:4GU1DgEHJ2u" resolve="getFirstStatement" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2LAMgc0wLUZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2LAMgc0wLV0" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

