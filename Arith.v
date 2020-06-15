`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Arith
//////////////////////////////////////////////////////////////////////////////////
module Arith(A, B, ALUop, ArithOut, C, V, BC, FB, sum, slt, cout);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] ArithOut;
    output C,V;
    reg[31:0] BC,FB,sum,slt;
    reg cout;

    Not32bit notB (.X(B),
                   .Y([BC) );

    MUX_2_1 mux1 (.X(A),
                  .Y(B),
                  .ALUop(ALUop[1]),
                  .F(FB) );

    FullAdder32bit subadder (.A(A),
                             .FB(FB),
                             .ALUop1_cin(ALUop[1]),
                           	 .sum(sum),
                           	 .cout(cout) );

    SignExtend sltSE (.X(sum[31]),
                      .Y(slt) );

    MUX_2_1 mux1 (.X(sum),
                  .Y(slt),
                  .ALUop(ALUop[3]),
                  .F(ArithOut) );

    always@(A,B,ALUop)
      begin
        assign C <= ALUop[0] & cout;
        assign V <= (~(A[31] ^ B[31]) ^ ALUop[1]) & (A[31] ^ sum[31]) & ALUop[0];
      end



endmodule
