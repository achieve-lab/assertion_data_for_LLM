`timescale 1ns/1ps

module usbf_pe_bench();

reg pid_SOF;
reg pid_MDATA;
reg rx_data_done;
reg idma_done;
reg pid_OUT;
reg pid_NACK;
reg dma_out_buf_avail;
reg pid_DATA2;
reg pid_DATA1;
reg pid_DATA0;
reg mode_hs;
reg rx_active;
reg rx_data_valid;
reg pid_ERR;
reg pid_IN;
reg rst;
reg [3:0] ep_sel;
reg fsel;
reg crc5_err;
reg pid_PRE;
reg dma_in_buf_sz1;
reg pid_ACK;
reg tx_valid;
reg clk;
reg [31:0] buf1;
reg [31:0] buf0;
reg token_valid;
reg pid_PING;
reg crc16_err;
reg pid_STALL;
reg pid_SPLIT;
reg match;
reg pid_SETUP;
reg [10:0] sizu_c;
reg pid_NYET;
reg [31:0] csr;

wire buf0_set;
wire dma_en;
wire uc_bsel_set;
wire buf0_rl;
wire uc_dpd_set;
wire int_upid_set;
wire abort;
wire int_buf0_set;
wire tx_dma_en;
wire int_buf1_set;
wire out_to_small;
wire nse_err;
wire [16:0] adr;
wire [13:0] buf_size;
wire rx_dma_en;
wire send_token;
wire [1:0] data_pid_sel;
wire [1:0] token_pid_sel;
wire send_zero_length;
wire int_crc16_set;
wire buf1_set;
wire [31:0] idin;
wire int_to_set;
wire [13:0] size;
wire int_seqerr_set;

usbf_pe usbf_pe_ (
	.pid_SOF(pid_SOF),
	.pid_MDATA(pid_MDATA),
	.rx_data_done(rx_data_done),
	.idma_done(idma_done),
	.pid_OUT(pid_OUT),
	.pid_NACK(pid_NACK),
	.dma_out_buf_avail(dma_out_buf_avail),
	.pid_DATA2(pid_DATA2),
	.pid_DATA1(pid_DATA1),
	.pid_DATA0(pid_DATA0),
	.mode_hs(mode_hs),
	.rx_active(rx_active),
	.rx_data_valid(rx_data_valid),
	.pid_ERR(pid_ERR),
	.pid_IN(pid_IN),
	.rst(rst),
	.ep_sel(ep_sel),
	.fsel(fsel),
	.crc5_err(crc5_err),
	.pid_PRE(pid_PRE),
	.dma_in_buf_sz1(dma_in_buf_sz1),
	.pid_ACK(pid_ACK),
	.tx_valid(tx_valid),
	.clk(clk),
	.buf1(buf1),
	.buf0(buf0),
	.token_valid(token_valid),
	.pid_PING(pid_PING),
	.crc16_err(crc16_err),
	.pid_STALL(pid_STALL),
	.pid_SPLIT(pid_SPLIT),
	.match(match),
	.pid_SETUP(pid_SETUP),
	.sizu_c(sizu_c),
	.pid_NYET(pid_NYET),
	.csr(csr),
	.buf0_set(buf0_set),
	.dma_en(dma_en),
	.uc_bsel_set(uc_bsel_set),
	.buf0_rl(buf0_rl),
	.uc_dpd_set(uc_dpd_set),
	.int_upid_set(int_upid_set),
	.abort(abort),
	.int_buf0_set(int_buf0_set),
	.tx_dma_en(tx_dma_en),
	.int_buf1_set(int_buf1_set),
	.out_to_small(out_to_small),
	.nse_err(nse_err),
	.adr(adr),
	.buf_size(buf_size),
	.rx_dma_en(rx_dma_en),
	.send_token(send_token),
	.data_pid_sel(data_pid_sel),
	.token_pid_sel(token_pid_sel),
	.send_zero_length(send_zero_length),
	.int_crc16_set(int_crc16_set),
	.buf1_set(buf1_set),
	.idin(idin),
	.int_to_set(int_to_set),
	.size(size),
	.int_seqerr_set(int_seqerr_set));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_pe/usbf_pe.vcd");
		$dumpvars(0, usbf_pe_bench.usbf_pe_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		pid_SOF = $random;
		pid_MDATA = $random;
		rx_data_done = $random;
		idma_done = $random;
		pid_OUT = $random;
		pid_NACK = $random;
		dma_out_buf_avail = $random;
		pid_DATA2 = $random;
		pid_DATA1 = $random;
		pid_DATA0 = $random;
		mode_hs = $random;
		rx_active = $random;
		rx_data_valid = $random;
		pid_ERR = $random;
		pid_IN = $random;
		ep_sel = $random;
		fsel = $random;
		crc5_err = $random;
		pid_PRE = $random;
		dma_in_buf_sz1 = $random;
		pid_ACK = $random;
		tx_valid = $random;
		buf1 = $random;
		buf0 = $random;
		token_valid = $random;
		pid_PING = $random;
		crc16_err = $random;
		pid_STALL = $random;
		pid_SPLIT = $random;
		match = $random;
		pid_SETUP = $random;
		sizu_c = $random;
		pid_NYET = $random;
		csr = $random;
		#26;
	end

endmodule