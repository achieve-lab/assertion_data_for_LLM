`timescale 1ns/1ps

module Phy_sim_bench();

reg DEFAULT_RESET;
reg Gtx_clk;
reg Tx_er;
reg [2:0] Speed;
reg [7:0] Txd;
reg Tx_en;

wire Crs;
wire Rx_dv;
wire Rx_clk;
wire Rx_er;
wire Tx_clk;
wire [7:0] Rxd;
wire Col;

Phy_sim Phy_sim_ (
	.Gtx_clk(Gtx_clk),
	.Tx_er(Tx_er),
	.Speed(Speed),
	.Txd(Txd),
	.Tx_en(Tx_en),
	.Crs(Crs),
	.Rx_dv(Rx_dv),
	.Rx_clk(Rx_clk),
	.Rx_er(Rx_er),
	.Tx_clk(Tx_clk),
	.Rxd(Rxd),
	.Col(Col));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Phy_sim/Phy_sim.vcd");
		$dumpvars(0, Phy_sim_bench.Phy_sim_);
		Gtx_clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 Gtx_clk = ~Gtx_clk;
	end

	always begin
		#24;
		Tx_er = $random;
		Speed = $random;
		Txd = $random;
		Tx_en = $random;
		#26;
	end

endmodule