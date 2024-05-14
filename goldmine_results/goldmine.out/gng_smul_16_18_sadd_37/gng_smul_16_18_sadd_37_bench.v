`timescale 1ns/1ps

module gng_smul_16_18_sadd_37_bench();

reg DEFAULT_RESET;
reg [15:0] a;
reg [36:0] c;
reg [17:0] b;
reg clk;

wire [37:0] p;

gng_smul_16_18_sadd_37 gng_smul_16_18_sadd_37_ (
	.a(a),
	.c(c),
	.b(b),
	.clk(clk),
	.p(p));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_smul_16_18_sadd_37/gng_smul_16_18_sadd_37.vcd");
		$dumpvars(0, gng_smul_16_18_sadd_37_bench.gng_smul_16_18_sadd_37_);
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
		c = $random;
		b = $random;
		#26;
	end

endmodule