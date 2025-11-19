; helper macro to put int3 in the output code
@bpx	macro
	mov	al,0CCh
	stosb
endm