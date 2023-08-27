@R2
D=M
@R1
D=M-D
@R1_BIGGER
D;JGE
@R2
D=M
@R0
M=D
@END

(R1_BIGGER)
    @R1
    D=M
    @R0
    M=D
    @END
    0;JMP

(END)
    @END
    0;JMP