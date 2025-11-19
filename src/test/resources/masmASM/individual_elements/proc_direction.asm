main PROC
    mov		eax,' '			;clear eax to add space between numbers
    CALL	Randomize
    push	OFFSET author
    MOV		eax,request
    exit	                ; exit to operating system
main ENDP