`timescale 1ns/1ps

module gng_lzd_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [60:0] data_in;

wire [5:0] data_out;

gng_lzd gng_lzd_ (
	.data_in(data_in),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_lzd/gng_lzd.vcd");
		$dumpvars(0, gng_lzd_bench);
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
		data_in = $random;
		#26;
	end

endmodule