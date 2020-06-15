`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    MUX_4_1
//////////////////////////////////////////////////////////////////////////////////

module MUX_4_1(a, b, c, d, ALUcontrol, z);
		input[31:0] a,b,c,d;
		input[1:0] ALUcontrol;
		output reg[31:0] z;

	 always @(a,b,c,d,ALUcontrol)
				 case (ALUcontrol)
				 0: z <=a; //send 0 signal out
				 1: z <=b; //send 2 signal out
				 2: z <=c; //send 4 signal out
				 3: z <=d; //send 5 signal out
				 default: z <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				 endcase
endmodule
