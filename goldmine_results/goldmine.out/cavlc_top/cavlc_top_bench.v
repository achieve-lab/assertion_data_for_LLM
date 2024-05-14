`timescale 1ns/1ps

module cavlc_top_bench();

reg rst_n;
reg [5:0] nC;
reg start;
reg [4:0] max_coeff_num;
reg [-15:0] rbsp;
reg clk;
reg ena;

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
wire idle;
wire valid;
wire [8:0] coeff_14;
wire [4:0] TotalCoeff;
wire [4:0] len_comb;

cavlc_top cavlc_top_ (
	.rst_n(rst_n),
	.nC(nC),
	.start(start),
	.max_coeff_num(max_coeff_num),
	.rbsp(rbsp),
	.clk(clk),
	.ena(ena),
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
	.idle(idle),
	.valid(valid),
	.coeff_14(coeff_14),
	.TotalCoeff(TotalCoeff),
	.len_comb(len_comb));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_top/cavlc_top.vcd");
		$dumpvars(0, cavlc_top_bench.cavlc_top_);
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
		nC = $random;
		start = $random;
		max_coeff_num = $random;
		rbsp = $random;
		ena = $random;
		#26;
	end

endmodule