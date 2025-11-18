package com.mycompany.app;

import com.mycompany.model.Block;
import com.mycompany.model.ConditionalAssembly;
import com.mycompany.model.ConditionalAssemblyType;
import com.mycompany.model.Expr;
import com.mycompany.model.Node;

import macro10.Macro10Parser;
import macro10.Macro10ParserBaseListener;

public class ProcessingOutputListener extends Macro10ParserBaseListener {

    Node node = new Node();

    // asm_file

    @Override
    public void enterAsm_file(Macro10Parser.Asm_fileContext ctx) {

    }

    @Override
    public void exitAsm_file(Macro10Parser.Asm_fileContext ctx) {
        System.out.println(ctx.getText());
    }

    // assembler instructions > conditional assembly -- page 252 in the manual PDF

    @Override
    public void enterConditional_assembly(Macro10Parser.Conditional_assemblyContext ctx) {

        ConditionalAssembly conditionalAssembly = new ConditionalAssembly();

        connectParentAndChild(conditionalAssembly);
        descend(conditionalAssembly);
    }

    @Override
    public void exitConditional_assembly(Macro10Parser.Conditional_assemblyContext ctx) {

        ConditionalAssembly conditionalAssembly = (ConditionalAssembly) node;

        String conditional_if = ctx.children.get(0).getText();
        ConditionalAssemblyType conditionalAssemblyType = ConditionalAssemblyType.fromString(conditional_if);

        conditionalAssembly.conditionalAssemblyType = conditionalAssemblyType;
        // conditionalAssembly.expression = ctx.children.get(1);

        ascend();
    }

    // block

    @Override
    public void enterBlock(Macro10Parser.BlockContext ctx) {

        Block block = new Block();

        connectParentAndChild(block);
        descend(block);
    }

    @Override
    public void exitBlock(Macro10Parser.BlockContext ctx) {

        ascend();
    }

    // expression

    @Override
    public void enterExpr(Macro10Parser.ExprContext ctx) {
        System.out.println(ctx.getText());

        Expr expr = new Expr();

        connectParentAndChild(expr);
        descend(expr);
    }

    @Override
    public void exitExpr(Macro10Parser.ExprContext ctx) {
        System.out.println(ctx.getText());

        Expr expr = (Expr) node;

        if (ctx.getChildCount() == 1) {
            expr.value = ctx.getText();
        } else {
            expr.lhs = (Expr) expr.children.get(0);
            expr.operator = ctx.children.get(1).getText();
            expr.rhs = (Expr) expr.children.get(1);
        }

        ascend();
    }

    // utility functions

    private void connectParentAndChild(Node newNode) {
        if (node != null) {
            node.children.add(newNode);
            newNode.parent = node;
        }
    }

    private void descend(Node newNode) {
        node = newNode;
    }

    private void ascend() {
        node = node.parent;
    }
}
