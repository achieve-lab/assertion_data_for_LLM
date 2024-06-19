`timescale 1ns/1ps

module Reg_int_bench();

reg Reset;
reg Busy;
reg WRB;
reg [15:0] CD_in;
reg [31:0] CPU_rd_dout;
reg [7:0] CA;
reg Clk_reg;
reg CPU_rd_grant;
reg WCtrlDataStart;
reg CSB;
reg Nvalid;
reg LinkFail;
reg UpdateMIIRX_DATAReg;
reg RStatStart;
reg [15:0] Prsd;

wire xoff_cpu;
wire MAC_tx_add_prom_wr;
wire MAC_rx_add_chk_en;
wire MAC_rx_add_prom_wr;
wire [5:0] RX_IFG_SET;
wire [7:0] MAC_rx_add_prom_data;
wire [15:0] RX_MAX_LENGTH;
wire [15:0] CD_out;
wire xon_cpu;
wire [3:0] MaxRetry;
wire RX_APPEND_CRC;
wire [7:0] MAC_tx_add_prom_data;
wire [4:0] Tx_Lwmark;
wire [4:0] Tx_Hwmark;
wire broadcast_filter_en;
wire [5:0] CPU_rd_addr;
wire [15:0] broadcast_bucket_interval;
wire FullDuplex;
wire [4:0] Rx_Hwmark;
wire pause_frame_send_en;
wire [15:0] broadcast_bucket_depth;
wire [4:0] Rx_Lwmark;
wire CPU_rd_apply;
wire [2:0] MAC_tx_add_prom_add;
wire [6:0] RX_MIN_LENGTH;
wire tx_pause_en;
wire [15:0] pause_quanta_set;
wire Line_loop_en;
wire [2:0] MAC_rx_add_prom_add;
wire [5:0] IFGset;
wire CRC_chk_en;
wire MAC_tx_add_en;
wire [2:0] Speed;

Reg_int Reg_int_ (
	.Reset(Reset),
	.Busy(Busy),
	.WRB(WRB),
	.CD_in(CD_in),
	.CPU_rd_dout(CPU_rd_dout),
	.CA(CA),
	.Clk_reg(Clk_reg),
	.CPU_rd_grant(CPU_rd_grant),
	.WCtrlDataStart(WCtrlDataStart),
	.CSB(CSB),
	.Nvalid(Nvalid),
	.LinkFail(LinkFail),
	.UpdateMIIRX_DATAReg(UpdateMIIRX_DATAReg),
	.RStatStart(RStatStart),
	.Prsd(Prsd),
	.xoff_cpu(xoff_cpu),
	.MAC_tx_add_prom_wr(MAC_tx_add_prom_wr),
	.MAC_rx_add_chk_en(MAC_rx_add_chk_en),
	.MAC_rx_add_prom_wr(MAC_rx_add_prom_wr),
	.RX_IFG_SET(RX_IFG_SET),
	.MAC_rx_add_prom_data(MAC_rx_add_prom_data),
	.RX_MAX_LENGTH(RX_MAX_LENGTH),
	.CD_out(CD_out),
	.xon_cpu(xon_cpu),
	.MaxRetry(MaxRetry),
	.RX_APPEND_CRC(RX_APPEND_CRC),
	.MAC_tx_add_prom_data(MAC_tx_add_prom_data),
	.Tx_Lwmark(Tx_Lwmark),
	.Tx_Hwmark(Tx_Hwmark),
	.broadcast_filter_en(broadcast_filter_en),
	.CPU_rd_addr(CPU_rd_addr),
	.broadcast_bucket_interval(broadcast_bucket_interval),
	.FullDuplex(FullDuplex),
	.Rx_Hwmark(Rx_Hwmark),
	.pause_frame_send_en(pause_frame_send_en),
	.broadcast_bucket_depth(broadcast_bucket_depth),
	.Rx_Lwmark(Rx_Lwmark),
	.CPU_rd_apply(CPU_rd_apply),
	.MAC_tx_add_prom_add(MAC_tx_add_prom_add),
	.RX_MIN_LENGTH(RX_MIN_LENGTH),
	.tx_pause_en(tx_pause_en),
	.pause_quanta_set(pause_quanta_set),
	.Line_loop_en(Line_loop_en),
	.MAC_rx_add_prom_add(MAC_rx_add_prom_add),
	.IFGset(IFGset),
	.CRC_chk_en(CRC_chk_en),
	.MAC_tx_add_en(MAC_tx_add_en),
	.Speed(Speed));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Reg_int/Reg_int.vcd");
		$dumpvars(0, Reg_int_bench.Reg_int_);
		Clk_reg = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk_reg = ~Clk_reg;
	end

	always begin
		#24;
		Busy = $random;
		WRB = $random;
		CD_in = $random;
		CPU_rd_dout = $random;
		CA = $random;
		CPU_rd_grant = $random;
		WCtrlDataStart = $random;
		CSB = $random;
		Nvalid = $random;
		LinkFail = $random;
		UpdateMIIRX_DATAReg = $random;
		RStatStart = $random;
		Prsd = $random;
		#26;
	end

endmodule