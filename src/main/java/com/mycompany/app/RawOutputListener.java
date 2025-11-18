package com.mycompany.app;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.TerminalNode;

import macro10.Macro10ParserBaseListener;

public class RawOutputListener extends Macro10ParserBaseListener {

    private static final boolean PRINT_OUTPUT = true;
    // private static final boolean PRINT_OUTPUT = false;

    private int indent;

    @Override
    public void enterEveryRule(ParserRuleContext ctx) {

        if (PRINT_OUTPUT) {
            printIndent();
            System.out
                    .println(ctx.getClass().getSimpleName() + " [" + ctx.getStart().getText() + "] " + ctx.hashCode());
        }
        descend();
    }

    @Override
    public void exitEveryRule(ParserRuleContext ctx) {
        ascend();
    }

    @Override
    public void visitTerminal(TerminalNode node) {
        descend();

        if (PRINT_OUTPUT) {
            printIndent();
            System.out.println(node.getText());
            // currentNode.setLabel("TERMINAL: " + node.getText());
        }

        ascend();
    }

    private void descend() {
        indent++;
    }

    private void ascend() {
        indent--;
    }

    private void printIndent() {
        for (int i = 0; i < indent; i++) {
            System.out.print("  ");
        }
    }
}
