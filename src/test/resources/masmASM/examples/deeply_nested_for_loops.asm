/*
int main() {
    for (int a1  = 0; a1  < 10; a1++) {
    for (int a2  = 0; a2  < 10; a2++) {
    for (int a3  = 0; a3  < 10; a3++) {
    for (int a4  = 0; a4  < 10; a4++) {
    for (int a5  = 0; a5  < 10; a5++) {
    for (int a6  = 0; a6  < 10; a6++) {
    for (int a7  = 0; a7  < 10; a7++) {
    for (int a8  = 0; a8  < 10; a8++) {
    for (int a9  = 0; a9  < 10; a9++) {
    for (int a10 = 0; a10 < 10; a10++) {
    for (int a11 = 0; a11 < 10; a11++) {
    for (int a12 = 0; a12 < 10; a12++) {
    for (int a13 = 0; a13 < 10; a13++) {
    for (int a14 = 0; a14 < 10; a14++) {
    for (int a15 = 0; a15 < 10; a15++) {
    for (int a16 = 0; a16 < 10; a16++) {
    for (int a17 = 0; a17 < 10; a17++) {
    for (int a18 = 0; a18 < 10; a18++) {
    for (int a19 = 0; a19 < 10; a19++) {
    for (int a20 = 0; a20 < 10; a20++) {
    for (int a21 = 0; a21 < 10; a21++) {
    for (int a22 = 0; a22 < 10; a22++) {
    for (int a23 = 0; a23 < 10; a23++) {
    for (int a24 = 0; a24 < 10; a24++) {
    for (int a25 = 0; a25 < 10; a25++) {
    for (int a26 = 0; a26 < 10; a26++) {
    for (int a27 = 0; a27 < 10; a27++) {
    for (int a28 = 0; a28 < 10; a28++) {
    for (int a29 = 0; a29 < 10; a29++) {
    for (int a30 = 0; a30 < 10; a30++) {
    for (int a31 = 0; a31 < 10; a31++) {
    for (int a32 = 0; a32 < 10; a32++) {
    for (int a33 = 0; a33 < 10; a33++) {

    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }
    }

    return 0;
}
*/



# License: MSVC Proprietary
# The use of this compiler is only permitted for internal evaluation purposes and is otherwise governed by the MSVC License Agreement.
# See https://visualstudio.microsoft.com/license-terms/vs2022-ga-community/
a1$1 = 0
a2$2 = 4
a3$3 = 8
a4$4 = 12
a5$5 = 16
a6$6 = 20
a7$7 = 24
a8$8 = 28
a9$9 = 32
a10$10 = 36
a11$11 = 40
a12$12 = 44
a13$13 = 48
a14$14 = 52
a15$15 = 56
a16$16 = 60
a17$17 = 64
a18$18 = 68
a19$19 = 72
a20$20 = 76
a21$21 = 80
a22$22 = 84
a23$23 = 88
a24$24 = 92
a25$25 = 96
a26$26 = 100
a27$27 = 104
a28$28 = 108
a29$29 = 112
a30$30 = 116
a31$31 = 120
a32$32 = 124
a33$33 = 128
main    PROC
$LN102:
        sub     rsp, 152                      ; 00000098H
        mov     DWORD PTR a1$1[rsp], 0
        jmp     SHORT $LN4@main
$LN2@main:
        mov     eax, DWORD PTR a1$1[rsp]
        inc     eax
        mov     DWORD PTR a1$1[rsp], eax
$LN4@main:
        cmp     DWORD PTR a1$1[rsp], 10
        jge     $LN3@main
        mov     DWORD PTR a2$2[rsp], 0
        jmp     SHORT $LN7@main
$LN5@main:
        mov     eax, DWORD PTR a2$2[rsp]
        inc     eax
        mov     DWORD PTR a2$2[rsp], eax
$LN7@main:
        cmp     DWORD PTR a2$2[rsp], 10
        jge     $LN6@main
        mov     DWORD PTR a3$3[rsp], 0
        jmp     SHORT $LN10@main
$LN8@main:
        mov     eax, DWORD PTR a3$3[rsp]
        inc     eax
        mov     DWORD PTR a3$3[rsp], eax
