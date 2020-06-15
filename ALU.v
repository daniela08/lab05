`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ALU
//////////////////////////////////////////////////////////////////////////////////
module ALU(A, B, ALUop, Result, N, Z, C, V);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] Result;
    output N, Z, C, V;

Arith arith1(.A([31:0] A),
             .B([31:0] B),
             .ALUop([3:0] ALUop),
             .ArithOut(),
             .C(C),
             .V(V) );

Logic logic1(.A([31:0] A),
             .B([31:0] B),
             .ALUop([3:0] ALUop),
             .LogicOut() );

endmodule
