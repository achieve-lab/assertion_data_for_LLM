`timescale 1ns/1ps

module xmsmmc_minimal_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg cclk;
reg init;
reg done;

wire mmc_clk;

xmsmmc_minimal xmsmmc_minimal_ (
	.cclk(cclk),
	.init(init),
	.done(done),
	.mmc_clk(mmc_clk));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xmsmmc_minimal/xmsmmc_minimal.vcd");
		$dumpvars(0, xmsmmc_minimal_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		cclk = $random;
		init = $random;
		done = $random;
		#26;
	end

endmodule