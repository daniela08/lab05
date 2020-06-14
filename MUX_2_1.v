`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    MUX_2_1 
//////////////////////////////////////////////////////////////////////////////////
module MUX_2_1(B, BC, ALUop1, fB);
    input [31:0]B, BC; // B, B complement 32-input
    input ALUop1; //Selector signal to determine sum or sub
    output reg[31:0]fB; //Final B 32-output
	 always @(B, BC, ALUop1)
				 case (ALUop1)
				 0: fB <=B; //send 0 signal out
				 1: fB <=BC; //send 1 signal out
				 default: fB <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				 endcase
endmodule
