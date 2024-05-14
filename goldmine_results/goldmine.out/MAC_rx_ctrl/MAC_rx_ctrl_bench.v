`timescale 1ns/1ps

module MAC_rx_ctrl_bench();

reg Reset;
reg [15:0] RX_MAX_LENGTH;
reg Fifo_full;
reg [5:0] RX_IFG_SET;
reg Clk;
reg MCrs_dv;
reg CRC_err;
reg MAC_rx_add_chk_err;
reg MRxErr;
reg [7:0] MRxD;
reg [6:0] RX_MIN_LENGTH;
reg broadcast_drop;

wire MAC_add_en;
wire [2:0] Rx_pkt_type_rmon;
wire Fifo_data_end;
wire pause_quanta_val;
wire [2:0] Rx_pkt_err_type_rmon;
wire Fifo_data_en;
wire [15:0] Rx_pkt_length_rmon;
wire broadcast_ptr;
wire [7:0] Fifo_data;
wire CRC_en;
wire Rx_apply_rmon;
wire Fifo_data_err;
wire [15:0] pause_quanta;
wire CRC_init;

MAC_rx_ctrl MAC_rx_ctrl_ (
	.Reset(Reset),
	.RX_MAX_LENGTH(RX_MAX_LENGTH),
	.Fifo_full(Fifo_full),
	.RX_IFG_SET(RX_IFG_SET),
	.Clk(Clk),
	.MCrs_dv(MCrs_dv),
	.CRC_err(CRC_err),
	.MAC_rx_add_chk_err(MAC_rx_add_chk_err),
	.MRxErr(MRxErr),
	.MRxD(MRxD),
	.RX_MIN_LENGTH(RX_MIN_LENGTH),
	.broadcast_drop(broadcast_drop),
	.MAC_add_en(MAC_add_en),
	.Rx_pkt_type_rmon(Rx_pkt_type_rmon),
	.Fifo_data_end(Fifo_data_end),
	.pause_quanta_val(pause_quanta_val),
	.Rx_pkt_err_type_rmon(Rx_pkt_err_type_rmon),
	.Fifo_data_en(Fifo_data_en),
	.Rx_pkt_length_rmon(Rx_pkt_length_rmon),
	.broadcast_ptr(broadcast_ptr),
	.Fifo_data(Fifo_data),
	.CRC_en(CRC_en),
	.Rx_apply_rmon(Rx_apply_rmon),
	.Fifo_data_err(Fifo_data_err),
	.pause_quanta(pause_quanta),
	.CRC_init(CRC_init));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_rx_ctrl/MAC_rx_ctrl.vcd");
		$dumpvars(0, MAC_rx_ctrl_bench.MAC_rx_ctrl_);
		Clk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk = ~Clk;
	end

	always begin
		#24;
		RX_MAX_LENGTH = $random;
		Fifo_full = $random;
		RX_IFG_SET = $random;
		MCrs_dv = $random;
		CRC_err = $random;
		MAC_rx_add_chk_err = $random;
		MRxErr = $random;
		MRxD = $random;
		RX_MIN_LENGTH = $random;
		broadcast_drop = $random;
		#26;
	end

endmodule