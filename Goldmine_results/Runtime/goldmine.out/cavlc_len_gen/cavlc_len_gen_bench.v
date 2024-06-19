`timescale 1ns/1ps

module cavlc_len_gen_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] cavlc_state;
reg [3:0] len_read_total_zeros_comb;
reg [3:0] len_read_run_befores_comb;
reg [4:0] len_read_levels_comb;
reg [4:0] len_read_total_coeffs_comb;

wire [4:0] len_comb;

cavlc_len_gen cavlc_len_gen_ (
	.cavlc_state(cavlc_state),
	.len_read_total_zeros_comb(len_read_total_zeros_comb),
	.len_read_run_befores_comb(len_read_run_befores_comb),
	.len_read_levels_comb(len_read_levels_comb),
	.len_read_total_coeffs_comb(len_read_total_coeffs_comb),
	.len_comb(len_comb));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_len_gen/cavlc_len_gen.vcd");
		$dumpvars(0, cavlc_len_gen_bench);
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
		cavlc_state = $random;
		len_read_total_zeros_comb = $random;
		len_read_run_befores_comb = $random;
		len_read_levels_comb = $random;
		len_read_total_coeffs_comb = $random;
		#26;
	end

endmodule