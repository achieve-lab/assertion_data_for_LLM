`timescale 1ns/1ps

module rxLenTypChecker_bench();

reg reset;
reg jumbo_enable;
reg tagged_frame;
reg [2:0] terminator_location;
reg rxclk;
reg vlan_enable;
reg get_terminator;
reg [11:0] frame_cnt;

wire length_65_127;
wire small_error;
wire length_1024_max;
wire length_error;
wire length_128_255;
wire length_256_511;
wire padded_frame;
wire large_error;
wire jumbo_frame;
wire length_512_1023;

rxLenTypChecker rxLenTypChecker_ (
	.reset(reset),
	.jumbo_enable(jumbo_enable),
	.tagged_frame(tagged_frame),
	.terminator_location(terminator_location),
	.rxclk(rxclk),
	.vlan_enable(vlan_enable),
	.get_terminator(get_terminator),
	.frame_cnt(frame_cnt),
	.length_65_127(length_65_127),
	.small_error(small_error),
	.length_1024_max(length_1024_max),
	.length_error(length_error),
	.length_128_255(length_128_255),
	.length_256_511(length_256_511),
	.padded_frame(padded_frame),
	.large_error(large_error),
	.jumbo_frame(jumbo_frame),
	.length_512_1023(length_512_1023));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxLenTypChecker/rxLenTypChecker.vcd");
		$dumpvars(0, rxLenTypChecker_bench.rxLenTypChecker_);
		rxclk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 rxclk = ~rxclk;
	end

	always begin
		#24;
		jumbo_enable = $random;
		tagged_frame = $random;
		terminator_location = $random;
		vlan_enable = $random;
		get_terminator = $random;
		frame_cnt = $random;
		#26;
	end

endmodule