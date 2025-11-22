// https://stackoverflow.com/questions/2987876/what-does-dword-ptr-mean
//
// and     dword ptr [ebp-4], 0
//
// The dword ptr part is called a size directive. [..]
//
// Basically, it means "the size of the target operand is 32 bits", so this 
// will bitwise-AND the 32-bit value at the address computed by taking the 
// contents of the ebp register and subtracting four with 0.

main    PROC
    cmp     DWORD PTR a28$28[rsp], 10
main    ENDP