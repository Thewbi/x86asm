# License: MSVC Proprietary
# The use of this compiler is only permitted for internal evaluation purposes and is otherwise governed by the MSVC License Agreement.
# See https://visualstudio.microsoft.com/license-terms/vs2022-ga-community/
_DATA   SEGMENT
COMM    `__local_stdio_printf_options'::`2'::_OptionsStorage:QWORD                                                    ; `__local_stdio_printf_options'::`2'::_OptionsStorage
COMM    `__local_stdio_scanf_options'::`2'::_OptionsStorage:QWORD                                           ; `__local_stdio_scanf_options'::`2'::_OptionsStorage
_DATA   ENDS
_DATA   SEGMENT
$SG9919 DB        'Enter an integer: ', 00H
        ORG $+1
$SG9920 DB        '%d', 00H
        ORG $+1
$SG9923 DB        '%d is a palindrome.', 00H
        ORG $+4
$SG9924 DB        '%d is not a palindrome.', 00H
_DATA   ENDS

n$ = 32
reversed$ = 36
original$ = 40
remainder$ = 44
main    PROC
$LN7:
        sub     rsp, 56                             ; 00000038H
        mov     DWORD PTR reversed$[rsp], 0
        lea     rcx, OFFSET FLAT:$SG9919
        call    printf
        lea     rdx, QWORD PTR n$[rsp]
        lea     rcx, OFFSET FLAT:$SG9920
        call    scanf
        mov     eax, DWORD PTR n$[rsp]
        mov     DWORD PTR original$[rsp], eax
$LN2@main:
        cmp     DWORD PTR n$[rsp], 0
        je      SHORT $LN3@main
        mov     eax, DWORD PTR n$[rsp]
        cdq
        mov     ecx, 10
        idiv    ecx
        mov     eax, edx
        mov     DWORD PTR remainder$[rsp], eax
        imul    eax, DWORD PTR reversed$[rsp], 10
        add     eax, DWORD PTR remainder$[rsp]
        mov     DWORD PTR reversed$[rsp], eax
        mov     eax, DWORD PTR n$[rsp]
        cdq
        mov     ecx, 10
        idiv    ecx
        mov     DWORD PTR n$[rsp], eax
        jmp     SHORT $LN2@main
$LN3@main:
        mov     eax, DWORD PTR reversed$[rsp]
        cmp     DWORD PTR original$[rsp], eax
        jne     SHORT $LN4@main
        mov     edx, DWORD PTR original$[rsp]
        lea     rcx, OFFSET FLAT:$SG9923
        call    printf
        npad    1
        jmp     SHORT $LN5@main
$LN4@main:
        mov     edx, DWORD PTR original$[rsp]
        lea     rcx, OFFSET FLAT:$SG9924
        call    printf
        npad    1
$LN5@main:
        xor     eax, eax
        add     rsp, 56                             ; 00000038H
        ret     0
main    ENDP


// Source: https://www.programiz.com/c-programming/examples/palindrome-number
// 
// include <stdio.h>
// nt main() {
//  int n, reversed = 0, remainder, original;
//    printf("Enter an integer: ");
//    scanf("%d", &n);
//    original = n;
// 
//    // reversed integer is stored in reversed variable
//    while (n != 0) {
//        remainder = n % 10;
//        reversed = reversed * 10 + remainder;
//        n /= 10;
//    }
// 
//    // palindrome if orignal and reversed are equal
//    if (original == reversed)
//        printf("%d is a palindrome.", original);
//    else
//        printf("%d is not a palindrome.", original);
// 
//    return 0;
// 