`timescale 1ns/1ps

module PSGOutputSummer_bench();

reg DEFAULT_RESET;
reg [21:0] ufi;
reg [7:0] cnt;
reg clk_i;
reg [21:0] fi;

wire [21:0] o;

PSGOutputSummer PSGOutputSummer_ (
	.ufi(ufi),
	.cnt(cnt),
	.clk_i(clk_i),
	.fi(fi),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGOutputSummer/PSGOutputSummer.vcd");
		$dumpvars(0, PSGOutputSummer_bench.PSGOutputSummer_);
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
		ufi = $random;
		cnt = $random;
		fi = $random;
		#26;
	end

endmodule