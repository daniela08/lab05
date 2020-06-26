`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Design Name:   ALU_tb
// Module Name:   /home/milagros/LAB5/ALU_tb.v
////////////////////////////////////////////////////////////////////////////////

module alu_tb();
	reg clk;
	reg [31:0] a, b, y_expected;
	wire [31:0] y;
	reg [2:0] f;
	wire zero;
	reg zero_expected;

	reg [31:0] vectornum, errors;
	reg [103:0] testvectors[20:0];

	// instantiate device under test
	ALU dut(a, b, f, y, zero, negative, carry, overflow);

	// generate clock
	always begin
		clk = 1; #50; clk = 0; #50;
	end

	// at start of test, load vectors
  initial begin
    $readmemh("ALU.tv", testvectors);
    vectornum = 0; errors = 0;
  end

	// apply test vectors at rising edge of clock
	always @(posedge clk)
    begin
      #1;
      f = testvectors[vectornum][102:100];
      a = testvectors[vectornum][99:68];
      b = testvectors[vectornum][67:36];
      y_expected = testvectors[vectornum][35:4];
      zero_expected = testvectors[vectornum][0];
    end

	always @(negedge clk)
    begin
      if (y !== y_expected || zero !== zero_expected) begin
        $display("Error in vetor %d", vectornum);
        $display(" Inputs : a = %h, b = %h, f = %b", a, b, f);
        $display(" Outputs: y = %h (%h expected), zero = %h (%h expected)", y, y_expected, zero, zero_expected);
        errors = errors+1;
      end
      vectornum = vectornum + 1;
      if (testvectors[vectornum][0] == 1'bx) begin
        $display("%d tests completed with %d errors", vectornum, error);
        $finish;
    	end
  	end
endmodule
