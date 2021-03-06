`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Xor32bit
//////////////////////////////////////////////////////////////////////////////////
module Xor32bit(A, B, out_ALUop6);
    input[31:0] A,B;
    output reg[31:0] out_ALUop6;
	 always @(A,B)
	begin
	 out_ALUop6 <= A ^ B;
	end
endmodule