$LN10@main:
        cmp     DWORD PTR a3$3[rsp], 10
        jge     $LN9@main
        mov     DWORD PTR a4$4[rsp], 0
        jmp     SHORT $LN13@main
$LN11@main:
        mov     eax, DWORD PTR a4$4[rsp]
        inc     eax
        mov     DWORD PTR a4$4[rsp], eax
$LN13@main:
        cmp     DWORD PTR a4$4[rsp], 10
        jge     $LN12@main
        mov     DWORD PTR a5$5[rsp], 0
        jmp     SHORT $LN16@main
$LN14@main:
        mov     eax, DWORD PTR a5$5[rsp]
        inc     eax
        mov     DWORD PTR a5$5[rsp], eax
$LN16@main:
        cmp     DWORD PTR a5$5[rsp], 10
        jge     $LN15@main
        mov     DWORD PTR a6$6[rsp], 0
        jmp     SHORT $LN19@main
$LN17@main:
        mov     eax, DWORD PTR a6$6[rsp]
        inc     eax
        mov     DWORD PTR a6$6[rsp], eax
$LN19@main:
        cmp     DWORD PTR a6$6[rsp], 10
        jge     $LN18@main
        mov     DWORD PTR a7$7[rsp], 0
        jmp     SHORT $LN22@main
$LN20@main:
        mov     eax, DWORD PTR a7$7[rsp]
        inc     eax
        mov     DWORD PTR a7$7[rsp], eax
$LN22@main:
        cmp     DWORD PTR a7$7[rsp], 10
        jge     $LN21@main
        mov     DWORD PTR a8$8[rsp], 0
        jmp     SHORT $LN25@main
$LN23@main:
        mov     eax, DWORD PTR a8$8[rsp]
        inc     eax
        mov     DWORD PTR a8$8[rsp], eax
$LN25@main:
        cmp     DWORD PTR a8$8[rsp], 10
        jge     $LN24@main
        mov     DWORD PTR a9$9[rsp], 0
        jmp     SHORT $LN28@main
$LN26@main:
        mov     eax, DWORD PTR a9$9[rsp]
        inc     eax
        mov     DWORD PTR a9$9[rsp], eax
$LN28@main:
        cmp     DWORD PTR a9$9[rsp], 10
        jge     $LN27@main
        mov     DWORD PTR a10$10[rsp], 0
        jmp     SHORT $LN31@main
$LN29@main:
        mov     eax, DWORD PTR a10$10[rsp]
        inc     eax
        mov     DWORD PTR a10$10[rsp], eax
$LN31@main:
        cmp     DWORD PTR a10$10[rsp], 10
        jge     $LN30@main
        mov     DWORD PTR a11$11[rsp], 0
        jmp     SHORT $LN34@main
$LN32@main:
        mov     eax, DWORD PTR a11$11[rsp]
        inc     eax
        mov     DWORD PTR a11$11[rsp], eax
$LN34@main:
        cmp     DWORD PTR a11$11[rsp], 10
        jge     $LN33@main
        mov     DWORD PTR a12$12[rsp], 0
        jmp     SHORT $LN37@main
$LN35@main:
        mov     eax, DWORD PTR a12$12[rsp]
        inc     eax
        mov     DWORD PTR a12$12[rsp], eax
$LN37@main:
        cmp     DWORD PTR a12$12[rsp], 10
        jge     $LN36@main
        mov     DWORD PTR a13$13[rsp], 0
        jmp     SHORT $LN40@main
$LN38@main:
        mov     eax, DWORD PTR a13$13[rsp]
        inc     eax
        mov     DWORD PTR a13$13[rsp], eax
$LN40@main:
        cmp     DWORD PTR a13$13[rsp], 10
        jge     $LN39@main
        mov     DWORD PTR a14$14[rsp], 0
        jmp     SHORT $LN43@main
$LN41@main:
        mov     eax, DWORD PTR a14$14[rsp]
        inc     eax
        mov     DWORD PTR a14$14[rsp], eax
$LN43@main:
        cmp     DWORD PTR a14$14[rsp], 10
        jge     $LN42@main
        mov     DWORD PTR a15$15[rsp], 0
        jmp     SHORT $LN46@main
$LN44@main:
        mov     eax, DWORD PTR a15$15[rsp]
        inc     eax
        mov     DWORD PTR a15$15[rsp], eax
