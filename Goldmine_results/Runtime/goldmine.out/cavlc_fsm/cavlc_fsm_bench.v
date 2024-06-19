`timescale 1ns/1ps

module cavlc_fsm_bench();

reg rst_n;
reg [4:0] TotalCoeff;
reg [4:0] TotalCoeff_comb;
reg start;
reg [4:0] max_coeff_num;
reg clk;
reg [1:0] TrailingOnes_comb;
reg [3:0] ZeroLeft;
reg ena;
reg [1:0] TrailingOnes;

wire [3:0] i;
wire [7:0] state;
wire valid;
wire idle;

cavlc_fsm cavlc_fsm_ (
	.rst_n(rst_n),
	.TotalCoeff(TotalCoeff),
	.TotalCoeff_comb(TotalCoeff_comb),
	.start(start),
	.max_coeff_num(max_coeff_num),
	.clk(clk),
	.TrailingOnes_comb(TrailingOnes_comb),
	.ZeroLeft(ZeroLeft),
	.ena(ena),
	.TrailingOnes(TrailingOnes),
	.i(i),
	.state(state),
	.valid(valid),
	.idle(idle));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cavlc_fsm/cavlc_fsm.vcd");
		$dumpvars(0, cavlc_fsm_bench.cavlc_fsm_);
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
		TotalCoeff = $random;
		TotalCoeff_comb = $random;
		start = $random;
		max_coeff_num = $random;
		TrailingOnes_comb = $random;
		ZeroLeft = $random;
		ena = $random;
		TrailingOnes = $random;
		#26;
	end

endmodule