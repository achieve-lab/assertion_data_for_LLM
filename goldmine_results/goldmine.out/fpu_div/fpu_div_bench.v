`timescale 1ns/1ps

module fpu_div_bench();

reg rst;
reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;

wire [55:0] mantissa_7;
wire [11:0] exponent_out;
wire sign;

fpu_div fpu_div_ (
	.rst(rst),
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.mantissa_7(mantissa_7),
	.exponent_out(exponent_out),
	.sign(sign));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_div/fpu_div.vcd");
		$dumpvars(0, fpu_div_bench.fpu_div_);
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