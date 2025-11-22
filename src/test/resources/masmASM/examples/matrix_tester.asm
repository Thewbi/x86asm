/*
// Msys2: install gcc: 
// pacman -S mingw-w64-ucrt-x86_64-gcc
// gcc.exe is installed to C:\msys64\mingw64\bin
// Add it to the path environment variable
// set PATH=%PATH%;C:\msys64\mingw64\bin\
//
// Compile an application:
// gcc main.c

#include <stdio.h>

//const static int DIMENSION = 4;
#define DIMENSION 4
#define ELEMENTS DIMENSION*DIMENSION

void printMatrix(int* matrix, int dim);
void prettyPrintFormatMatrix(int* matrix, int dim, const char* format);
void identityMatrix(int* matrix, int dim);
void zeroMatrix(int* matrix, int dim);
void upCountingMatrix(int* matrix, int dim);
void standardMatrixMult(int* matrixA, int* matrixB, int* matrixC, int rows, int columns);
void segmentedMatrixMult(int* matrixA, int* matrixB, int* matrixC, int rows, int columns);
//void matrixAdd(int* matrixA, int* matrixB, int* matrixC, int rows, int columns);
void matrixAddInto(int* matrixA, int* matrixB, int rows, int columns);
void getSubMatrix(int* matrix, int dim, int xPos, int yPos, int width, int height, int* matrixC);
void setSubMatrix(int* matrix, int dim, int xPos, int yPos, int width, int height, int* matrixC);

int main()
{
    printf("Matrix\n");

    int matrixA[ELEMENTS] = {
        9, 0, 9, 4,
        2, 6, 6, 7,
        9, 3, 8, 1,
        6, 9, 7, 1
    };
    int matrixB[ELEMENTS] = {
        1, 2, 4, 2,
        8, 6, 0, 0,
        7, 6, 8, 5,
        8, 4, 7, 5
    };
    int matrixC[ELEMENTS] = {
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0
    };

    int sub[4] = {
        0, 0, 
        0, 0
    };
    int subSetTest[4] = {
        1, 2, 
        3, 4
    };

    //setSubMatrix(matrixC, DIMENSION, 0, 0, 2, 2, subSetTest);
    //setSubMatrix(matrixC, DIMENSION, 1, 1, 2, 2, subSetTest);
    //prettyPrintFormatMatrix(matrixC, 4, "%6d");

    //matrixAddInto(matrixC, matrixA, 4, 4);
    //matrixAddInto(matrixC, matrixA, 4, 4);
    //prettyPrintFormatMatrix(matrixC, 4, "%6d");

    //getSubMatrix(matrixA, DIMENSION, 0, 0, 2, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 1, 0, 2, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 2, 2, 2, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 0, 0, 3, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 0, 1, 3, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 0, 2, 3, 2, sub);
    //getSubMatrix(matrixA, DIMENSION, 0, 0, 1, 4, sub);
    
    //prettyPrintFormatMatrix(sub, 2, "%6d");

    //identityMatrix(matrixA, DIMENSION);

    upCountingMatrix(matrixA, DIMENSION);
    upCountingMatrix(matrixB, DIMENSION);
    //zeroMatrix(matrixC, DIMENSION);
    
    //printMatrix(matrixA, DIMENSION);
    //printMatrix(matrixB, DIMENSION);
    printf("A\n");
    prettyPrintFormatMatrix(matrixA, DIMENSION, "%6d");
    printf("B\n");
    prettyPrintFormatMatrix(matrixB, DIMENSION, "%6d");

    //standardMatrixMult(matrixA, matrixB, matrixC, DIMENSION, DIMENSION);
    segmentedMatrixMult(matrixA, matrixB, matrixC, DIMENSION, DIMENSION);

    printf("C\n");
    prettyPrintFormatMatrix(matrixC, DIMENSION, "%6d");

    // int[] intArray = new int[] {
    //             104, 88, 136, 83,
    //             148, 104, 105, 69,
    //             97, 88, 107, 63,
    //             135, 112, 87, 52
    //     };
    
    return 0;
}

void matrixAddInto(int* matrixA, int* matrixB, int rows, int columns) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
            matrixA[i * rows + j] += matrixB[i * rows + j];
        }
    }
}

void getSubMatrix(int* matrix, int dim, int xPos, int yPos, int width, int height, int* matrixC) {
    int innerI = 0;
    for (int i = xPos; i < xPos + width; i++) {
        int innerJ = 0;
        for (int j = yPos; j < yPos + height; j++) {
            matrixC[innerI * width + innerJ] = matrix[i * dim + j];
            innerJ++;
        }
        innerI++;
    }
}

void setSubMatrix(int* matrix, int dim, int xPos, int yPos, int width, int height, int* matrixC) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int tempData = matrixC[i * width + j];
            matrix[(yPos + i) * dim + (xPos + j)] = tempData;
        }
    }
}

void segmentedMatrixMult(int* matrixA, int* matrixB, int* matrixC, int rows, int columns) {
    
    int nc = 2; // subset size
    int rowSteps = rows / nc;

    int kc = 2; // subset size
    int columnsSteps = columns / kc;

    int mc = 2; // subset size
    int innerSteps = rows / nc;

    //
    // ACT
    //

    // DEBUG
    int iterationCounter = 0;

    // for jc = 0 to n-1 step nc
    // Loop 1
    for (int jc = 0; jc < rowSteps; jc++) {

        // for pc = 0 to k-1 step kc
        // Loop 2
        for (int pc = 0; pc < columnsSteps; pc++) {

            //int* subMatrixB = subMatrix(matrixB, pc * kc, jc * nc, kc, nc);
            int subMatrixB[2*2];
            getSubMatrix(matrixB, DIMENSION, pc * kc, jc * nc, kc, nc, subMatrixB);

            // for ic = 0 to m-1 step mc
            // Loop 3
            for (int ic = 0; ic < innerSteps; ic++) {

                //Matrix subMatrixA = matrixA.getSubMatrix(ic * mc, pc * kc, mc, kc);
                int subMatrixA[2*2] = { 0, 0, 0, 0 };
                getSubMatrix(matrixA, DIMENSION, ic * mc, pc * kc, mc, kc, subMatrixA);

                printf("[\n");
                prettyPrintFormatMatrix(subMatrixA, 2, "%6d");
                printf("------------------------\n");
                prettyPrintFormatMatrix(subMatrixB, 2, "%6d");
                printf("]\n");

                iterationCounter++;                

                // perform a matrix mult of the sub matrices
                //Matrix temp = subMatrixA.mult(subMatrixB);
                int tempMult[2*2] = { 0, 0, 0, 0 };
                standardMatrixMult(subMatrixA, subMatrixB, tempMult, 2, 2);

                //printf("+++++++++++++++++++++++++++++\n");
                //prettyPrintFormatMatrix(tempMult, 2, "%6d");
                //printf("+++++++++++++++++++++++++++++\n");

                // // retrieve sub matrix to accumulate into
                // Matrix accumulatorSubMatrixC = matrixC.getSubMatrix(ic * kc, jc * nc, nc, kc);
                int tempAccum[2*2] = { 0, 0, 0, 0 };
                getSubMatrix(matrixC, DIMENSION, ic * kc, jc * nc, nc, kc, tempAccum);

                // // accumulate the result
                // accumulatorSubMatrixC.add(temp);
                matrixAddInto(tempAccum, tempMult, 2, 2);

                // // place the accumulator back into the large result matrix
                // matrixC.setSubMatrix(jc * nc, ic * kc, nc, kc, accumulatorSubMatrixC);
                setSubMatrix(matrixC, DIMENSION, jc * nc, ic * kc, nc, kc, tempAccum);

            }
        }
    }

    printf("%d\n", iterationCounter);
}

void standardMatrixMult(int* matrixA, int* matrixB, int* matrixC, int rows, int columns) {
    // over row of matrix B
    for (int i = 0; i < rows; i++) {
        // over column of matrix A
        for (int j = 0; j < columns; j++) {
            // fuse row and column together into a single cell of matrix C
            for (int k = 0; k < columns; k++) {
                matrixC[i * rows + j] += matrixA[i * columns + k] * matrixB[k * columns + j];
            }
        }
    }
}

void printMatrix(int* matrix, int dim) {
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++) {
            printf("%d ", matrix[dim*i + j]);
        }
        printf("\n");
    }
}

void prettyPrintFormatMatrix(int* matrix, int dim, const char* format) {
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++) {
            printf(format, matrix[dim*i + j]);
        }
        printf("\n");
    }
}

void identityMatrix(int* matrix, int dim) {
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++) {
            matrix[dim*i + j] = (i==j) ? 1 : 0;
        }
    }
}

void zeroMatrix(int* matrix, int dim) {
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++) {
            matrix[dim*i + j] = 0;
        }
    }
}

void upCountingMatrix(int* matrix, int dim) {
    int count = 1;
    for (int i = 0; i < dim; i++) {
        for (int j = 0; j < dim; j++) {
            matrix[dim*i + j] = count;
            count++;
        }
    }
}
*/


