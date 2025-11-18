package com.mycompany.app;

import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import macro10.Macro10Lexer;
import macro10.Macro10Parser;
import macro10.Macro10Parser.Asm_fileContext;
import macro10.Macro10Parser.ExprContext;


/**
 * Created with:
 *
 * <pre>
 * mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
 * </pre>
 *
 * Antlr extensions:
 *
 * open a .g4 file > CTRL + SHIFT + P > antlr.call-graph
 *
 * Clean java language server workspace:
 * Ctrl + Shift + P > Clean java language server workspace > Clean and Restart
 */
public class App {

    public static void main(String[] args) throws IOException {

        System.out.println("Lexing ...");

        // @formatter:off

        String file = "src/test/resources/macro10/assembler_instruction_1.s";
        // String file = "src/test/resources/macro10/assembler_instruction_2.s";
        // String file = "src/test/resources/macro10/assembler_instruction_3.s";

        // String file = "src/test/resources/macro10/expr_1.s";
        // String file = "src/test/resources/macro10/expr_2.s";

        // String file = "src/test/resources/macro10/file_header.s";

        // String file = "src/test/resources/macro10/ife_1.s";

        // String file = "src/test/resources/macro10/m6502.asm";
        // String file = "src/test/resources/macro10/macro_definition_1.s";
        // String file = "src/test/resources/macro10/macro_definition_2.s";

        // String file = "src/test/resources/macro10/scratchpad.s";

        // String file = "src/test/resources/macro10/todo.s";
        
        // String file = "src/test/resources/macro10/variable_definition_1.s";
        // String file = "src/test/resources/macro10/variable_equality_definition_1.s";

        // @formatter:on

        final CharStream charStream = CharStreams.fromFileName(file);

        final Macro10Lexer lexer = new Macro10Lexer(charStream);

        // create a buffer of tokens pulled from the lexer
        final CommonTokenStream tokens = new CommonTokenStream(lexer);

        System.out.println("Parsing ...");

        final Macro10Parser parser = new Macro10Parser(tokens);

        // parse
        Asm_fileContext root = parser.asm_file();
        // ExprContext root = parser.expr();

        // RawOutputListener listener = new RawOutputListener();
        ProcessingOutputListener listener = new ProcessingOutputListener();

        // create a generic parse tree walker that can trigger callbacks
        final ParseTreeWalker walker = new ParseTreeWalker();

        // walk the tree created during the parse, trigger callbacks
        walker.walk(listener, root);

    }

}
