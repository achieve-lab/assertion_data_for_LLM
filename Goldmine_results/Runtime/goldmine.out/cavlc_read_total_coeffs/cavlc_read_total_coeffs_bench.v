`timescale 1ns/1ps

module cavlc_read_total_coeffs_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg rst_n;
reg [5:0] nC;
reg start;
reg [-15:0] rbsp;
reg clk;
reg sel;
reg ena;

wire [1:0] TrailingOnes_comb;
wire [4:0] TotalCoeff;
wire [4:0] TotalCoeff_comb;
wire [4:0] len_comb;
wire [1:0] TrailingOnes;

cavlc_read_total_coeffs cavlc_read_total_coeffs_ (
	.rst_n(rst_n),
	.nC(nC),
	.start(start),
	.rbsp(rbsp),
	.clk(clk),
	.sel(sel),
	.ena(ena),
	.TrailingOnes_comb(TrailingOnes_comb),
	.TotalCoeff(TotalCoeff),
	.TotalCoeff_comb(TotalCoeff_comb),
	.len_comb(len_comb),
	.TrailingOnes(TrailingOnes));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_read_total_coeffs/cavlc_read_total_coeffs.vcd");
		$dumpvars(0, cavlc_read_total_coeffs_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		rst_n = $random;
		nC = $random;
		start = $random;
		rbsp = $random;
		clk = $random;
		sel = $random;
		ena = $random;
		#26;
	end

endmodule