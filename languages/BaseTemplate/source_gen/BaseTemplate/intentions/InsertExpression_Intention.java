package BaseTemplate.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.AbstractIntentionDescriptor;
import jetbrains.mps.openapi.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.openapi.intentions.IntentionExecutable;
import jetbrains.mps.openapi.intentions.Kind;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Label;
import java.util.Collections;
import jetbrains.mps.intentions.AbstractIntentionExecutable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.openapi.intentions.IntentionDescriptor;

public final class InsertExpression_Intention extends AbstractIntentionDescriptor implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public InsertExpression_Intention() {
    super(Kind.NORMAL, false, new SNodePointer("r:b761631d-c4eb-4928-b80a-054c89970ec8(BaseTemplate.intentions)", "2173902492093428852"));
  }
  @Override
  public String getPresentation() {
    return "InsertExpression";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    EditorCell contextCell = editorContext.getContextCell();
    EditorCell_Label label = (EditorCell_Label) contextCell;
    int size = label.getText().length();
    int start = label.getSelectionStart();
    int end = label.getSelectionEnd();

    if (start != end && end - start != size) {
      // selection, so split is possible 
      return true;
    } else {
      // exclude split at both ends when there is no selection 
      return start != 0 && start != size;
    }
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new InsertExpression_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends AbstractIntentionExecutable {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      EditorCell_Label label = (EditorCell_Label) contextCell;
      if (label.getSelectionEnd() - label.getSelectionStart() < 1) {
        return "Template: Insert Expression at Cursor";
      } else {
        return "Template: Change Selected Text to Expression";
      }
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      EditorCell_Label label = (EditorCell_Label) contextCell;
      String text = label.getText();

      SNode selected_node = node;
      String before = text.substring(0, label.getSelectionStart());

      SPropertyOperations.assign(node, MetaAdapterFactory.getProperty(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb3fL, 0x6abb90ebe165cb42L, "text"), before);

      String mid = text.substring(label.getSelectionStart(), label.getSelectionEnd());

      SNode midWord = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb3aL, "BaseTemplate.structure.TemplateExpressionWord"));
      if (!((mid == null || mid.length() == 0))) {
        SNode newExp = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"));
        SPropertyOperations.assign(newExp, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), ((mid == null || mid.length() == 0) ? "" : mid));
        SLinkOperations.setTarget(midWord, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb3aL, 0x6abb90ebe165cb3dL, "exp"), newExp);
      }
      SNodeOperations.insertNextSiblingChild(node, midWord);
      selected_node = midWord;

      String after = text.substring(label.getSelectionEnd(), text.length());
      if ((after != null && after.length() > 0)) {
        SNode afterWord = SConceptOperations.createNewNode(MetaAdapterFactory.getConcept(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb3fL, "BaseTemplate.structure.TemplateStringWord"));
        SPropertyOperations.assign(afterWord, MetaAdapterFactory.getProperty(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb3fL, 0x6abb90ebe165cb42L, "text"), after);
        SNodeOperations.insertNextSiblingChild(selected_node, afterWord);
      }

      if ((before == null || before.length() == 0)) {
        SNodeOperations.deleteNode(node);
      }

      editorContext.select(selected_node);
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return InsertExpression_Intention.this;
    }
  }
}
