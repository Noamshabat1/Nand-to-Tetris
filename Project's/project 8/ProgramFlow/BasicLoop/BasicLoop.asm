// C_PUSH constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_POP local 0
@0
D=A
@LCL
D=M+D
@R15
M=D
@SP
A=M-1
D=M
@R15
A=M
M=D
@SP
M=M-1
($LOOP_START)
// C_PUSH argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
// C_POP local 0
@0
D=A
@LCL
D=M+D
@R15
M=D
@SP
A=M-1
D=M
@R15
A=M
M=D
@SP
M=M-1
// C_PUSH argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
A=M
D=-M
A=A-1
M=D+M
// C_POP argument 0
@0
D=A
@ARG
D=M+D
@R15
M=D
@SP
A=M-1
D=M
@R15
A=M
M=D
@SP
M=M-1
// C_PUSH argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@$LOOP_START
D;JNE
// C_PUSH local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1