`timescale 1ns/1ps

module cavlc_read_run_befores_bench();

reg rst_n;
reg [8:0] level_8;
reg [8:0] level_9;
reg [8:0] level_4;
reg [8:0] level_5;
reg [8:0] level_6;
reg [8:0] level_7;
reg [8:0] level_0;
reg [8:0] level_1;
reg [8:0] level_2;
reg [8:0] level_3;
reg ena;
reg sel;
reg clk;
reg [3:0] i;
reg [8:0] level_14;
reg [8:0] level_15;
reg [8:0] level_12;
reg [3:0] TotalZeros_comb;
reg [8:0] level_10;
reg [8:0] level_11;
reg [-10:0] rbsp;
reg ZeroLeft_init;
reg clr;
reg [8:0] level_13;

wire [8:0] coeff_1;
wire [8:0] coeff_0;
wire [8:0] coeff_3;
wire [8:0] coeff_2;
wire [8:0] coeff_5;
wire [8:0] coeff_4;
wire [8:0] coeff_7;
wire [8:0] coeff_6;
wire [8:0] coeff_9;
wire [8:0] coeff_8;
wire [8:0] coeff_11;
wire [8:0] coeff_10;
wire [8:0] coeff_13;
wire [8:0] coeff_12;
wire [8:0] coeff_15;
wire [8:0] coeff_14;
wire [3:0] ZeroLeft;
wire [3:0] len_comb;

cavlc_read_run_befores cavlc_read_run_befores_ (
	.rst_n(rst_n),
	.level_8(level_8),
	.level_9(level_9),
	.level_4(level_4),
	.level_5(level_5),
	.level_6(level_6),
	.level_7(level_7),
	.level_0(level_0),
	.level_1(level_1),
	.level_2(level_2),
	.level_3(level_3),
	.ena(ena),
	.sel(sel),
	.clk(clk),
	.i(i),
	.level_14(level_14),
	.level_15(level_15),
	.level_12(level_12),
	.TotalZeros_comb(TotalZeros_comb),
	.level_10(level_10),
	.level_11(level_11),
	.rbsp(rbsp),
	.ZeroLeft_init(ZeroLeft_init),
	.clr(clr),
	.level_13(level_13),
	.coeff_1(coeff_1),
	.coeff_0(coeff_0),
	.coeff_3(coeff_3),
	.coeff_2(coeff_2),
	.coeff_5(coeff_5),
	.coeff_4(coeff_4),
	.coeff_7(coeff_7),
	.coeff_6(coeff_6),
	.coeff_9(coeff_9),
	.coeff_8(coeff_8),
	.coeff_11(coeff_11),
	.coeff_10(coeff_10),
	.coeff_13(coeff_13),
	.coeff_12(coeff_12),
	.coeff_15(coeff_15),
	.coeff_14(coeff_14),
	.ZeroLeft(ZeroLeft),
	.len_comb(len_comb));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_read_run_befores/cavlc_read_run_befores.vcd");
		$dumpvars(0, cavlc_read_run_befores_bench.cavlc_read_run_befores_);
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
		level_8 = $random;
		level_9 = $random;
		level_4 = $random;
		level_5 = $random;
		level_6 = $random;
		level_7 = $random;
		level_0 = $random;
		level_1 = $random;
		level_2 = $random;
		level_3 = $random;
		ena = $random;
		sel = $random;
		i = $random;
		level_14 = $random;
		level_15 = $random;
		level_12 = $random;
		TotalZeros_comb = $random;
		level_10 = $random;
		level_11 = $random;
		rbsp = $random;
		ZeroLeft_init = $random;
		clr = $random;
		level_13 = $random;
		#26;
	end

endmodule