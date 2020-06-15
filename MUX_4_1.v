`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
<<<<<<< HEAD
// Module Name:    MUX_4_1
=======
// Module Name:    MUX_4_1 
>>>>>>> a01a23f13c013ba1068075cb3e783b3e06018e51
//////////////////////////////////////////////////////////////////////////////////

module MUX_4_1(input [31:0]a,b,c,d,
					input [1:0]ALUcontrol,
<<<<<<< HEAD
					output reg[31:0] z);
=======
					output reg[31:0]z); 
>>>>>>> a01a23f13c013ba1068075cb3e783b3e06018e51
	 always @(a,b,c,d,ALUcontrol)
				 case (ALUcontrol)
				 0: z <=a; //send 0 signal out
				 1: z <=b; //send 2 signal out
				 2: z <=c; //send 4 signal out
				 3: z <=d; //send 5 signal out
				 default: z <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				 endcase
endmodule
