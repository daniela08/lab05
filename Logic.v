`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Logic
//////////////////////////////////////////////////////////////////////////////////
module Logic(A, B, ALUop, LogicOut);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] LogicOut;
    reg[31:0] out_ALUop4, out_ALUop5, out_ALUop6, out_ALUop7;

And32bit AND (.A(A),
              .B(B),
              .out_ALUop4(out_ALUop4) );

Or32bit OR (.A(A),
            .B(B),
            .out_ALUop5(out_ALUop5) );

Xor32bit XOR (.A(A),
              .B(B),
              .out_ALUop6(out_ALUop6) );

Not32bit NOR (.X(out_ALUop5),
              .Y(out_ALUop7) );

MUX_4_1 Logicout (.a(out_ALUop4),
                  .b(out_ALUop5),
                  .c(out_ALUop6),
                  .d(out_ALUop7),
                  .ALUcontrol(ALUop[1:0]),
                  .z(LogicOut) );

endmodule
