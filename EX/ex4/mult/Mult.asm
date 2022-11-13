// This file is part of nand2tetris, as taught in The Hebrew University, and
// was written by Aviv Yaish. It is an extension to the specifications given
// [here](https://www.nand2tetris.org) (Shimon Schocken and Noam Nisan, 2017),
// as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
// Unported [License](https://creativecommons.org/licenses/by-nc-sa/3.0/).

// Multiplies R0 and R1 and stores the result in R2.
//
// Assumptions:
// - R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.
// - You can assume that you will only receive arguments that satisfy:
//   R0 >= 0, R1 >= 0, and R0*R1 < 32768.
// - Your program does not need to test these conditions.
//
// Requirements:
// - Your program should not change the values stored in R0 and R1.
// - You can implement any multiplication algorithm you want.

// R2 = 0
    @R2
    M=0

// if R0 == 0 goto END
    @R0
    D=M
    @END
    D;JEQ
    
(LOOP)
// if R1 == 0 goto END
    @R1
    D=M
    @END
    D;JEQ

// R2 = R2 + R0
    @R0
    D=M
    @R2
    M=D+M

// R1 = R1 - 1
    @R1
    M=M-1

// Goto LOOP
    @LOOP
    0;JMP

// Program Ends.
(END)
    @END
    0;JMP