`timescale 1ns/1ps

module usbf_pl_bench();

reg rx_err;
reg rx_valid;
reg usb_suspend;
reg clk;
reg [31:0] buf1;
reg [31:0] buf0;
reg [7:0] rx_data;
reg usb_reset;
reg dma_out_buf_avail;
reg usb_attached;
reg dma_in_buf_sz1;
reg mode_hs;
reg rst;
reg rx_active;
reg [6:0] fa;
reg tx_ready;
reg tx_valid_out;
reg mack;
reg [31:0] mdin;
reg match;
reg [31:0] csr;

wire buf0_set;
wire uc_bsel_set;
wire [7:0] tx_data;
wire buf0_rl;
wire uc_dpd_set;
wire int_upid_set;
wire [31:0] frm_nat;
wire tx_valid_last;
wire crc5_err;
wire [3:0] ep_sel;
wire int_buf0_set;
wire mreq;
wire int_buf1_set;
wire out_to_small;
wire nse_err;
wire [31:0] mdout;
wire int_crc16_set;
wire [31:0] idin;
wire pid_cs_err;
wire [14:0] madr;
wire buf1_set;
wire mwe;
wire tx_first;
wire int_to_set;
wire tx_valid;
wire int_seqerr_set;

usbf_pl usbf_pl_ (
	.rx_err(rx_err),
	.rx_valid(rx_valid),
	.usb_suspend(usb_suspend),
	.clk(clk),
	.buf1(buf1),
	.buf0(buf0),
	.rx_data(rx_data),
	.usb_reset(usb_reset),
	.dma_out_buf_avail(dma_out_buf_avail),
	.usb_attached(usb_attached),
	.dma_in_buf_sz1(dma_in_buf_sz1),
	.mode_hs(mode_hs),
	.rst(rst),
	.rx_active(rx_active),
	.fa(fa),
	.tx_ready(tx_ready),
	.tx_valid_out(tx_valid_out),
	.mack(mack),
	.mdin(mdin),
	.match(match),
	.csr(csr),
	.buf0_set(buf0_set),
	.uc_bsel_set(uc_bsel_set),
	.tx_data(tx_data),
	.buf0_rl(buf0_rl),
	.uc_dpd_set(uc_dpd_set),
	.int_upid_set(int_upid_set),
	.frm_nat(frm_nat),
	.tx_valid_last(tx_valid_last),
	.crc5_err(crc5_err),
	.ep_sel(ep_sel),
	.int_buf0_set(int_buf0_set),
	.mreq(mreq),
	.int_buf1_set(int_buf1_set),
	.out_to_small(out_to_small),
	.nse_err(nse_err),
	.mdout(mdout),
	.int_crc16_set(int_crc16_set),
	.idin(idin),
	.pid_cs_err(pid_cs_err),
	.madr(madr),
	.buf1_set(buf1_set),
	.mwe(mwe),
	.tx_first(tx_first),
	.int_to_set(int_to_set),
	.tx_valid(tx_valid),
	.int_seqerr_set(int_seqerr_set));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_pl/usbf_pl.vcd");
		$dumpvars(0, usbf_pl_bench.usbf_pl_);
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
		rx_err = $random;
		rx_valid = $random;
		usb_suspend = $random;
		buf1 = $random;
		buf0 = $random;
		rx_data = $random;
		usb_reset = $random;
		dma_out_buf_avail = $random;
		usb_attached = $random;
		dma_in_buf_sz1 = $random;
		mode_hs = $random;
		rx_active = $random;
		fa = $random;
		tx_ready = $random;
		tx_valid_out = $random;
		mack = $random;
		mdin = $random;
		match = $random;
		csr = $random;
		#26;
	end

endmodule