`timescale 1ns/1ps

module fpu_mul_bench();

reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;
reg rst;
reg [1:0] rmode;

wire ready;
wire [63:0] outfp;

fpu_mul fpu_mul_ (
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.rst(rst),
	.rmode(rmode),
	.ready(ready),
	.outfp(outfp));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_mul/fpu_mul.vcd");
		$dumpvars(0, fpu_mul_bench.fpu_mul_);
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
		rmode = $random;
		#26;
	end

endmodule