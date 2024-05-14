`timescale 1ns/1ps

module gng_smul_16_18_bench();

reg DEFAULT_RESET;
reg [15:0] a;
reg [17:0] b;
reg clk;

wire [33:0] p;

gng_smul_16_18 gng_smul_16_18_ (
	.a(a),
	.b(b),
	.clk(clk),
	.p(p));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_smul_16_18/gng_smul_16_18.vcd");
		$dumpvars(0, gng_smul_16_18_bench.gng_smul_16_18_);
		clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		a = $random;
		b = $random;
		#26;
	end

endmodule