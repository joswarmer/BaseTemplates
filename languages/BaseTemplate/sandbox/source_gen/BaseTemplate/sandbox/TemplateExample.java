package BaseTemplate.sandbox;

/*Generated by MPS */

import java.util.List;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import BaseTemplate.behavior.TemplateResult;
import jetbrains.mps.internal.collections.runtime.DequeSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class TemplateExample {

  public static void main(String[] args) {
    List<String> names = new ArrayList<String>();
    names.add("aap");
    names.add("__noot");
    names.add("mies");
    names.add("aap");
    BaseTemplateGenerator generator = new BaseTemplateGenerator();
    String result = templateFunction(names);
    generator.generate("c:/data/bd/nio,out.txt", result);
    System.out.println(result);

    System.out.println("Done");
  }

  public static String templateFunction(List<String> names) {
    String world = "World";
    SNode literal = null;

    String template1 = "";
    {
      TemplateResult result = new TemplateResult();
      result.append("public void printSomething() {");
      result.appendNewline();
      result.append("    // Hello ");
      result.append("" + world);
      result.appendNewline();
      {
        DequeSequence.fromDequeNew(result.indents).pushElement("    ");
        boolean firstInLoop_4xg1bs_c0d0d = true;
        for (String name : names) {
          if (firstInLoop_4xg1bs_c0d0d) {
            firstInLoop_4xg1bs_c0d0d = false;
          }
          result.append("System.out.println(\"");
          result.append("" + name);
          result.append("\");");
          result.appendNewline();
          DequeSequence.fromDequeNew(result.indents).pushElement("    ");
          if (name.startsWith("a")) {
            result.append("// twaalf");
            result.appendNewline();
          } else {
            result.append("// No Twelve");
            result.appendNewline();
          }
          DequeSequence.fromDequeNew(result.indents).popElement();
        }
        DequeSequence.fromDequeNew(result.indents).popElement();
      }
      {
        SAbstractConcept cncpt = SNodeOperations.getConcept(literal);
        switch (conceptIndex.index(cncpt)) {
          case 0:
            if (true) {
              result.append("" + 12);
              result.appendNewline();
            }
            break;
          default:
        }
      }
      result.append("}");
      result.appendNewline();
      template1 = result.toString();
    }

    return template1;
  }
  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L)).seal();
}
