# x86asm
x86 assembler

# Intel and AMD Instruction sets.

Instruction sets have been extended over time. This is relevant since MASM will not
assemble the oldest instruction sets. Also doing research on the internet about how
to encode/decode instructions will get the reader confused because some parts of
encoding have been reused in newer instruction sets and some have been removed. Since
almost none of the material on the internet explicitly states for what instruction
set the documentation holds exactly, the reader needs to be very careful and needs
to be able to identify for which instruction they are currently reading documentation.

# x86 instruction set

The x86 instruction set is an umbrella term for different versions of the instruction
set used on Intel and AMD chips.

The x86 instruction set exists in 

* 16 Bit (called 8086 inofficially) (for the 8086/8088 chips)
* 32 Bit called (x86) (for the architectures i186, i286, i386, i486, i586/i686)
* 64 Bit called (x86-64 or AMD64)

Each of the 32 Bit architectures has added individual extension so the Instruction
Set will be slightly different for each architecture.

For more modern chips, 8086 is available in a mode called "real mode".
Even the latest and greatest Intel I9 chips start their operation in "real mode" 
where they are just a abnormally fast and optimized 8086 chip. During the boot
process, the operating system turns off real mode and enables other modes
of operation. The normal mode of operation of modern chips is called "protected mode".

# Tools

For the original 8086/8088 instruction set, on Microsoft Windows you can install 
the emu8086 emulator including an assembler and debugger plus sample applications to
test in the emulator.

For 8086 there is an option to run a 8086 assembler inside DOSBOX. 
https://medium.com/@axayjha/getting-started-with-masm-8086-assembly-c625478265d8

For the 32 Bit and 64 Bit variants, you can install MASM on Microsoft Windows. 
MASM is part of Visual Studio (Not Visual Studio Code!) or the command line tools
for Microsoft Visual Studio.  

MASM does not provide assembly for the original 16 Bit 8086/8088 instructions!

# Installation of the original MASM

Assembler:

https://learn.microsoft.com/en-us/cpp/assembler/masm/masm-for-x64-ml64-exe?view=msvc-170&viewFallbackFrom=microsoft_macro_assembler

Linker:

https://learn.microsoft.com/en-us/cpp/assembler/masm/masm-for-x64-ml64-exe?view=msvc-170&viewFallbackFrom=microsoft_macro_assembler

# Books

"C using Assembly Language" by Steven Holzner (1989)
https://archive.org/details/cwithassemblylan0000holz
https://github.com/TwistedFlickerBoot/CWithAssembly1989

"Introduction to Computing Systems: From Bits and Gates to C and Beyond" by Yale N. Patt



# CPU Programmer Manuals

https://learn.microsoft.com/en-us/cpp/assembler/masm/processor-manufacturer-programming-manuals?view=msvc-170

# Decoding 8086/8088

Disclaimer: This section is about 8086/8088! If you want to run code on modern chips and on modern 
operating systems, you want to look at 32 Bit called (x86) or 64 Bit called (x86-64 or AMD64)
assembly instead! The encoding schemes differ! Do not get confused!

A good documentation is available on c-jump.

https://www.c-jump.com/CIS77/CIS77syllabus.htm especially "Week 5. Introduction to x86 Assembly Language" 
and the following Weeks of the course. And especially this page. https://www.c-jump.com/CIS77/CPU/x86/lecture.html

Let's look at the instruction:

```
mov ax, 3
```

## Disclaimer: More than one representation might exist!

For 8086/8088 instructions and also x86 instructions often there exist more than one way of encoding
an instruction to make the chip perform the same action. 

For example some instructions
allow to place memory accesses into parameter 1 or 2 but not in both at the same time. Register
can go into parameter 1, 2 or both. This means for a instruction that uses memory and a register,
there are two ways to formulate the instruction.

I suspect this is because the internal architecture of the chip consists of components and traces between components. Maybe memory can only be connected to the ALU on one input but not on both inputs.
Maybe access to the memory component only allows for a single access at any point in time but not
two accesses during the same instruction.

Whatever the reason may be for multiple encodings, if you do your own research and stumble accross
a different encoding, do not get confused. There might exist more than one possible encoding for the
same action.

## Introduction of the MOV instruction

Firstly, mov stands for move and it is used to transfer data between memory and registers. 
Another option is just to transfer a constant value (called immediate in assembly) into 
a register or memory.

The format is: MOV dest src.
Where dest stands for destination and src stands for source.

## Finding the correct encoding scheme

The instructions

```
mov ax, 3  -->  B8 03 00
mov ax, 4  -->  B8 04 00
mov ax, 5  -->  B8 05 00
```

moves the immediate value 3, 4 or 5 into the ax register. (AX = AH + AL, a 16 bit register).
All this information needs to become part of the encoded bytes for the instruction so that
during decoding, all information can be restored from the byte pattern again.

Let's concentrate on *mov ax, 3* in the following.

