`timescale 1ns/1ps

module cavlc_read_levels_bench();

reg rst_n;
reg suffix_sel;
reg prefix_sel;
reg [3:0] i;
reg t1s_sel;
reg clk;
reg ena;
reg [-15:0] rbsp;
reg [4:0] TotalCoeff;
reg calc_sel;
reg [1:0] TrailingOnes;

wire [8:0] level_13;
wire [8:0] level_12;
wire [4:0] len_comb;
wire [8:0] level_14;
wire [8:0] level_15;
wire [8:0] level_8;
wire [8:0] level_9;
wire [8:0] level_10;
wire [8:0] level_11;
wire [8:0] level_4;
wire [8:0] level_5;
wire [8:0] level_6;
wire [8:0] level_7;
wire [8:0] level_0;
wire [8:0] level_1;
wire [8:0] level_2;
wire [8:0] level_3;

cavlc_read_levels cavlc_read_levels_ (
	.rst_n(rst_n),
	.suffix_sel(suffix_sel),
	.prefix_sel(prefix_sel),
	.i(i),
	.t1s_sel(t1s_sel),
	.clk(clk),
	.ena(ena),
	.rbsp(rbsp),
	.TotalCoeff(TotalCoeff),
	.calc_sel(calc_sel),
	.TrailingOnes(TrailingOnes),
	.level_13(level_13),
	.level_12(level_12),
	.len_comb(len_comb),
	.level_14(level_14),
	.level_15(level_15),
	.level_8(level_8),
	.level_9(level_9),
	.level_10(level_10),
	.level_11(level_11),
	.level_4(level_4),
	.level_5(level_5),
	.level_6(level_6),
	.level_7(level_7),
	.level_0(level_0),
	.level_1(level_1),
	.level_2(level_2),
	.level_3(level_3));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_read_levels/cavlc_read_levels.vcd");
		$dumpvars(0, cavlc_read_levels_bench.cavlc_read_levels_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		suffix_sel = $random;
		prefix_sel = $random;
		i = $random;
		t1s_sel = $random;
		ena = $random;
		rbsp = $random;
		TotalCoeff = $random;
		calc_sel = $random;
		TrailingOnes = $random;
		#26;
	end

endmodule