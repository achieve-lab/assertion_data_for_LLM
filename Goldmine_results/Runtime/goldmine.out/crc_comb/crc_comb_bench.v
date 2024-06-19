`timescale 1ns/1ps

module crc_comb_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] crc_poly;
reg [6:0] crc_poly_size;
reg data_in;
reg [7:0] crc_in;

wire [7:0] crc_out;

crc_comb crc_comb_ (
	.crc_poly(crc_poly),
	.crc_poly_size(crc_poly_size),
	.data_in(data_in),
	.crc_in(crc_in),
	.crc_out(crc_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/crc_comb/crc_comb.vcd");
		$dumpvars(0, crc_comb_bench);
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
		crc_poly = $random;
		crc_poly_size = $random;
		data_in = $random;
		crc_in = $random;
		#26;
	end

endmodule