`timescale 1ns/1ps

module bmc001_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] rx_pair;

wire [1:0] path_0_bmc;
wire [1:0] path_1_bmc;

bmc001 bmc001_ (
	.rx_pair(rx_pair),
	.path_0_bmc(path_0_bmc),
	.path_1_bmc(path_1_bmc));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bmc001/bmc001.vcd");
		$dumpvars(0, bmc001_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		rx_pair = $random;
		#26;
	end

endmodule