# License: MSVC Proprietary
# The use of this compiler is only permitted for internal evaluation purposes and is otherwise governed by the MSVC License Agreement.
# See https://visualstudio.microsoft.com/license-terms/vs2022-ga-community/
_DATA   SEGMENT
COMM    `__local_stdio_printf_options'::`2'::_OptionsStorage:QWORD                                                    ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA   ENDS
_DATA   SEGMENT
$SG9967 DB        'Matrix', 0aH, 00H
$SG9968 DB        'A', 0aH, 00H
        ORG $+1
$SG9969 DB        '%6d', 00H
$SG9970 DB        'B', 0aH, 00H
        ORG $+1
$SG9971 DB        '%6d', 00H
$SG9972 DB        'C', 0aH, 00H
        ORG $+1
$SG9973 DB        '%6d', 00H
$SG10051 DB     '[', 0aH, 00H
        ORG $+1
$SG10052 DB     '%6d', 00H
$SG10053 DB     '------------------------', 0aH, 00H
        ORG $+2
$SG10054 DB     '%6d', 00H
$SG10055 DB     ']', 0aH, 00H
        ORG $+1
$SG10056 DB     '%d', 0aH, 00H
$SG10086 DB     '%d ', 00H
$SG10087 DB     0aH, 00H
        ORG $+2
