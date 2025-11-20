mPutchar MACRO char
    push eax
    mov al,char
    call WriteChar
    pop eax
ENDM