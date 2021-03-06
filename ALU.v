`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ALU
//////////////////////////////////////////////////////////////////////////////////
module ALU(A, B, ALUop, Result, N, Z, C, V);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] Result;
    output reg N,Z;
	 output C,V;
    wire ArithOut,LogicOut;

Arith arith1(.A(A),
             .B(B),
             .ALUop(ALUop),
             .ArithOut(ArithOut),
             .C(C),
             .V(V));

Logic logic1(.A(A),
             .B(B),
             .ALUop(ALUop),
             .LogicOut(LogicOut));

MUX_2_1 muxfinal (.X(LogicOut),
                  .Y(ArithOut),
                  .ALUop(ALUop[2]),
                  .F(Result) );

always@*
  begin
  if (Result == 32'b0)
		Z=1;
	else
		Z=0;
    N = Result[31];
  end
  

endmodule
