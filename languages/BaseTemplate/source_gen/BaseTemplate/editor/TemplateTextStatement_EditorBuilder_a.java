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
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.editor.runtime.EditorCell_Empty;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.editor.runtime.cells.EmptyCellAction;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import BaseTemplate.editor.Template_StyleSheet.ExpressionSeparatorStyleClass;
import jetbrains.mps.editor.runtime.style.StyleAttributes;

/*package*/ class TemplateTextStatement_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public TemplateTextStatement_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
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
    editorCell.setCellId("Collection_n6yzzm_a");
    editorCell.setBig(true);
    setCellContext(editorCell);
    editorCell.addEditorCell(createRefNodeList_0());
    editorCell.addEditorCell(createEmpty_0());
    if (nodeCondition_n6yzzm_a2a()) {
      editorCell.addEditorCell(createReadOnlyModelAccessor_0());
    }
    return editorCell;
  }
  private boolean nodeCondition_n6yzzm_a2a() {
    return SPropertyOperations.getBoolean(myNode, MetaAdapterFactory.getProperty(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb36L, 0x73de1bcac79f317aL, "withoutNewline"));
  }
  private EditorCell createRefNodeList_0() {
    AbstractCellListHandler handler = new TemplateTextStatement_EditorBuilder_a.wordsListHandler_n6yzzm_a0(myNode, getEditorContext());
    EditorCell_Collection editorCell = handler.createCells(new CellLayout_Horizontal(), false);
    editorCell.setCellId("refNodeList_words");
    editorCell.setSRole(handler.getElementSRole());
    return editorCell;
  }
  private static class wordsListHandler_n6yzzm_a0 extends RefNodeListHandler {
    @NotNull
    private SNode myNode;

    public wordsListHandler_n6yzzm_a0(SNode ownerNode, EditorContext context) {
      super(context, false);
      myNode = ownerNode;
    }

    @NotNull
    public SNode getNode() {
      return myNode;
    }
    public SContainmentLink getSLink() {
      return MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb36L, 0x6abb90ebe165cb79L, "words");
    }
    public SAbstractConcept getChildSConcept() {
      return MetaAdapterFactory.getInterfaceConcept(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb39L, "BaseTemplate.structure.TemplateWord");
    }

    public EditorCell createNodeCell(SNode elementNode) {
      EditorCell elementCell = getUpdateSession().updateChildNodeCell(elementNode);
      installElementCellActions(elementNode, elementCell, false);
      return elementCell;
    }
    public EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(wordsListHandler_n6yzzm_a0.this.getNode(), MetaAdapterFactory.getContainmentLink(0xdb391f02128c4f99L, 0x939ab50794314dffL, 0x6abb90ebe165cb36L, 0x6abb90ebe165cb79L, "words")));
      try {
        EditorCell emptyCell = null;
        emptyCell = createConstant_0();
        installElementCellActions(null, emptyCell, true);
        setCellContext(emptyCell);
        return emptyCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    public void installElementCellActions(SNode elementNode, EditorCell elementCell, boolean isEmptyCell) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.FORWARD));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode, CellAction_DeleteNode.DeleteDirection.BACKWARD));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo((isEmptyCell ? new SEmptyContainmentSubstituteInfo(elementCell) : new SChildSubstituteInfo(elementCell)));
        }
      }
    }
    private EditorCell createConstant_0() {
      EditorCell_Constant editorCell = new EditorCell_Constant(getEditorContext(), myNode, "");
      editorCell.setCellId("Constant_n6yzzm_a0a");
      editorCell.setDefaultText("Type \" for string or < for expression");
      return editorCell;
    }
  }
  private EditorCell createEmpty_0() {
    EditorCell_Empty editorCell = new EditorCell_Empty(getEditorContext(), myNode);
    editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(editorCell.getSNode(), CellAction_DeleteNode.DeleteDirection.FORWARD));
    editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(editorCell.getSNode(), CellAction_DeleteNode.DeleteDirection.BACKWARD));
    editorCell.setCellId("Empty_n6yzzm_b0");
    return editorCell;
  }
  private EditorCell createReadOnlyModelAccessor_0() {
    EditorCell_Property editorCell = EditorCell_Property.create(getEditorContext(), new ModelAccessor() {
      public String getText() {
        return "\u00AB";
      }
      public void setText(String s) {
      }
      public boolean isValidText(String s) {
        return EqualUtil.equals(s, getText());
      }
    }, myNode);
    editorCell.setAction(CellActionType.DELETE, EmptyCellAction.getInstance());
    editorCell.setAction(CellActionType.BACKSPACE, EmptyCellAction.getInstance());
    editorCell.setCellId("ReadOnlyModelAccessor_n6yzzm_c0");
    Style style = new StyleImpl();
    new ExpressionSeparatorStyleClass(getEditorContext(), getNode()).apply(style, editorCell);
    style.set(StyleAttributes.EDITABLE, false);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
}