$LN46@main:
        cmp     DWORD PTR a15$15[rsp], 10
        jge     $LN45@main
        mov     DWORD PTR a16$16[rsp], 0
        jmp     SHORT $LN49@main
$LN47@main:
        mov     eax, DWORD PTR a16$16[rsp]
        inc     eax
        mov     DWORD PTR a16$16[rsp], eax
$LN49@main:
        cmp     DWORD PTR a16$16[rsp], 10
        jge     $LN48@main
        mov     DWORD PTR a17$17[rsp], 0
        jmp     SHORT $LN52@main
$LN50@main:
        mov     eax, DWORD PTR a17$17[rsp]
        inc     eax
        mov     DWORD PTR a17$17[rsp], eax
$LN52@main:
        cmp     DWORD PTR a17$17[rsp], 10
        jge     $LN51@main
        mov     DWORD PTR a18$18[rsp], 0
        jmp     SHORT $LN55@main
$LN53@main:
        mov     eax, DWORD PTR a18$18[rsp]
        inc     eax
        mov     DWORD PTR a18$18[rsp], eax
$LN55@main:
        cmp     DWORD PTR a18$18[rsp], 10
        jge     $LN54@main
        mov     DWORD PTR a19$19[rsp], 0
        jmp     SHORT $LN58@main
$LN56@main:
        mov     eax, DWORD PTR a19$19[rsp]
        inc     eax
        mov     DWORD PTR a19$19[rsp], eax
$LN58@main:
        cmp     DWORD PTR a19$19[rsp], 10
        jge     $LN57@main
        mov     DWORD PTR a20$20[rsp], 0
        jmp     SHORT $LN61@main
$LN59@main:
        mov     eax, DWORD PTR a20$20[rsp]
        inc     eax
        mov     DWORD PTR a20$20[rsp], eax
$LN61@main:
        cmp     DWORD PTR a20$20[rsp], 10
        jge     $LN60@main
        mov     DWORD PTR a21$21[rsp], 0
        jmp     SHORT $LN64@main
$LN62@main:
        mov     eax, DWORD PTR a21$21[rsp]
        inc     eax
        mov     DWORD PTR a21$21[rsp], eax
$LN64@main:
        cmp     DWORD PTR a21$21[rsp], 10
        jge     $LN63@main
        mov     DWORD PTR a22$22[rsp], 0
        jmp     SHORT $LN67@main
$LN65@main:
        mov     eax, DWORD PTR a22$22[rsp]
        inc     eax
        mov     DWORD PTR a22$22[rsp], eax
$LN67@main:
        cmp     DWORD PTR a22$22[rsp], 10
        jge     $LN66@main
        mov     DWORD PTR a23$23[rsp], 0
        jmp     SHORT $LN70@main
$LN68@main:
        mov     eax, DWORD PTR a23$23[rsp]
        inc     eax
        mov     DWORD PTR a23$23[rsp], eax
$LN70@main:
        cmp     DWORD PTR a23$23[rsp], 10
        jge     $LN69@main
        mov     DWORD PTR a24$24[rsp], 0
        jmp     SHORT $LN73@main
$LN71@main:
        mov     eax, DWORD PTR a24$24[rsp]
        inc     eax
        mov     DWORD PTR a24$24[rsp], eax
$LN73@main:
        cmp     DWORD PTR a24$24[rsp], 10
        jge     $LN72@main
        mov     DWORD PTR a25$25[rsp], 0
        jmp     SHORT $LN76@main
$LN74@main:
        mov     eax, DWORD PTR a25$25[rsp]
        inc     eax
        mov     DWORD PTR a25$25[rsp], eax
$LN76@main:
        cmp     DWORD PTR a25$25[rsp], 10
        jge     $LN75@main
        mov     DWORD PTR a26$26[rsp], 0
        jmp     SHORT $LN79@main
$LN77@main:
        mov     eax, DWORD PTR a26$26[rsp]
        inc     eax
        mov     DWORD PTR a26$26[rsp], eax
$LN79@main:
        cmp     DWORD PTR a26$26[rsp], 10
        jge     $LN78@main
        mov     DWORD PTR a27$27[rsp], 0
        jmp     SHORT $LN82@main
