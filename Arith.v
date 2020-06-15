`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Arith
//////////////////////////////////////////////////////////////////////////////////
module Arith(A, B, ALUop, ArithOut, C, V);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] ArithOut;
    output reg C,V;
    wire BC,FB,slt,sum,sum2,cout;


    Not32bit notB (.X(B),
                   .Y(BC));

    MUX_2_1 mux1 (.X(A),
                  .Y(B),
                  .ALUop(ALUop[1]),
                  .F(FB) );

    FullAdder32bit subadder (.A(A),
                             .FB(FB),
                             .ALUop1_cin(ALUop[1]),
                           	 .sum(sum),
                           	 .cout(cout),
										 .sum2(sum2));

    SignExtend sltSE (.X(sum2),
                      .Y(slt));

    MUX_2_1 mux2 (.X(sum),
                  .Y(slt),
                  .ALUop(ALUop[3]),
                  .F(ArithOut) );

    always@(A,B,ALUop)
      begin
        C <= ALUop[0] & cout;
        V <= (~(A[31] ^ B[31]) ^ ALUop[1]) & (A[31] ^ sum2) & ALUop[0];
      end

endmodule
