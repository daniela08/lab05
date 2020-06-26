`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    FullAdder32bit
//////////////////////////////////////////////////////////////////////////////////
module FullAdder32bit(
    input [31:0]A,FB,
    input ALUop1_cin,
    output[31:0]sum,
    output cout,sum2);

wire carryFA0, carryFA1, carryFA2, carryFA3,
		carryFA4, carryFA5, carryFA6, carryFA7,
		carryFA8, carryFA9, carryFA10, carryFA11,
		carryFA12, carryFA13, carryFA14, carryFA15,
		carryFA16, carryFA17, carryFA18, carryFA19,
		carryFA20, carryFA21, carryFA22, carryFA23,
		carryFA24, carryFA25, carryFA26, carryFA27,
		carryFA28, carryFA29, carryFA30, carryFA31;

FullAdder1bit FA0(
	.A(A[0]),
	.FB(FB[0]),
	.ALUop1_cin(ALUop1_cin),
	.sum(sum[0]),
	.cout(carryFA0)
);

FullAdder1bit FA1(
	.A(A[1]),
	.FB(FB[1]),
	.ALUop1_cin(carryFA0),
	.sum(sum[1]),
	.cout(carryFA1)
);

FullAdder1bit FA2(
	.A(A[2]),
	.FB(FB[2]),
	.ALUop1_cin(carryFA1),
	.sum(sum[2]),
	.cout(carryFA2)
);

FullAdder1bit FA3(
	.A(A[3]),
	.FB(FB[3]),
	.ALUop1_cin(carryFA2),
	.sum(sum[3]),
	.cout(carryFA3)
);

FullAdder1bit FA4(
	.A(A[4]),
	.FB(FB[4]),
	.ALUop1_cin(carryFA3),
	.sum(sum[4]),
	.cout(carryFA4)
);

FullAdder1bit FA5(
	.A(A[5]),
	.FB(FB[5]),
	.ALUop1_cin(carryFA4),
	.sum(sum[5]),
	.cout(carryFA5)
);

FullAdder1bit FA6(
	.A(A[6]),
	.FB(FB[6]),
	.ALUop1_cin(carryFA5),
	.sum(sum[6]),
	.cout(carryFA6)
);

FullAdder1bit FA7(
	.A(A[7]),
	.FB(FB[7]),
	.ALUop1_cin(carryFA6),
	.sum(sum[7]),
	.cout(carryFA7)
);

FullAdder1bit FA8(
	.A(A[8]),
	.FB(FB[8]),
	.ALUop1_cin(carryFA7),
	.sum(sum[8]),
	.cout(carryFA8)
);

FullAdder1bit FA9(
	.A(A[9]),
	.FB(FB[9]),
	.ALUop1_cin(carryFA8),
	.sum(sum[9]),
	.cout(carryFA9)
);

FullAdder1bit FA10(
	.A(A[10]),
	.FB(FB[10]),
	.ALUop1_cin(carryFA9),
	.sum(sum[10]),
	.cout(carryFA10)
);

FullAdder1bit FA11(
	.A(A[11]),
	.FB(FB[11]),
	.ALUop1_cin(carryFA10),
	.sum(sum[11]),
	.cout(carryFA11)
);

FullAdder1bit FA12(
	.A(A[12]),
	.FB(FB[12]),
	.ALUop1_cin(carryFA11),
	.sum(sum[12]),
	.cout(carryFA12)
);

FullAdder1bit FA13(
	.A(A[13]),
	.FB(FB[13]),
	.ALUop1_cin(carryFA12),
	.sum(sum[13]),
	.cout(carryFA13)
);

FullAdder1bit FA14(
	.A(A[14]),
	.FB(FB[14]),
	.ALUop1_cin(carryFA13),
	.sum(sum[14]),
	.cout(carryFA14)
);

FullAdder1bit FA15(
	.A(A[15]),
	.FB(FB[15]),
	.ALUop1_cin(carryFA14),
	.sum(sum[15]),
	.cout(carryFA15)
);

FullAdder1bit FA16(
	.A(A[16]),
	.FB(FB[16]),
	.ALUop1_cin(carryFA15),
	.sum(sum[16]),
	.cout(carryFA16)
);

FullAdder1bit FA17(
	.A(A[17]),
	.FB(FB[17]),
	.ALUop1_cin(carryFA16),
	.sum(sum[17]),
	.cout(carryFA17)
);

FullAdder1bit FA18(
	.A(A[18]),
	.FB(FB[18]),
	.ALUop1_cin(carryFA17),
	.sum(sum[18]),
	.cout(carryFA18)
);

FullAdder1bit FA19(
	.A(A[19]),
	.FB(FB[19]),
	.ALUop1_cin(carryFA18),
	.sum(sum[19]),
	.cout(carryFA19)
);

FullAdder1bit FA20(
	.A(A[20]),
	.FB(FB[20]),
	.ALUop1_cin(carryFA19),
	.sum(sum[20]),
	.cout(carryFA20)
);

FullAdder1bit FA21(
	.A(A[21]),
	.FB(FB[21]),
	.ALUop1_cin(carryFA20),
	.sum(sum[21]),
	.cout(carryFA21)
);

FullAdder1bit FA22(
	.A(A[22]),
	.FB(FB[22]),
	.ALUop1_cin(carryFA21),
	.sum(sum[22]),
	.cout(carryFA22)
);

FullAdder1bit FA23(
	.A(A[23]),
	.FB(FB[23]),
	.ALUop1_cin(carryFA22),
	.sum(sum[23]),
	.cout(carryFA23)
);

FullAdder1bit FA24(
	.A(A[24]),
	.FB(FB[24]),
	.ALUop1_cin(carryFA23),
	.sum(sum[24]),
	.cout(carryFA24)
);

FullAdder1bit FA25(
	.A(A[25]),
	.FB(FB[25]),
	.ALUop1_cin(carryFA24),
	.sum(sum[25]),
	.cout(carryFA25)
);

FullAdder1bit FA26(
	.A(A[26]),
	.FB(FB[26]),
	.ALUop1_cin(carryFA25),
	.sum(sum[26]),
	.cout(carryFA26)
);

FullAdder1bit FA27(
	.A(A[27]),
	.FB(FB[27]),
	.ALUop1_cin(carryFA26),
	.sum(sum[27]),
	.cout(carryFA27)
);

FullAdder1bit FA28(
	.A(A[28]),
	.FB(FB[28]),
	.ALUop1_cin(carryFA27),
	.sum(sum[28]),
	.cout(carryFA28)
);

FullAdder1bit FA29(
	.A(A[29]),
	.FB(FB[29]),
	.ALUop1_cin(carryFA28),
	.sum(sum[29]),
	.cout(carryFA29)
);

FullAdder1bit FA30(
	.A(A[30]),
	.FB(FB[30]),
	.ALUop1_cin(carryFA29),
	.sum(sum[30]),
	.cout(carryFA30)
);

FullAdder1bit FA31(
	.A(A[31]),
	.FB(FB[31]),
	.ALUop1_cin(carryFA30),
	.sum(sum[31]),
	.cout(cout)
);


    assign sum2 = sum[31];

endmodule
