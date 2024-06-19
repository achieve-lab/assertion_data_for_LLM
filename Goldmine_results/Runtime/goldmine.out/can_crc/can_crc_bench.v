`timescale 1ns/1ps

module can_crc_bench();

reg DEFAULT_RESET;
reg initialize;
reg enable;
reg data;
reg clk;

wire [14:0] crc;

can_crc can_crc_ (
	.initialize(initialize),
	.enable(enable),
	.data(data),
	.clk(clk),
	.crc(crc));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_crc/can_crc.vcd");
		$dumpvars(0, can_crc_bench.can_crc_);
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
		initialize = $random;
		enable = $random;
		data = $random;
		#26;
	end

endmodule