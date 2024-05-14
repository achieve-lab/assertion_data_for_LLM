`timescale 1ns/1ps

module xmsmmc_core_bench();

reg DEFAULT_RESET;
reg cclk;
reg init;
reg done;
reg dis;

wire mmc_clk;
wire error;

xmsmmc_core xmsmmc_core_ (
	.cclk(cclk),
	.init(init),
	.done(done),
	.dis(dis),
	.mmc_clk(mmc_clk),
	.error(error));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xmsmmc_core/xmsmmc_core.vcd");
		$dumpvars(0, xmsmmc_core_bench.xmsmmc_core_);
		cclk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 cclk = ~cclk;
	end

	always begin
		#24;
		init = $random;
		done = $random;
		dis = $random;
		#26;
	end

endmodule