$SG10100 DB     0aH, 00H
_DATA   ENDS

matrixB$ = 48
matrixA$ = 112
matrixC$ = 176
sub$ = 240
subSetTest$ = 256
__$ArrayPad$ = 272
main    PROC
$LN3:
        sub     rsp, 296                      ; 00000128H
        mov     rax, QWORD PTR __security_cookie
        xor     rax, rsp
        mov     QWORD PTR __$ArrayPad$[rsp], rax
        lea     rcx, OFFSET FLAT:$SG9967
        call    printf
        mov     DWORD PTR matrixA$[rsp], 9
        mov     DWORD PTR matrixA$[rsp+4], 0
        mov     DWORD PTR matrixA$[rsp+8], 9
        mov     DWORD PTR matrixA$[rsp+12], 4
        mov     DWORD PTR matrixA$[rsp+16], 2
        mov     DWORD PTR matrixA$[rsp+20], 6
        mov     DWORD PTR matrixA$[rsp+24], 6
        mov     DWORD PTR matrixA$[rsp+28], 7
        mov     DWORD PTR matrixA$[rsp+32], 9
        mov     DWORD PTR matrixA$[rsp+36], 3
        mov     DWORD PTR matrixA$[rsp+40], 8
        mov     DWORD PTR matrixA$[rsp+44], 1
        mov     DWORD PTR matrixA$[rsp+48], 6
        mov     DWORD PTR matrixA$[rsp+52], 9
        mov     DWORD PTR matrixA$[rsp+56], 7
        mov     DWORD PTR matrixA$[rsp+60], 1
        mov     DWORD PTR matrixB$[rsp], 1
        mov     DWORD PTR matrixB$[rsp+4], 2
        mov     DWORD PTR matrixB$[rsp+8], 4
        mov     DWORD PTR matrixB$[rsp+12], 2
        mov     DWORD PTR matrixB$[rsp+16], 8
        mov     DWORD PTR matrixB$[rsp+20], 6
        mov     DWORD PTR matrixB$[rsp+24], 0
        mov     DWORD PTR matrixB$[rsp+28], 0
        mov     DWORD PTR matrixB$[rsp+32], 7
        mov     DWORD PTR matrixB$[rsp+36], 6
        mov     DWORD PTR matrixB$[rsp+40], 8
        mov     DWORD PTR matrixB$[rsp+44], 5
        mov     DWORD PTR matrixB$[rsp+48], 8
        mov     DWORD PTR matrixB$[rsp+52], 4
        mov     DWORD PTR matrixB$[rsp+56], 7
        mov     DWORD PTR matrixB$[rsp+60], 5
        mov     DWORD PTR matrixC$[rsp], 0
        mov     DWORD PTR matrixC$[rsp+4], 0
        mov     DWORD PTR matrixC$[rsp+8], 0
        mov     DWORD PTR matrixC$[rsp+12], 0
        mov     DWORD PTR matrixC$[rsp+16], 0
        mov     DWORD PTR matrixC$[rsp+20], 0
        mov     DWORD PTR matrixC$[rsp+24], 0
        mov     DWORD PTR matrixC$[rsp+28], 0
        mov     DWORD PTR matrixC$[rsp+32], 0
        mov     DWORD PTR matrixC$[rsp+36], 0
        mov     DWORD PTR matrixC$[rsp+40], 0
        mov     DWORD PTR matrixC$[rsp+44], 0
        mov     DWORD PTR matrixC$[rsp+48], 0
        mov     DWORD PTR matrixC$[rsp+52], 0
        mov     DWORD PTR matrixC$[rsp+56], 0
        mov     DWORD PTR matrixC$[rsp+60], 0
        mov     DWORD PTR sub$[rsp], 0
        mov     DWORD PTR sub$[rsp+4], 0
        mov     DWORD PTR sub$[rsp+8], 0
        mov     DWORD PTR sub$[rsp+12], 0
        mov     DWORD PTR subSetTest$[rsp], 1
        mov     DWORD PTR subSetTest$[rsp+4], 2
        mov     DWORD PTR subSetTest$[rsp+8], 3
        mov     DWORD PTR subSetTest$[rsp+12], 4
        mov     edx, 4
        lea     rcx, QWORD PTR matrixA$[rsp]
        call    upCountingMatrix
        mov     edx, 4
        lea     rcx, QWORD PTR matrixB$[rsp]
        call    upCountingMatrix
        lea     rcx, OFFSET FLAT:$SG9968
        call    printf
        lea     r8, OFFSET FLAT:$SG9969
        mov     edx, 4
        lea     rcx, QWORD PTR matrixA$[rsp]
        call    prettyPrintFormatMatrix
        lea     rcx, OFFSET FLAT:$SG9970
        call    printf
        lea     r8, OFFSET FLAT:$SG9971
        mov     edx, 4
        lea     rcx, QWORD PTR matrixB$[rsp]
        call    prettyPrintFormatMatrix
        mov     DWORD PTR [rsp+32], 4
        mov     r9d, 4
        lea     r8, QWORD PTR matrixC$[rsp]
        lea     rdx, QWORD PTR matrixB$[rsp]
        lea     rcx, QWORD PTR matrixA$[rsp]
        call    segmentedMatrixMult
        lea     rcx, OFFSET FLAT:$SG9972
        call    printf
        lea     r8, OFFSET FLAT:$SG9973
        mov     edx, 4
        lea     rcx, QWORD PTR matrixC$[rsp]
        call    prettyPrintFormatMatrix
        xor     eax, eax
        mov     rcx, QWORD PTR __$ArrayPad$[rsp]
        xor     rcx, rsp
        call    __security_check_cookie
        add     rsp, 296                      ; 00000128H
        ret     0
