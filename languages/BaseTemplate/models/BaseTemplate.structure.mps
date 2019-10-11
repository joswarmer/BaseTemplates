<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c0e94c7-78c3-4e1c-b938-14b308eab0c5(BaseTemplate.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="356a" ref="r:3b7ed80f-6cfd-45bc-b051-2f66c620dd27(jetbrains.mps.lang.traceable.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
    </language>
  </registry>
  <node concept="1TIwiD" id="6EV$eJxpsGQ">
    <property role="EcuMT" value="7690900131438512950" />
    <property role="TrG5h" value="TemplateTextStatement" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" node="6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="1TJgyj" id="6EV$eJxpsHT" role="1TKVEi">
      <property role="IQ2ns" value="7690900131438513017" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="words" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6EV$eJxpsGT" resolve="TemplateWord" />
    </node>
    <node concept="1TJgyi" id="7fu6WF7BN5U" role="1TKVEl">
      <property role="IQ2nx" value="8349141316937920890" />
      <property role="TrG5h" value="withoutNewline" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="PlHQZ" id="6EV$eJxpsGT">
    <property role="EcuMT" value="7690900131438512953" />
    <property role="TrG5h" value="TemplateWord" />
  </node>
  <node concept="1TIwiD" id="6EV$eJxpsGU">
    <property role="EcuMT" value="7690900131438512954" />
    <property role="TrG5h" value="TemplateExpressionWord" />
    <property role="34LRSv" value="&lt;" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6EV$eJxpsGX" role="1TKVEi">
      <property role="IQ2ns" value="7690900131438512957" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="exp" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="6EV$eJxpsGV" role="PzmwI">
      <ref role="PrY4T" node="6EV$eJxpsGT" resolve="TemplateWord" />
    </node>
  </node>
  <node concept="1TIwiD" id="6EV$eJxpsGZ">
    <property role="EcuMT" value="7690900131438512959" />
    <property role="TrG5h" value="TemplateStringWord" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6EV$eJxpsH2" role="1TKVEl">
      <property role="IQ2nx" value="7690900131438512962" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="6EV$eJxpsH0" role="PzmwI">
      <ref role="PrY4T" node="6EV$eJxpsGT" resolve="TemplateWord" />
    </node>
  </node>
  <node concept="1TIwiD" id="6EV$eJxrieU">
    <property role="EcuMT" value="7690900131438994362" />
    <property role="TrG5h" value="TemplateStatement" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7mU70b2rtUQ" role="PzmwI">
      <ref role="PrY4T" node="7mU70b2rtRp" resolve="TemplateSeparators" />
    </node>
  </node>
  <node concept="1TIwiD" id="6EV$eJxrieV">
    <property role="EcuMT" value="7690900131438994363" />
    <property role="TrG5h" value="TemplateIfStatement" />
    <property role="34LRSv" value="if" />
    <ref role="1TJDcQ" node="6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="1TJgyj" id="6EV$eJxrieZ" role="1TKVEi">
      <property role="IQ2ns" value="7690900131438994367" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6EV$eJxriKc" role="1TKVEi">
      <property role="IQ2ns" value="7690900131438996492" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="whenTrue" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6EV$eJxrHeT" resolve="TemplateStatementList" />
    </node>
    <node concept="1TJgyj" id="4AafYjkYNK6" role="1TKVEi">
      <property role="IQ2ns" value="5299118163613137926" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="whenFalse" />
      <ref role="20lvS9" node="6EV$eJxrHeT" resolve="TemplateStatementList" />
    </node>
    <node concept="PrWs8" id="22chdPGubzA" role="PzmwI">
      <ref role="PrY4T" node="22chdPGubkZ" resolve="Indentable" />
    </node>
  </node>
  <node concept="1TIwiD" id="6EV$eJxrHeT">
    <property role="EcuMT" value="7690900131439104953" />
    <property role="TrG5h" value="TemplateStatementList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6EV$eJxrHeU" role="1TKVEi">
      <property role="IQ2ns" value="7690900131439104954" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="statements" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6EV$eJxrieU" resolve="TemplateStatement" />
    </node>
    <node concept="1TJgyi" id="7mU70b2pEBL" role="1TKVEl">
      <property role="IQ2nx" value="8483123646282770929" />
      <property role="TrG5h" value="separator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7mU70b2pEBN" role="1TKVEl">
      <property role="IQ2nx" value="8483123646282770931" />
      <property role="TrG5h" value="start" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7mU70b2pEBQ" role="1TKVEl">
      <property role="IQ2nx" value="8483123646282770934" />
      <property role="TrG5h" value="end" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6EV$eJxsTTd">
    <property role="EcuMT" value="7690900131439418957" />
    <property role="TrG5h" value="TemplateForStatement" />
    <property role="34LRSv" value="for" />
    <ref role="1TJDcQ" node="6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="1TJgyj" id="gDDuvdF" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="0..1" />
      <property role="IQ2ns" value="1144230900587" />
      <ref role="20lvS9" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
    <node concept="1TJgyj" id="gMLFqrC" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1154032183016" />
      <ref role="20lvS9" node="6EV$eJxrHeT" resolve="TemplateStatementList" />
    </node>
    <node concept="1TJgyj" id="gDDdaHA" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="iterable" />
      <property role="20lbJX" value="1" />
      <property role="IQ2ns" value="1144226360166" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="6EV$eJxt0nw" role="PzmwI">
      <ref role="PrY4T" to="356a:4pl5GY7LKmy" resolve="ScopeConcept" />
    </node>
    <node concept="PrWs8" id="6EV$eJxt1Zz" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="7mU70b2rtTR" role="PzmwI">
      <ref role="PrY4T" node="7mU70b2rtRp" resolve="TemplateSeparators" />
    </node>
    <node concept="PrWs8" id="22chdPGubup" role="PzmwI">
      <ref role="PrY4T" node="22chdPGubkZ" resolve="Indentable" />
    </node>
    <node concept="1TJgyi" id="7mU70b2grf1" role="1TKVEl">
      <property role="IQ2nx" value="8483123646280348609" />
      <property role="TrG5h" value="separator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7mU70b2qj7j" role="1TKVEl">
      <property role="IQ2nx" value="8483123646282936787" />
      <property role="TrG5h" value="start" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7mU70b2qj7m" role="1TKVEl">
      <property role="IQ2nx" value="8483123646282936790" />
      <property role="TrG5h" value="end" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4oa7lsXtnEc">
    <property role="EcuMT" value="5046878592952531596" />
    <property role="TrG5h" value="Template" />
    <property role="34LRSv" value="template" />
    <ref role="1TJDcQ" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
    <node concept="1TJgyj" id="4oa7lsXtnEh" role="1TKVEi">
      <property role="IQ2ns" value="5046878592952531601" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6EV$eJxrHeT" resolve="TemplateStatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="7qKxkmhuSK">
    <property role="EcuMT" value="133632534784634416" />
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="TemplateCase" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7qKxkmhv5t" role="1TKVEi">
      <property role="IQ2ns" value="133632534784635229" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="concept" />
      <ref role="20lvS9" to="tp25:gNgn60t" resolve="ConceptReference" />
    </node>
    <node concept="1TJgyj" id="7qKxkmi2ZR" role="1TKVEi">
      <property role="IQ2ns" value="133632534784782327" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lines" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="6EV$eJxrHeT" resolve="TemplateStatementList" />
    </node>
  </node>
  <node concept="1TIwiD" id="7qKxkmjvUp">
    <property role="EcuMT" value="133632534785162905" />
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="TemplateSwitchStatement" />
    <property role="34LRSv" value="switch" />
    <ref role="1TJDcQ" node="6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="1TJgyj" id="7qKxkmjvUq" role="1TKVEi">
      <property role="IQ2ns" value="133632534785162906" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="7qKxkmjvUr" role="1TKVEi">
      <property role="IQ2ns" value="133632534785162907" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cases" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="7qKxkmhuSK" resolve="TemplateCase" />
    </node>
    <node concept="PrWs8" id="22chdPGubPs" role="PzmwI">
      <ref role="PrY4T" node="22chdPGubkZ" resolve="Indentable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4AafYjlY7rQ">
    <property role="EcuMT" value="5299118163629733622" />
    <property role="TrG5h" value="TemplateCommentStatement" />
    <property role="34LRSv" value="//" />
    <ref role="1TJDcQ" node="6EV$eJxrieU" resolve="TemplateStatement" />
    <node concept="1TJgyi" id="4AafYjlY7_Z" role="1TKVEl">
      <property role="IQ2nx" value="5299118163629734271" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="7mU70b2rtRp">
    <property role="EcuMT" value="8483123646283242969" />
    <property role="TrG5h" value="TemplateSeparators" />
  </node>
  <node concept="1TIwiD" id="22chdPF5he9">
    <property role="EcuMT" value="2345325223728190345" />
    <property role="TrG5h" value="TemplateTabWord" />
    <property role="34LRSv" value="\t" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="22chdPF5hrE" role="PzmwI">
      <ref role="PrY4T" node="6EV$eJxpsGT" resolve="TemplateWord" />
    </node>
  </node>
  <node concept="PlHQZ" id="22chdPGubkZ">
    <property role="EcuMT" value="2345325223751497023" />
    <property role="TrG5h" value="Indentable" />
    <node concept="1TJgyi" id="22chdPGubpe" role="1TKVEl">
      <property role="IQ2nx" value="2345325223751497294" />
      <property role="TrG5h" value="indent" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2LAMgc0tLpx">
    <property role="EcuMT" value="3199465600023205473" />
    <property role="TrG5h" value="TemplateMethod3" />
    <property role="3GE5qa" value="methods" />
    <property role="34LRSv" value="template" />
    <ref role="1TJDcQ" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    <node concept="1TJgyj" id="15Qfdb4Ohqp" role="1TKVEi">
      <property role="IQ2ns" value="1258260021839468185" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <ref role="20lvS9" node="4oa7lsXtnEc" resolve="Template" />
    </node>
  </node>
  <node concept="1TIwiD" id="2LAMgc0wQbd">
    <property role="EcuMT" value="3199465600024011469" />
    <property role="3GE5qa" value="methods" />
    <property role="TrG5h" value="TemplateReturnStatement" />
    <ref role="1TJDcQ" to="tpee:fzcpWvY" resolve="ReturnStatement" />
    <node concept="t5JxF" id="2LAMgc0xx_Z" role="lGtFl">
      <property role="t5JxN" value="Special return statement taht will never show explicitly." />
    </node>
  </node>
</model>

