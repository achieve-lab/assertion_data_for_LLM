`timescale 1ns/1ps

module PSGShaper_bench();

reg DEFAULT_RESET;
reg [11:0] tgi;
reg clk_i;
reg ce;
reg [7:0] env;

wire [19:0] o;

PSGShaper PSGShaper_ (
	.tgi(tgi),
	.clk_i(clk_i),
	.ce(ce),
	.env(env),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGShaper/PSGShaper.vcd");
		$dumpvars(0, PSGShaper_bench.PSGShaper_);
		clk_i = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		tgi = $random;
		ce = $random;
		env = $random;
		#26;
	end

endmodule