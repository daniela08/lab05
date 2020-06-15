`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Arith
//////////////////////////////////////////////////////////////////////////////////
module Arith(A, B, ALUop, ArithOut, C, V, BC);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] ArithOut;
    output C,V;
    reg[31:0] BC, sum;
    reg cout;

    Not32bit notB (.X([31:0] B),
                   .Y([31:0] BC) );

    MUX_2_1 mux1 (.A([31:0] A),
                  .B([31:0] B),
                  .ALUop([3:0] ALUop),
                  .FB([31:0] FB) );

    FullAdder32bit subadder (.A([31:0] A),
                             .FB([31:0] FB),
                             .ALUop1_cin(ALUop[1]),
                           	 .sum([31:0] sum),
                           	 .cout(cout) );




    begin
    assign C <= ALUop[0] & cout;
    end

    begin
    assign xnor <= ~(A[31] ^ B[31]) ^ ALUop[1];
    assign xor <= A[31] ^ sum[31];
    assign V <= xnor & xor & ALUop[0];
    end



endmodule
