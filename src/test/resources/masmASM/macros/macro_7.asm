mWriteString MACRO string
    IFB <string>
        ECHO -------------------------------------------
        ECHO * Error: parameter missing in mWriteString
        ECHO * (no code generated)
        ECHO -------------------------------------------
        EXITM
    ENDIF
    push edx
    mov edx,OFFSET string
    call WriteString
    pop edx
ENDM