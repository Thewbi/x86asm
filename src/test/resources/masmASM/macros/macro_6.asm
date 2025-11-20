mWrite MACRO text
    LOCAL string        ;; local label
    .data
    string BYTE text,0  ;; define the string
    .code
    push    edx
    mov    edx,OFFSET string
    call    WriteString
    pop    edx
ENDM