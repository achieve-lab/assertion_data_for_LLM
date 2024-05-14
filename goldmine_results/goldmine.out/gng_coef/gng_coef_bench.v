`timescale 1ns/1ps

module gng_coef_bench();

reg DEFAULT_RESET;
reg [7:0] addr;
reg clk;

wire [16:0] c2;
wire [17:0] c1;
wire [17:0] c0;

gng_coef gng_coef_ (
	.addr(addr),
	.clk(clk),
	.c2(c2),
	.c1(c1),
	.c0(c0));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_coef/gng_coef.vcd");
		$dumpvars(0, gng_coef_bench.gng_coef_);
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
		addr = $random;
		#26;
	end

endmodule