`timescale 1ns/1ps

module mmc_boot_prescaler_16_1_bench();

reg rst;
reg sys_clk;
reg mode_transfer;

wire mmc_clk;

mmc_boot_prescaler_16_1 mmc_boot_prescaler_16_1_ (
	.rst(rst),
	.sys_clk(sys_clk),
	.mode_transfer(mode_transfer),
	.mmc_clk(mmc_clk));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mmc_boot_prescaler_16_1/mmc_boot_prescaler_16_1.vcd");
		$dumpvars(0, mmc_boot_prescaler_16_1_bench.mmc_boot_prescaler_16_1_);
		sys_clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 sys_clk = ~sys_clk;
	end

	always begin
		#24;
		mode_transfer = $random;
		#26;
	end

endmodule