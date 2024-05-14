`timescale 1ns/1ps

module fpu_add_bench();

reg rst;
reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;

wire [10:0] exponent_2;
wire [55:0] sum_2;
wire sign;

fpu_add fpu_add_ (
	.rst(rst),
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.exponent_2(exponent_2),
	.sum_2(sum_2),
	.sign(sign));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_add/fpu_add.vcd");
		$dumpvars(0, fpu_add_bench.fpu_add_);
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
		enable = $random;
		opa = $random;
		opb = $random;
		#26;
	end

endmodule