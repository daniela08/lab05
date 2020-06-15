`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    Logic
//////////////////////////////////////////////////////////////////////////////////
module Logic(A, B, ALUop, LogicOut);
    input[31:0] A,B;
    input[3:0] ALUop;
    output[31:0] LogicOut;
    wire out_ALUop5;
    reg[31:0] out_ALUop4, out_ALUop5, out_ALUop6, out_ALUop7;

And32bit AND (.A([31:0] A),
              .B([31:0] B),
              .out_ALUop4([31:0] out_ALUop4) );

Or32bit OR (.A([31:0] A),
            .B([31:0] B),
            .out_ALUop5([31:0] out_ALUop5) );

Xor32bit XOR (.A([31:0] A),
              .B([31:0] B),
              .out_ALUop6([31:0] out_ALUop6) );

Not32bit NOR (.X([31:0] out_ALUop5),
              .Y([31:0] out_ALUop7) );

MUX_4_1 LogicOut (.a([31:0] out_ALUop4),
                  .b([31:0] out_ALUop5),
                  .c([31:0] out_ALUop6),
                  .d([31:0] out_ALUop7),
                  .z([31:0] LogicOut) );

endmodule
