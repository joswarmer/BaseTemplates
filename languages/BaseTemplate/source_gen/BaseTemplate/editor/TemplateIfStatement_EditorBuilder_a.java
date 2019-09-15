package BaseTemplate.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.openapi.editor.menus.transformation.SPropertyInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.SPropertyAccessor;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSPropertyOrNode;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import BaseTemplate.editor.Template_StyleSheet.TemplateTextStyleClass;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.SPropertySubstituteInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.lang.core.behavior.PropertyAttribute__BehaviorDescriptor;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.openapi.editor.update.AttributeKind;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import BaseTemplate.editor.Template_StyleSheet.ExpressionSeparatorStyleClass;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSmart;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.nodeEditor.cells.EditorCell_Indent;

/*package*/ class TemplateIfStatement_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public TemplateIfStatement_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createCollection_0();
  }

  private EditorCell createCollection_0() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Horizontal());
    editorCell.setCellId("Collection_jea5ey_a");
    editorCell.setBig(true);
    setCellContext(editorCell);
    if (nodeCondition_jea5ey_a0a()) {
      editorCell.addEditorCell(createProperty_0());
    }
    editorCell.addEditorCell(createCollection_1());
    return editorCell;
  }
  private boolean nodeCondition_jea5ey_a0a() {
    return SPropertyOperations.getString(myNode, MetaAdapterFactory.getProperty(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x208c44dd6c78b53fL, 0x208c44dd6c78b64eL, "indent")) != null;
  }
  private EditorCell createProperty_0() {
    getCellFactory().pushCellContext();
    try {
      final SProperty property = MetaAdapterFactory.getProperty(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x208c44dd6c78b53fL, 0x208c44dd6c78b64eL, "indent");
      getCellFactory().setPropertyInfo(new SPropertyInfo(myNode, property));
      EditorCell_Property editorCell = EditorCell_Property.create(getEditorContext(), new SPropertyAccessor(myNode, property, false, true), myNode);
      editorCell.setDefaultText("<indent>");
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSPropertyOrNode(myNode, property, CellAction_DeleteNode.DeleteDirection.FORWARD));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSPropertyOrNode(myNode, property, CellAction_DeleteNode.DeleteDirection.BACKWARD));
      editorCell.setCellId("property_indent");
      Style style = new StyleImpl();
      new TemplateTextStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
      style.set(StyleAttributes.PUNCTUATION_RIGHT, true);
      editorCell.getStyle().putAll(style);
      editorCell.setSubstituteInfo(new SPropertySubstituteInfo(editorCell, property));
      setCellContext(editorCell);
      Iterable<SNode> propertyAttributes = SNodeOperations.ofConcept(AttributeOperations.getAttributeList(myNode, new IAttributeDescriptor.AllAttributes()), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da56L, "jetbrains.mps.lang.core.structure.PropertyAttribute"));
      Iterable<SNode> currentPropertyAttributes = Sequence.fromIterable(propertyAttributes).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return Objects.equals(PropertyAttribute__BehaviorDescriptor.getProperty_id1avfQ4BBzOo.invoke(it), property);
        }
      });
      if (Sequence.fromIterable(currentPropertyAttributes).isNotEmpty()) {
        EditorManager manager = EditorManager.getInstanceFromContext(getEditorContext());
        return manager.createNodeRoleAttributeCell(Sequence.fromIterable(currentPropertyAttributes).first(), AttributeKind.PROPERTY, editorCell);
      } else
      return editorCell;
    } finally {
      getCellFactory().popCellContext();
    }
  }
  private EditorCell createCollection_1() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Vertical());
    editorCell.setCellId("Collection_jea5ey_b0");
    editorCell.addEditorCell(createCollection_2());
    editorCell.addEditorCell(createCollection_3());
    if (nodeCondition_jea5ey_a2b0()) {
      editorCell.addEditorCell(createConstant_2());
    }
    if (nodeCondition_jea5ey_a3b0()) {
      editorCell.addEditorCell(createCollection_4());
    }
    editorCell.addEditorCell(createConstant_3());
    return editorCell;
  }
  private boolean nodeCondition_jea5ey_a2b0() {
    return (SLinkOperations.getTarget(myNode, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse")) != null);
  }
  private boolean nodeCondition_jea5ey_a3b0() {
    return (SLinkOperations.getTarget(myNode, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse")) != null);
  }
  private EditorCell createCollection_2() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Horizontal());
    editorCell.setCellId("Collection_jea5ey_a1a");
    editorCell.addEditorCell(createConstant_0());
    editorCell.addEditorCell(createRefNode_0());
    editorCell.addEditorCell(createConstant_1());
    return editorCell;
  }
  private EditorCell createConstant_0() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "if");
    editorCell.setCellId("Constant_jea5ey_a0b0");
    Style style = new StyleImpl();
    new ExpressionSeparatorStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_0() {
    SingleRoleCellProvider provider = new TemplateIfStatement_EditorBuilder_a.conditionSingleRoleHandler_jea5ey_b0b0(myNode, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d23bfL, "condition"), getEditorContext());
    return provider.createCell();
  }
  private static class conditionSingleRoleHandler_jea5ey_b0b0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public conditionSingleRoleHandler_jea5ey_b0b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d23bfL, "condition"), child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d23bfL, "condition"), child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d23bfL, "condition"));
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d23bfL, "condition")));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_condition");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no condition>";
    }
  }
  private EditorCell createConstant_1() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "");
    editorCell.setCellId("Constant_jea5ey_c0b0");
    Style style = new StyleImpl();
    new ExpressionSeparatorStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_3() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Horizontal());
    editorCell.setCellId("Collection_jea5ey_b1a");
    editorCell.addEditorCell(createIndentCell_0());
    editorCell.addEditorCell(createIndentCell_1());
    editorCell.addEditorCell(createRefNode_1());
    return editorCell;
  }
  private EditorCell createIndentCell_0() {
    EditorCell_Indent editorCell = new EditorCell_Indent(getEditorContext(), myNode);
    return editorCell;
  }
  private EditorCell createIndentCell_1() {
    EditorCell_Indent editorCell = new EditorCell_Indent(getEditorContext(), myNode);
    return editorCell;
  }
  private EditorCell createRefNode_1() {
    SingleRoleCellProvider provider = new TemplateIfStatement_EditorBuilder_a.whenTrueSingleRoleHandler_jea5ey_c1b0(myNode, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d2c0cL, "whenTrue"), getEditorContext());
    return provider.createCell();
  }
  private static class whenTrueSingleRoleHandler_jea5ey_c1b0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public whenTrueSingleRoleHandler_jea5ey_c1b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d2c0cL, "whenTrue"), child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d2c0cL, "whenTrue"), child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d2c0cL, "whenTrue"));
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x6abb90ebe16d2c0cL, "whenTrue")));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_whenTrue");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no whenTrue>";
    }
  }
  private EditorCell createConstant_2() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "else");
    editorCell.setCellId("Constant_jea5ey_c1a");
    Style style = new StyleImpl();
    new ExpressionSeparatorStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_4() {
    EditorCell_Collection editorCell = new EditorCell_Collection(getEditorContext(), myNode, new CellLayout_Horizontal());
    editorCell.setCellId("Collection_jea5ey_d1a");
    editorCell.addEditorCell(createIndentCell_2());
    editorCell.addEditorCell(createIndentCell_3());
    editorCell.addEditorCell(createRefNode_2());
    return editorCell;
  }
  private EditorCell createIndentCell_2() {
    EditorCell_Indent editorCell = new EditorCell_Indent(getEditorContext(), myNode);
    return editorCell;
  }
  private EditorCell createIndentCell_3() {
    EditorCell_Indent editorCell = new EditorCell_Indent(getEditorContext(), myNode);
    return editorCell;
  }
  private EditorCell createRefNode_2() {
    SingleRoleCellProvider provider = new TemplateIfStatement_EditorBuilder_a.whenFalseSingleRoleHandler_jea5ey_c3b0(myNode, MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse"), getEditorContext());
    return provider.createCell();
  }
  private static class whenFalseSingleRoleHandler_jea5ey_c3b0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public whenFalseSingleRoleHandler_jea5ey_c3b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse"), child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse"), child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse"));
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe16d23bbL, 0x498a3fe4d4fb3c06L, "whenFalse")));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_whenFalse");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no whenFalse>";
    }
  }
  private EditorCell createConstant_3() {
    EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "endif");
    editorCell.setCellId("Constant_jea5ey_e1a");
    Style style = new StyleImpl();
    new ExpressionSeparatorStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
