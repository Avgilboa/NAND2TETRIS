// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@END_W
0;JMP



(BLACK_SCREEN)
    @counter
    A=M
    M=-1
    @counter
    M=M+1
    D=M
    @KBD
    D=A-D
    @END_B
    D;JEQ
    @BLACK_SCREEN
    0;JMP


(END_B)
    @SCREEN
    D=A
    @counter
    M=D

(_END_B)
    @KBD
    D=M
    @WHIRE_SCREEN
    D;JEQ    
    @_END_B
    0;JMP

(WHIRE_SCREEN)
    @counter
    A=M
    M=0
    @counter
    M=M+1
    D=M
    @KBD
    D=D-A
    @END_W
    D;JEQ
    @WHIRE_SCREEN
    0;JMP


(END_W)
    @SCREEN
    D=A
    @counter
    M=D
    @_END_W
    0;JMP


(_END_W)
    @KBD
    D=M
    @BLACK_SCREEN
    D;JNE    
    @_END_W
    0;JMP


