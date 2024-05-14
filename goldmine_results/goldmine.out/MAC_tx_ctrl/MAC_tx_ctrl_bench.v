`timescale 1ns/1ps

module MAC_tx_ctrl_bench();

reg Reset;
reg CRS;
reg pause_frame_send_en;
reg Clk;
reg Fifo_eop;
reg [7:0] Fifo_data;
reg xoff_gen;
reg Fifo_ra;
reg pause_apply;
reg xon_gen;
reg MAC_tx_add_en;
reg FullDuplex;
reg [7:0] MAC_tx_addr_data;
reg [7:0] CRC_out;
reg Fifo_data_err_full;
reg Random_time_meet;
reg [15:0] pause_quanta_set;
reg Fifo_da;
reg [5:0] IFGset;
reg [3:0] MaxRetry;
reg Fifo_data_err_empty;
reg CRC_end;

wire Fifo_rd_retry;
wire [3:0] RetryCnt;
wire MAC_tx_addr_rd;
wire xon_gen_complete;
wire Data_en;
wire xoff_gen_complete;
wire [15:0] Tx_pkt_length_rmon;
wire [2:0] Tx_pkt_err_type_rmon;
wire [7:0] TxD;
wire Fifo_rd;
wire TxEn;
wire pause_quanta_sub;
wire Random_init;
wire Tx_apply_rmon;
wire [7:0] Frame_data;
wire CRC_rd;
wire MAC_tx_addr_init;
wire Fifo_rd_finish;
wire [2:0] Tx_pkt_type_rmon;
wire CRC_init;

MAC_tx_ctrl MAC_tx_ctrl_ (
	.Reset(Reset),
	.CRS(CRS),
	.pause_frame_send_en(pause_frame_send_en),
	.Clk(Clk),
	.Fifo_eop(Fifo_eop),
	.Fifo_data(Fifo_data),
	.xoff_gen(xoff_gen),
	.Fifo_ra(Fifo_ra),
	.pause_apply(pause_apply),
	.xon_gen(xon_gen),
	.MAC_tx_add_en(MAC_tx_add_en),
	.FullDuplex(FullDuplex),
	.MAC_tx_addr_data(MAC_tx_addr_data),
	.CRC_out(CRC_out),
	.Fifo_data_err_full(Fifo_data_err_full),
	.Random_time_meet(Random_time_meet),
	.pause_quanta_set(pause_quanta_set),
	.Fifo_da(Fifo_da),
	.IFGset(IFGset),
	.MaxRetry(MaxRetry),
	.Fifo_data_err_empty(Fifo_data_err_empty),
	.CRC_end(CRC_end),
	.Fifo_rd_retry(Fifo_rd_retry),
	.RetryCnt(RetryCnt),
	.MAC_tx_addr_rd(MAC_tx_addr_rd),
	.xon_gen_complete(xon_gen_complete),
	.Data_en(Data_en),
	.xoff_gen_complete(xoff_gen_complete),
	.Tx_pkt_length_rmon(Tx_pkt_length_rmon),
	.Tx_pkt_err_type_rmon(Tx_pkt_err_type_rmon),
	.TxD(TxD),
	.Fifo_rd(Fifo_rd),
	.TxEn(TxEn),
	.pause_quanta_sub(pause_quanta_sub),
	.Random_init(Random_init),
	.Tx_apply_rmon(Tx_apply_rmon),
	.Frame_data(Frame_data),
	.CRC_rd(CRC_rd),
	.MAC_tx_addr_init(MAC_tx_addr_init),
	.Fifo_rd_finish(Fifo_rd_finish),
	.Tx_pkt_type_rmon(Tx_pkt_type_rmon),
	.CRC_init(CRC_init));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_tx_ctrl/MAC_tx_ctrl.vcd");
		$dumpvars(0, MAC_tx_ctrl_bench.MAC_tx_ctrl_);
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
		CRS = $random;
		pause_frame_send_en = $random;
		Fifo_eop = $random;
		Fifo_data = $random;
		xoff_gen = $random;
		Fifo_ra = $random;
		pause_apply = $random;
		xon_gen = $random;
		MAC_tx_add_en = $random;
		FullDuplex = $random;
		MAC_tx_addr_data = $random;
		CRC_out = $random;
		Fifo_data_err_full = $random;
		Random_time_meet = $random;
		pause_quanta_set = $random;
		Fifo_da = $random;
		IFGset = $random;
		MaxRetry = $random;
		Fifo_data_err_empty = $random;
		CRC_end = $random;
		#26;
	end

endmodule