main    ENDP

i$1 = 0
j$2 = 4
matrixA$ = 32
matrixB$ = 40
rows$ = 48
columns$ = 56
matrixAddInto PROC
$LN9:
        mov     DWORD PTR [rsp+32], r9d
        mov     DWORD PTR [rsp+24], r8d
        mov     QWORD PTR [rsp+16], rdx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@matrixAddI
$LN2@matrixAddI:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@matrixAddI:
        mov     eax, DWORD PTR rows$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@matrixAddI
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@matrixAddI
$LN5@matrixAddI:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@matrixAddI:
        mov     eax, DWORD PTR columns$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@matrixAddI
        mov     eax, DWORD PTR i$1[rsp]
        imul    eax, DWORD PTR rows$[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     ecx, DWORD PTR i$1[rsp]
        imul    ecx, DWORD PTR rows$[rsp]
        add     ecx, DWORD PTR j$2[rsp]
        movsxd  rcx, ecx
        mov     rdx, QWORD PTR matrixA$[rsp]
        mov     eax, DWORD PTR [rdx+rax*4]
        mov     rdx, QWORD PTR matrixB$[rsp]
        add     eax, DWORD PTR [rdx+rcx*4]
        mov     ecx, DWORD PTR i$1[rsp]
        imul    ecx, DWORD PTR rows$[rsp]
        add     ecx, DWORD PTR j$2[rsp]
        movsxd  rcx, ecx
        mov     rdx, QWORD PTR matrixA$[rsp]
        mov     DWORD PTR [rdx+rcx*4], eax
        jmp     SHORT $LN5@matrixAddI
$LN6@matrixAddI:
        jmp     SHORT $LN2@matrixAddI
$LN3@matrixAddI:
        add     rsp, 24
        ret     0
matrixAddInto ENDP

i$1 = 0
j$2 = 4
innerJ$3 = 8
innerI$ = 12
matrix$ = 32
dim$ = 40
xPos$ = 48
yPos$ = 56
width$ = 64
height$ = 72
matrixC$ = 80
getSubMatrix PROC
$LN9:
        mov     DWORD PTR [rsp+32], r9d
        mov     DWORD PTR [rsp+24], r8d
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR innerI$[rsp], 0
        mov     eax, DWORD PTR xPos$[rsp]
        mov     DWORD PTR i$1[rsp], eax
        jmp     SHORT $LN4@getSubMatr
$LN2@getSubMatr:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@getSubMatr:
        mov     eax, DWORD PTR width$[rsp]
        mov     ecx, DWORD PTR xPos$[rsp]
        add     ecx, eax
        mov     eax, ecx
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@getSubMatr
        mov     DWORD PTR innerJ$3[rsp], 0
        mov     eax, DWORD PTR yPos$[rsp]
        mov     DWORD PTR j$2[rsp], eax
        jmp     SHORT $LN7@getSubMatr
$LN5@getSubMatr:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@getSubMatr:
        mov     eax, DWORD PTR height$[rsp]
        mov     ecx, DWORD PTR yPos$[rsp]
        add     ecx, eax
        mov     eax, ecx
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@getSubMatr
        mov     eax, DWORD PTR i$1[rsp]
        imul    eax, DWORD PTR dim$[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     ecx, DWORD PTR innerI$[rsp]
        imul    ecx, DWORD PTR width$[rsp]
        add     ecx, DWORD PTR innerJ$3[rsp]
        movsxd  rcx, ecx
        mov     rdx, QWORD PTR matrixC$[rsp]
        mov     r8, QWORD PTR matrix$[rsp]
        mov     eax, DWORD PTR [r8+rax*4]
        mov     DWORD PTR [rdx+rcx*4], eax
        mov     eax, DWORD PTR innerJ$3[rsp]
        inc     eax
        mov     DWORD PTR innerJ$3[rsp], eax
        jmp     SHORT $LN5@getSubMatr
$LN6@getSubMatr:
        mov     eax, DWORD PTR innerI$[rsp]
        inc     eax
        mov     DWORD PTR innerI$[rsp], eax
        jmp     $LN2@getSubMatr
$LN3@getSubMatr:
        add     rsp, 24
        ret     0
getSubMatrix ENDP

i$1 = 0
j$2 = 4
tempData$3 = 8
matrix$ = 32
dim$ = 40
xPos$ = 48
yPos$ = 56
width$ = 64
height$ = 72
matrixC$ = 80
setSubMatrix PROC
$LN9:
        mov     DWORD PTR [rsp+32], r9d
        mov     DWORD PTR [rsp+24], r8d
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@setSubMatr
$LN2@setSubMatr:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@setSubMatr:
        mov     eax, DWORD PTR height$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@setSubMatr
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@setSubMatr
$LN5@setSubMatr:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@setSubMatr:
        mov     eax, DWORD PTR width$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@setSubMatr
        mov     eax, DWORD PTR i$1[rsp]
        imul    eax, DWORD PTR width$[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrixC$[rsp]
        mov     eax, DWORD PTR [rcx+rax*4]
        mov     DWORD PTR tempData$3[rsp], eax
        mov     eax, DWORD PTR i$1[rsp]
        mov     ecx, DWORD PTR yPos$[rsp]
        add     ecx, eax
        mov     eax, ecx
        imul    eax, DWORD PTR dim$[rsp]
        mov     ecx, DWORD PTR j$2[rsp]
        mov     edx, DWORD PTR xPos$[rsp]
        add     edx, ecx
        mov     ecx, edx
        add     eax, ecx
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     edx, DWORD PTR tempData$3[rsp]
        mov     DWORD PTR [rcx+rax*4], edx
        jmp     SHORT $LN5@setSubMatr
$LN6@setSubMatr:
        jmp     SHORT $LN2@setSubMatr
$LN3@setSubMatr:
        add     rsp, 24
        ret     0
setSubMatrix ENDP

kc$ = 64
nc$ = 68
ic$1 = 72
jc$2 = 76
pc$3 = 80
iterationCounter$ = 84
mc$ = 88
rowSteps$ = 92
columnsSteps$ = 96
innerSteps$ = 100
subMatrixA$4 = 104
tempAccum$5 = 120
tempMult$6 = 136
subMatrixB$7 = 152
__$ArrayPad$ = 168
matrixA$ = 192
matrixB$ = 200
matrixC$ = 208
rows$ = 216
columns$ = 224
segmentedMatrixMult PROC
$LN12:
        mov     DWORD PTR [rsp+32], r9d
        mov     QWORD PTR [rsp+24], r8
        mov     QWORD PTR [rsp+16], rdx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 184                      ; 000000b8H
        mov     rax, QWORD PTR __security_cookie
        xor     rax, rsp
        mov     QWORD PTR __$ArrayPad$[rsp], rax
        mov     DWORD PTR nc$[rsp], 2
        mov     eax, DWORD PTR rows$[rsp]
        cdq
        idiv    DWORD PTR nc$[rsp]
        mov     DWORD PTR rowSteps$[rsp], eax
        mov     DWORD PTR kc$[rsp], 2
        mov     eax, DWORD PTR columns$[rsp]
        cdq
        idiv    DWORD PTR kc$[rsp]
        mov     DWORD PTR columnsSteps$[rsp], eax
        mov     DWORD PTR mc$[rsp], 2
        mov     eax, DWORD PTR rows$[rsp]
        cdq
        idiv    DWORD PTR nc$[rsp]
        mov     DWORD PTR innerSteps$[rsp], eax
        mov     DWORD PTR iterationCounter$[rsp], 0
        mov     DWORD PTR jc$2[rsp], 0
        jmp     SHORT $LN4@segmentedM
$LN2@segmentedM:
        mov     eax, DWORD PTR jc$2[rsp]
        inc     eax
        mov     DWORD PTR jc$2[rsp], eax
$LN4@segmentedM:
        mov     eax, DWORD PTR rowSteps$[rsp]
        cmp     DWORD PTR jc$2[rsp], eax
        jge     $LN3@segmentedM
        mov     DWORD PTR pc$3[rsp], 0
        jmp     SHORT $LN7@segmentedM
$LN5@segmentedM:
        mov     eax, DWORD PTR pc$3[rsp]
        inc     eax
        mov     DWORD PTR pc$3[rsp], eax
$LN7@segmentedM:
        mov     eax, DWORD PTR columnsSteps$[rsp]
        cmp     DWORD PTR pc$3[rsp], eax
        jge     $LN6@segmentedM
        mov     eax, DWORD PTR jc$2[rsp]
        imul    eax, DWORD PTR nc$[rsp]
        mov     ecx, DWORD PTR pc$3[rsp]
        imul    ecx, DWORD PTR kc$[rsp]
        lea     rdx, QWORD PTR subMatrixB$7[rsp]
        mov     QWORD PTR [rsp+48], rdx
        mov     edx, DWORD PTR nc$[rsp]
        mov     DWORD PTR [rsp+40], edx
        mov     edx, DWORD PTR kc$[rsp]
        mov     DWORD PTR [rsp+32], edx
        mov     r9d, eax
        mov     r8d, ecx
        mov     edx, 4
        mov     rcx, QWORD PTR matrixB$[rsp]
        call    getSubMatrix
        npad    1
        mov     DWORD PTR ic$1[rsp], 0
        jmp     SHORT $LN10@segmentedM
$LN8@segmentedM:
        mov     eax, DWORD PTR ic$1[rsp]
        inc     eax
        mov     DWORD PTR ic$1[rsp], eax
$LN10@segmentedM:
        mov     eax, DWORD PTR innerSteps$[rsp]
        cmp     DWORD PTR ic$1[rsp], eax
        jge     $LN9@segmentedM
        mov     DWORD PTR subMatrixA$4[rsp], 0
        mov     DWORD PTR subMatrixA$4[rsp+4], 0
        mov     DWORD PTR subMatrixA$4[rsp+8], 0
        mov     DWORD PTR subMatrixA$4[rsp+12], 0
        mov     eax, DWORD PTR pc$3[rsp]
        imul    eax, DWORD PTR kc$[rsp]
        mov     ecx, DWORD PTR ic$1[rsp]
        imul    ecx, DWORD PTR mc$[rsp]
        lea     rdx, QWORD PTR subMatrixA$4[rsp]
        mov     QWORD PTR [rsp+48], rdx
        mov     edx, DWORD PTR kc$[rsp]
        mov     DWORD PTR [rsp+40], edx
        mov     edx, DWORD PTR mc$[rsp]
        mov     DWORD PTR [rsp+32], edx
        mov     r9d, eax
        mov     r8d, ecx
        mov     edx, 4
        mov     rcx, QWORD PTR matrixA$[rsp]
        call    getSubMatrix
        lea     rcx, OFFSET FLAT:$SG10051
        call    printf
        lea     r8, OFFSET FLAT:$SG10052
        mov     edx, 2
        lea     rcx, QWORD PTR subMatrixA$4[rsp]
        call    prettyPrintFormatMatrix
        lea     rcx, OFFSET FLAT:$SG10053
        call    printf
        lea     r8, OFFSET FLAT:$SG10054
        mov     edx, 2
        lea     rcx, QWORD PTR subMatrixB$7[rsp]
        call    prettyPrintFormatMatrix
        lea     rcx, OFFSET FLAT:$SG10055
        call    printf
        mov     eax, DWORD PTR iterationCounter$[rsp]
        inc     eax
        mov     DWORD PTR iterationCounter$[rsp], eax
        mov     DWORD PTR tempMult$6[rsp], 0
        mov     DWORD PTR tempMult$6[rsp+4], 0
        mov     DWORD PTR tempMult$6[rsp+8], 0
        mov     DWORD PTR tempMult$6[rsp+12], 0
        mov     DWORD PTR [rsp+32], 2
        mov     r9d, 2
        lea     r8, QWORD PTR tempMult$6[rsp]
        lea     rdx, QWORD PTR subMatrixB$7[rsp]
        lea     rcx, QWORD PTR subMatrixA$4[rsp]
        call    standardMatrixMult
        mov     DWORD PTR tempAccum$5[rsp], 0
        mov     DWORD PTR tempAccum$5[rsp+4], 0
        mov     DWORD PTR tempAccum$5[rsp+8], 0
        mov     DWORD PTR tempAccum$5[rsp+12], 0
        mov     eax, DWORD PTR jc$2[rsp]
        imul    eax, DWORD PTR nc$[rsp]
        mov     ecx, DWORD PTR ic$1[rsp]
        imul    ecx, DWORD PTR kc$[rsp]
        lea     rdx, QWORD PTR tempAccum$5[rsp]
        mov     QWORD PTR [rsp+48], rdx
        mov     edx, DWORD PTR kc$[rsp]
        mov     DWORD PTR [rsp+40], edx
        mov     edx, DWORD PTR nc$[rsp]
        mov     DWORD PTR [rsp+32], edx
        mov     r9d, eax
        mov     r8d, ecx
        mov     edx, 4
        mov     rcx, QWORD PTR matrixC$[rsp]
        call    getSubMatrix
        mov     r9d, 2
        mov     r8d, 2
        lea     rdx, QWORD PTR tempMult$6[rsp]
        lea     rcx, QWORD PTR tempAccum$5[rsp]
        call    matrixAddInto
        mov     eax, DWORD PTR ic$1[rsp]
        imul    eax, DWORD PTR kc$[rsp]
        mov     ecx, DWORD PTR jc$2[rsp]
        imul    ecx, DWORD PTR nc$[rsp]
        lea     rdx, QWORD PTR tempAccum$5[rsp]
        mov     QWORD PTR [rsp+48], rdx
        mov     edx, DWORD PTR kc$[rsp]
        mov     DWORD PTR [rsp+40], edx
        mov     edx, DWORD PTR nc$[rsp]
        mov     DWORD PTR [rsp+32], edx
        mov     r9d, eax
        mov     r8d, ecx
        mov     edx, 4
        mov     rcx, QWORD PTR matrixC$[rsp]
        call    setSubMatrix
        npad    1
        jmp     $LN8@segmentedM
$LN9@segmentedM:
        jmp     $LN5@segmentedM
$LN6@segmentedM:
        jmp     $LN2@segmentedM
$LN3@segmentedM:
        mov     edx, DWORD PTR iterationCounter$[rsp]
        lea     rcx, OFFSET FLAT:$SG10056
        call    printf
        npad    1
        mov     rcx, QWORD PTR __$ArrayPad$[rsp]
        xor     rcx, rsp
        call    __security_check_cookie
        add     rsp, 184                      ; 000000b8H
        ret     0
segmentedMatrixMult ENDP

i$1 = 0
j$2 = 4
k$3 = 8
matrixA$ = 32
matrixB$ = 40
matrixC$ = 48
rows$ = 56
columns$ = 64
standardMatrixMult PROC
$LN12:
        mov     DWORD PTR [rsp+32], r9d
        mov     QWORD PTR [rsp+24], r8
        mov     QWORD PTR [rsp+16], rdx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@standardMa
$LN2@standardMa:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@standardMa:
        mov     eax, DWORD PTR rows$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     $LN3@standardMa
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@standardMa
$LN5@standardMa:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@standardMa:
        mov     eax, DWORD PTR columns$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     $LN6@standardMa
        mov     DWORD PTR k$3[rsp], 0
        jmp     SHORT $LN10@standardMa
$LN8@standardMa:
        mov     eax, DWORD PTR k$3[rsp]
        inc     eax
        mov     DWORD PTR k$3[rsp], eax
$LN10@standardMa:
        mov     eax, DWORD PTR columns$[rsp]
        cmp     DWORD PTR k$3[rsp], eax
        jge     SHORT $LN9@standardMa
        mov     eax, DWORD PTR i$1[rsp]
        imul    eax, DWORD PTR rows$[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     ecx, DWORD PTR i$1[rsp]
        imul    ecx, DWORD PTR columns$[rsp]
        add     ecx, DWORD PTR k$3[rsp]
        movsxd  rcx, ecx
        mov     edx, DWORD PTR k$3[rsp]
        imul    edx, DWORD PTR columns$[rsp]
        add     edx, DWORD PTR j$2[rsp]
        movsxd  rdx, edx
        mov     r8, QWORD PTR matrixA$[rsp]
        mov     r9, QWORD PTR matrixB$[rsp]
        mov     ecx, DWORD PTR [r8+rcx*4]
        imul    ecx, DWORD PTR [r9+rdx*4]
        mov     rdx, QWORD PTR matrixC$[rsp]
        add     ecx, DWORD PTR [rdx+rax*4]
        mov     eax, ecx
        mov     ecx, DWORD PTR i$1[rsp]
        imul    ecx, DWORD PTR rows$[rsp]
        add     ecx, DWORD PTR j$2[rsp]
        movsxd  rcx, ecx
        mov     rdx, QWORD PTR matrixC$[rsp]
        mov     DWORD PTR [rdx+rcx*4], eax
        jmp     SHORT $LN8@standardMa
$LN9@standardMa:
        jmp     $LN5@standardMa
$LN6@standardMa:
        jmp     $LN2@standardMa
$LN3@standardMa:
        add     rsp, 24
        ret     0
standardMatrixMult ENDP

i$1 = 32
j$2 = 36
matrix$ = 64
dim$ = 72
printMatrix PROC
$LN9:
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 56                             ; 00000038H
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@printMatri
$LN2@printMatri:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@printMatri:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@printMatri
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@printMatri
$LN5@printMatri:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@printMatri:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@printMatri
        mov     eax, DWORD PTR dim$[rsp]
        imul    eax, DWORD PTR i$1[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     edx, DWORD PTR [rcx+rax*4]
        lea     rcx, OFFSET FLAT:$SG10086
        call    printf
        npad    1
        jmp     SHORT $LN5@printMatri
$LN6@printMatri:
        lea     rcx, OFFSET FLAT:$SG10087
        call    printf
        npad    1
        jmp     SHORT $LN2@printMatri
$LN3@printMatri:
        add     rsp, 56                             ; 00000038H
        ret     0
printMatrix ENDP

i$1 = 32
j$2 = 36
matrix$ = 64
dim$ = 72
format$ = 80
prettyPrintFormatMatrix PROC
$LN9:
        mov     QWORD PTR [rsp+24], r8
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 56                             ; 00000038H
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@prettyPrin
$LN2@prettyPrin:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@prettyPrin:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@prettyPrin
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@prettyPrin
$LN5@prettyPrin:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@prettyPrin:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@prettyPrin
        mov     eax, DWORD PTR dim$[rsp]
        imul    eax, DWORD PTR i$1[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     edx, DWORD PTR [rcx+rax*4]
        mov     rcx, QWORD PTR format$[rsp]
        call    printf
        npad    1
        jmp     SHORT $LN5@prettyPrin
$LN6@prettyPrin:
        lea     rcx, OFFSET FLAT:$SG10100
        call    printf
        npad    1
        jmp     SHORT $LN2@prettyPrin
$LN3@prettyPrin:
        add     rsp, 56                             ; 00000038H
        ret     0
prettyPrintFormatMatrix ENDP

i$1 = 0
j$2 = 4
tv74 = 8
matrix$ = 32
dim$ = 40
identityMatrix PROC
$LN11:
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@identityMa
$LN2@identityMa:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@identityMa:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@identityMa
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@identityMa
$LN5@identityMa:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@identityMa:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@identityMa
        mov     eax, DWORD PTR j$2[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jne     SHORT $LN9@identityMa
        mov     DWORD PTR tv74[rsp], 1
        jmp     SHORT $LN10@identityMa
$LN9@identityMa:
        mov     DWORD PTR tv74[rsp], 0
$LN10@identityMa:
        mov     eax, DWORD PTR dim$[rsp]
        imul    eax, DWORD PTR i$1[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     edx, DWORD PTR tv74[rsp]
        mov     DWORD PTR [rcx+rax*4], edx
        jmp     SHORT $LN5@identityMa
$LN6@identityMa:
        jmp     SHORT $LN2@identityMa
$LN3@identityMa:
        add     rsp, 24
        ret     0
identityMatrix ENDP

i$1 = 0
j$2 = 4
matrix$ = 32
dim$ = 40
zeroMatrix PROC
$LN9:
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@zeroMatrix
$LN2@zeroMatrix:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@zeroMatrix:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@zeroMatrix
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@zeroMatrix
$LN5@zeroMatrix:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@zeroMatrix:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@zeroMatrix
        mov     eax, DWORD PTR dim$[rsp]
        imul    eax, DWORD PTR i$1[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     DWORD PTR [rcx+rax*4], 0
        jmp     SHORT $LN5@zeroMatrix
$LN6@zeroMatrix:
        jmp     SHORT $LN2@zeroMatrix
$LN3@zeroMatrix:
        add     rsp, 24
        ret     0
zeroMatrix ENDP

i$1 = 0
j$2 = 4
count$ = 8
matrix$ = 32
dim$ = 40
upCountingMatrix PROC
$LN9:
        mov     DWORD PTR [rsp+16], edx
        mov     QWORD PTR [rsp+8], rcx
        sub     rsp, 24
        mov     DWORD PTR count$[rsp], 1
        mov     DWORD PTR i$1[rsp], 0
        jmp     SHORT $LN4@upCounting
$LN2@upCounting:
        mov     eax, DWORD PTR i$1[rsp]
        inc     eax
        mov     DWORD PTR i$1[rsp], eax
$LN4@upCounting:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR i$1[rsp], eax
        jge     SHORT $LN3@upCounting
        mov     DWORD PTR j$2[rsp], 0
        jmp     SHORT $LN7@upCounting
$LN5@upCounting:
        mov     eax, DWORD PTR j$2[rsp]
        inc     eax
        mov     DWORD PTR j$2[rsp], eax
$LN7@upCounting:
        mov     eax, DWORD PTR dim$[rsp]
        cmp     DWORD PTR j$2[rsp], eax
        jge     SHORT $LN6@upCounting
        mov     eax, DWORD PTR dim$[rsp]
        imul    eax, DWORD PTR i$1[rsp]
        add     eax, DWORD PTR j$2[rsp]
        cdqe
        mov     rcx, QWORD PTR matrix$[rsp]
        mov     edx, DWORD PTR count$[rsp]
        mov     DWORD PTR [rcx+rax*4], edx
        mov     eax, DWORD PTR count$[rsp]
        inc     eax
        mov     DWORD PTR count$[rsp], eax
        jmp     SHORT $LN5@upCounting
$LN6@upCounting:
        jmp     SHORT $LN2@upCounting
$LN3@upCounting:
        add     rsp, 24
        ret     0
upCountingMatrix ENDP