$LN80@main:
        mov     eax, DWORD PTR a27$27[rsp]
        inc     eax
        mov     DWORD PTR a27$27[rsp], eax
$LN82@main:
        cmp     DWORD PTR a27$27[rsp], 10
        jge     $LN81@main
        mov     DWORD PTR a28$28[rsp], 0
        jmp     SHORT $LN85@main
$LN83@main:
        mov     eax, DWORD PTR a28$28[rsp]
        inc     eax
        mov     DWORD PTR a28$28[rsp], eax
$LN85@main:
        cmp     DWORD PTR a28$28[rsp], 10
        jge     $LN84@main
        mov     DWORD PTR a29$29[rsp], 0
        jmp     SHORT $LN88@main
$LN86@main:
        mov     eax, DWORD PTR a29$29[rsp]
        inc     eax
        mov     DWORD PTR a29$29[rsp], eax
$LN88@main:
        cmp     DWORD PTR a29$29[rsp], 10
        jge     $LN87@main
        mov     DWORD PTR a30$30[rsp], 0
        jmp     SHORT $LN91@main
$LN89@main:
        mov     eax, DWORD PTR a30$30[rsp]
        inc     eax
        mov     DWORD PTR a30$30[rsp], eax
$LN91@main:
        cmp     DWORD PTR a30$30[rsp], 10
        jge     SHORT $LN90@main
        mov     DWORD PTR a31$31[rsp], 0
        jmp     SHORT $LN94@main
$LN92@main:
        mov     eax, DWORD PTR a31$31[rsp]
        inc     eax
        mov     DWORD PTR a31$31[rsp], eax
$LN94@main:
        cmp     DWORD PTR a31$31[rsp], 10
        jge     SHORT $LN93@main
        mov     DWORD PTR a32$32[rsp], 0
        jmp     SHORT $LN97@main
$LN95@main:
        mov     eax, DWORD PTR a32$32[rsp]
        inc     eax
        mov     DWORD PTR a32$32[rsp], eax
$LN97@main:
        cmp     DWORD PTR a32$32[rsp], 10
        jge     SHORT $LN96@main
        mov     DWORD PTR a33$33[rsp], 0
        jmp     SHORT $LN100@main
$LN98@main:
        mov     eax, DWORD PTR a33$33[rsp]
        inc     eax
        mov     DWORD PTR a33$33[rsp], eax
$LN100@main:
        cmp     DWORD PTR a33$33[rsp], 10
        jge     SHORT $LN99@main
        jmp     SHORT $LN98@main
$LN99@main:
        jmp     SHORT $LN95@main
$LN96@main:
        jmp     SHORT $LN92@main
$LN93@main:
        jmp     SHORT $LN89@main
$LN90@main:
        jmp     $LN86@main
$LN87@main:
        jmp     $LN83@main
$LN84@main:
        jmp     $LN80@main
$LN81@main:
        jmp     $LN77@main
$LN78@main:
        jmp     $LN74@main
$LN75@main:
        jmp     $LN71@main
$LN72@main:
        jmp     $LN68@main
$LN69@main:
        jmp     $LN65@main
$LN66@main:
        jmp     $LN62@main
$LN63@main:
        jmp     $LN59@main
$LN60@main:
        jmp     $LN56@main
$LN57@main:
        jmp     $LN53@main
$LN54@main:
        jmp     $LN50@main
$LN51@main:
        jmp     $LN47@main
$LN48@main:
        jmp     $LN44@main
$LN45@main:
        jmp     $LN41@main
$LN42@main:
        jmp     $LN38@main
$LN39@main:
        jmp     $LN35@main
$LN36@main:
        jmp     $LN32@main
$LN33@main:
        jmp     $LN29@main
$LN30@main:
        jmp     $LN26@main
$LN27@main:
        jmp     $LN23@main
$LN24@main:
        jmp     $LN20@main
$LN21@main:
        jmp     $LN17@main
$LN18@main:
        jmp     $LN14@main
$LN15@main:
        jmp     $LN11@main
$LN12@main:
        jmp     $LN8@main
$LN9@main:
        jmp     $LN5@main
$LN6@main:
        jmp     $LN2@main
$LN3@main:
        xor     eax, eax
        add     rsp, 152                      ; 00000098H
        ret     0
main    ENDP