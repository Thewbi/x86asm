package com.mycompany.model;

/**
 * page 252 in the manual PDF for the macro 10 assembler
 * 
 * <pre>
 * Operator:
 * IFE -- N == 0 or blank
 * IFG -- N > 0
 * IFGE -- N == 0 or N > 0
 * IFL -- N < 0
 * IFLE -- N == 0 or N < 0
 * IFN -- N != 0
 * IF1 -- encountered during pass 1
 * IF2 -- encountered during pass 2
 * </pre>
 */
public enum ConditionalAssemblyType {

    IFE, IFG, IFGE, IFL, IFLE, IFN, IF1, IF2;

    public static ConditionalAssemblyType fromString(String data) {

        if (data.equalsIgnoreCase("IFE")) {
            return IFE;
        } else if (data.equalsIgnoreCase("IFG")) {
            return IFG;
        } else if (data.equalsIgnoreCase("IFGE")) {
            return IFGE;
        } else if (data.equalsIgnoreCase("IFL")) {
            return IFL;
        } else if (data.equalsIgnoreCase("IFLE")) {
            return IFLE;
        } else if (data.equalsIgnoreCase("IFN")) {
            return IFN;
        } else if (data.equalsIgnoreCase("IF1")) {
            return IF1;
        } else if (data.equalsIgnoreCase("IF2")) {
            return IF2;
        }

        throw new RuntimeException("Unknown ConditionalAssembly: " + data);
    }
}
