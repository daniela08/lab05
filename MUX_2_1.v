`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    MUX_2_1
//////////////////////////////////////////////////////////////////////////////////
module MUX_2_1(X, Y, ALUop, F);
    input [31:0]X, Y; // B, B complement 32-input
    input ALUop; //Selector signal to determine sum or sub
    output reg[31:0]F; //Final B 32-output
	 always @(X, Y, ALUop)
				 case (ALUop)
				 0: F <=X; //send 0 signal out
				 1: F <=Y; //send 1 signal out
				 default: F <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				 endcase
endmodule
