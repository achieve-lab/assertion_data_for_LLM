`timescale 1ns/1ps

module fpu_sub_bench();

reg [2:0] fpu_op;
reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;
reg rst;

wire [10:0] exponent_2;
wire [55:0] diff_2;
wire sign;

fpu_sub fpu_sub_ (
	.fpu_op(fpu_op),
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.rst(rst),
	.exponent_2(exponent_2),
	.diff_2(diff_2),
	.sign(sign));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_sub/fpu_sub.vcd");
		$dumpvars(0, fpu_sub_bench.fpu_sub_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		fpu_op = $random;
		enable = $random;
		opa = $random;
		opb = $random;
		#26;
	end

endmodule