`timescale 1ns/1ps

module cavlc_read_total_zeros_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [3:0] TotalCoeff;
reg ena;
reg chroma_DC_sel;
reg sel;
reg [-8:0] rbsp;

wire [3:0] TotalZeros_comb;
wire [3:0] len_comb;

cavlc_read_total_zeros cavlc_read_total_zeros_ (
	.TotalCoeff(TotalCoeff),
	.ena(ena),
	.chroma_DC_sel(chroma_DC_sel),
	.sel(sel),
	.rbsp(rbsp),
	.TotalZeros_comb(TotalZeros_comb),
	.len_comb(len_comb));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_read_total_zeros/cavlc_read_total_zeros.vcd");
		$dumpvars(0, cavlc_read_total_zeros_bench);
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
		TotalCoeff = $random;
		ena = $random;
		chroma_DC_sel = $random;
		sel = $random;
		rbsp = $random;
		#26;
	end

endmodule