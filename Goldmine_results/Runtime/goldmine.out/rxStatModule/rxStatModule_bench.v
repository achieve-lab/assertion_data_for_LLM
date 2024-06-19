`timescale 1ns/1ps

module rxStatModule_bench();

reg reset;
reg length_65_127;
reg length_1024_max;
reg multi_valid;
reg broad_valid;
reg length_512_1023;
reg crc_check_invalid;
reg get_error_code;
reg padded_frame;
reg rxclk;
reg small_error;
reg length_128_255;
reg length_256_511;
reg large_error;
reg good_frame_get;
reg receiving;
reg jumbo_frame;
reg pause_frame;

wire [17:0] rxStatRegPlus;

rxStatModule rxStatModule_ (
	.reset(reset),
	.length_65_127(length_65_127),
	.length_1024_max(length_1024_max),
	.multi_valid(multi_valid),
	.broad_valid(broad_valid),
	.length_512_1023(length_512_1023),
	.crc_check_invalid(crc_check_invalid),
	.get_error_code(get_error_code),
	.padded_frame(padded_frame),
	.rxclk(rxclk),
	.small_error(small_error),
	.length_128_255(length_128_255),
	.length_256_511(length_256_511),
	.large_error(large_error),
	.good_frame_get(good_frame_get),
	.receiving(receiving),
	.jumbo_frame(jumbo_frame),
	.pause_frame(pause_frame),
	.rxStatRegPlus(rxStatRegPlus));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxStatModule/rxStatModule.vcd");
		$dumpvars(0, rxStatModule_bench.rxStatModule_);
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
		length_65_127 = $random;
		length_1024_max = $random;
		multi_valid = $random;
		broad_valid = $random;
		length_512_1023 = $random;
		crc_check_invalid = $random;
		get_error_code = $random;
		padded_frame = $random;
		small_error = $random;
		length_128_255 = $random;
		length_256_511 = $random;
		large_error = $random;
		good_frame_get = $random;
		receiving = $random;
		jumbo_frame = $random;
		pause_frame = $random;
		#26;
	end

endmodule