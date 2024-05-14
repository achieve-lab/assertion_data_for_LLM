`timescale 1ns/1ps

module Phy_int_bench();

reg Reset;
reg Crs;
reg Rx_dv;
reg [7:0] MTxD;
reg MAC_tx_clk;
reg [7:0] Rxd;
reg Line_loop_en;
reg MAC_rx_clk;
reg MTxEn;
reg Rx_er;
reg [2:0] Speed;
reg Col;

wire MRxErr;
wire Tx_er;
wire [7:0] MRxD;
wire MCrs_dv;
wire [7:0] Txd;
wire MCRS;
wire Tx_en;

Phy_int Phy_int_ (
	.Reset(Reset),
	.Crs(Crs),
	.Rx_dv(Rx_dv),
	.MTxD(MTxD),
	.MAC_tx_clk(MAC_tx_clk),
	.Rxd(Rxd),
	.Line_loop_en(Line_loop_en),
	.MAC_rx_clk(MAC_rx_clk),
	.MTxEn(MTxEn),
	.Rx_er(Rx_er),
	.Speed(Speed),
	.Col(Col),
	.MRxErr(MRxErr),
	.Tx_er(Tx_er),
	.MRxD(MRxD),
	.MCrs_dv(MCrs_dv),
	.Txd(Txd),
	.MCRS(MCRS),
	.Tx_en(Tx_en));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Phy_int/Phy_int.vcd");
		$dumpvars(0, Phy_int_bench.Phy_int_);
		MAC_tx_clk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 MAC_tx_clk = ~MAC_tx_clk;
	end

	always begin
		#24;
		Crs = $random;
		Rx_dv = $random;
		MTxD = $random;
		Rxd = $random;
		Line_loop_en = $random;
		MAC_rx_clk = $random;
		MTxEn = $random;
		Rx_er = $random;
		Speed = $random;
		Col = $random;
		#26;
	end

endmodule