The instruction *move ax, 3* is encoded as *B8 03 00* by emu8086. The numbers are three bytes 
displayed in hexadecimal. *B8 03 00* has the bit pattern *10111000 00000011 00000000*

*mov ax, 3* matches the category *MOV r16, imm16* since *ax* is a 16 bit register (denoted by r16)
and the number *3* can be encoded as a two byte word (denoted by imm16).

Using the material on https://www.felixcloutier.com/x86/mov we can identify a row for
*MOV r16, imm16* in the table looking at the "Instruction" column. Looking at the "Opcode" 
column, we find the expected encoding:

```
B8+ rw iw
```

What does this mean? Firstly the formatting is a little bit confusing. Lets reformat the encoding rule
slightly and use braces to section of the components from each other so we can identify them
more easily.

```
(B8 + rw) iw
```

We can see that there are two components to the encoding in total. 

The first component *(B8 + rw)* says, start with the base opcode *B8* for the move instruction
in its *MOV r16, imm16* variant and then add the code for the register *rw* to it. 
This is how the *rw* register gets encoded into the instruction and can be reproduced again 
later during decoding.

The second component is the immediate value encoded as a word (2 byte of data). The code *iw*
stands for (i)mmediate as a (w)ord. The value *imm16* which is 3 in the example has the
representation 0x0003 as a word (2 bytes, hexadecimal). 

The instruction contains *03 00* however! Whats up with that? This is part of the ever confusing 
little ending vs. big ending situation goint on with computer systems.

## Little-endian vs. Big-endian

Little vs. Big endian is like driving on the left or the right side of the road or writing
text from left to right vs right to left. There is not better or worse, it is just a convention.

A CPU architecture designer at some point has to make a design decision on how to store numbers
in memory. The decision is to use either Little- or Big-endian. Intel decided to use
Little-endian in their chips.

Just remember: as soon as you have decided to switch on a computer that uses an Intel-Chip, 
you entered crazy town and here bytes are flipped as Intel uses little endian, where the
the little-end of the number comes first.

By little end we refer to the part of the number with lowest value.
The little end of *0x0003* is *0x03* and as *0x03* comes first with little endian, so it is placed 
into memory using the *0x0300* representation. Truly mind-bowling stuff.

## Perform the encoding

Looking at 

```
mov ax, 3

(B8 + rw) iw
```

again, in total this means we need to figure out the code for the ax register which is used 
in the instruction. 

The AX register has the code 0x00 according to https://www.c-jump.com/CIS77/CPU/x86/lecture.html#X77_0010_real_encoding.

The encoding scheme becomes

```
(B8 + 0x00) iw
```

The immediate value in little ending is 0x0300.

The encoding scheme becomes

```
(0xB8 + 0x00) 0x03 0x00
```

Performing the addition, the encoded data is finally available as

```
0xB8 0x03 0x00
```

This is the exact byte sequence that emu8086 has produced!

Conglaturations, you just have encoded your very first 8086 real mode instruction.

# Decoding MOV

Given the machine code

```
0xB8 0x03 0x00
```

The decoder starts it's work.

To decode an instruction, the decoder has to emit

1. a mnemonic
1. all parameters

In order to decode an instruction, the first byte is checked to find the encoding scheme 
that matches.

For 0xB8 this falls in the range of the encoding scheme *MOV r16, imm16*.
This means, the instruction that the decoder has to output, is *MOV r16, imm16*.
The decoder knows the mnemonic *MOV* already at this point. The parameters are next.

Internally the decoder has to have knowledge about how encoding was performed. It basically
has to store all encoding rules either as a data structure or hard-coded for each
mnemonic in source code.

The encoding rule for *MOV r16, imm16* is *(B8 + rw) iw*. The decoder will perform the
inverse operation to the encoder. It will apply the encoding rule in reverse.

The first parameter is the destination register. Subtract 0xB8, which is the base code 
for MOV, from the first byte to receive *0x00* which resolves to AX using the register id table.

The second (and last) parameter is a *imm16* value in stored in little endian format. 
*imm16* means a 16 bit constant (immediate) which is a word which are two bytes. 
So the decoder will load two bytes in little endian mode from memory which yields
0x00 0x03 using the sample machine code from above.

The instruction that the encoder will hand over to the CPU data path is

```
MOV ax, 3
```

Conglaturations again, you have just decoded your first 8086 instruction! More power to you!

Maybe continue with the 8086/8088 ADD instruction!

The ADD instruntion has a different, more complex encoding rule.

# Encoding ADD

```
ADD cl, al  -->  00 C1  or  02 C8
```

*ADD cl, al* has in fact two possible encodings! emu8086 produces *02 C8*
and https://www.c-jump.com/CIS77/CPU/x86/lecture.html#X77_0010_real_encoding explains *00 C1*
in detail and mentions the existence of *02 C8*

This section follows the article above and details the *00 C1* encoding.