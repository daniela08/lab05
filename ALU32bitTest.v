`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

// Module Name:   /home/milagros/LAB5/ALU32bitTest.v
// Project Name:  LAB5
////////////////////////////////////////////////////////////////////////////////

module ALU32bitTest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALUop;

	// Outputs
	wire [31:0] Result;
	wire N;
	wire Z;
	wire C;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALUop(ALUop), 
		.Result(Result), 
		.N(N), 
		.Z(Z), 
		.C(C), 
		.V(V)
	);

	initial begin
		// Initialize Inputs
		A = 0;B = 0;ALUop = 0;
		#1 A = 10;B = 12;ALUop = 0;
		#1 A = 10;B = 12;ALUop = 2;
		#1 A = 10;B = 12;ALUop = 4;
		#1 A = 10;B = 12;ALUop = 5;
		#1 A = 10;B = 12;ALUop = 6;
		#1 A = 10;B = 12;ALUop = 7;
		#1 A = 10;B = 12;ALUop = 10;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here

	end
      
endmodule


