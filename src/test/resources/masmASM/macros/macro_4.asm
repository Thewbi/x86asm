mPutchar MACRO char:REQ
    push eax
    mov al,char
    call WriteChar
    pop eax
ENDM