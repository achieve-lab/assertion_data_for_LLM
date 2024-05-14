`timescale 1ns/1ps

module rxClkgen_bench();

reg reset;
reg rxclk_in;

wire rxclk;
wire locked;
wire rxclk_180;

rxClkgen rxClkgen_ (
	.reset(reset),
	.rxclk_in(rxclk_in),
	.rxclk(rxclk),
	.locked(locked),
	.rxclk_180(rxclk_180));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxClkgen/rxClkgen.vcd");
		$dumpvars(0, rxClkgen_bench.rxClkgen_);
		rxclk_in = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 rxclk_in = ~rxclk_in;
	end

	always begin
		#24;
		#26;
	end

endmodule