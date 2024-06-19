`timescale 1ns/1ps

module MAC_rx_FF_bench();

reg Reset;
reg Clk_SYS;
reg [4:0] Rx_Hwmark;
reg Fifo_data_end;
reg [4:0] Rx_Lwmark;
reg Fifo_data_en;
reg [7:0] Fifo_data;
reg Rx_mac_rd;
reg Clk_MAC;
reg Fifo_data_err;
reg RX_APPEND_CRC;

wire Rx_mac_eop;
wire [1:0] Rx_mac_BE;
wire Rx_mac_ra;
wire Rx_mac_sop;
wire Fifo_full;
wire [31:0] Rx_mac_data;
wire Rx_mac_pa;

MAC_rx_FF MAC_rx_FF_ (
	.Reset(Reset),
	.Clk_SYS(Clk_SYS),
	.Rx_Hwmark(Rx_Hwmark),
	.Fifo_data_end(Fifo_data_end),
	.Rx_Lwmark(Rx_Lwmark),
	.Fifo_data_en(Fifo_data_en),
	.Fifo_data(Fifo_data),
	.Rx_mac_rd(Rx_mac_rd),
	.Clk_MAC(Clk_MAC),
	.Fifo_data_err(Fifo_data_err),
	.RX_APPEND_CRC(RX_APPEND_CRC),
	.Rx_mac_eop(Rx_mac_eop),
	.Rx_mac_BE(Rx_mac_BE),
	.Rx_mac_ra(Rx_mac_ra),
	.Rx_mac_sop(Rx_mac_sop),
	.Fifo_full(Fifo_full),
	.Rx_mac_data(Rx_mac_data),
	.Rx_mac_pa(Rx_mac_pa));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_rx_FF/MAC_rx_FF.vcd");
		$dumpvars(0, MAC_rx_FF_bench.MAC_rx_FF_);
		Clk_MAC = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk_MAC = ~Clk_MAC;
	end

	always begin
		#24;
		Clk_SYS = $random;
		Rx_Hwmark = $random;
		Fifo_data_end = $random;
		Rx_Lwmark = $random;
		Fifo_data_en = $random;
		Fifo_data = $random;
		Rx_mac_rd = $random;
		Fifo_data_err = $random;
		RX_APPEND_CRC = $random;
		#26;
	end

endmodule