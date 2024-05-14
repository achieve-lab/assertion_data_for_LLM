`timescale 1ns/1ps

module usbf_rf_bench();

reg buf0_set;
reg [7:0] utmi_vend_stat;
reg we;
reg uc_bsel_set;
reg [3:0] ep_sel;
reg buf0_rl;
reg uc_dpd_set;
reg [31:0] frm_nat;
reg int_upid_set;
reg crc5_err;
reg mode_hs;
reg suspend;
reg wclk;
reg rst;
reg int_buf0_set;
reg [15:0] dma_ack;
reg [1:0] line_stat;
reg int_buf1_set;
reg out_to_small;
reg nse_err;
reg [31:0] din;
reg [6:0] adr;
reg int_crc16_set;
reg clk;
reg usb_reset;
reg attached;
reg usb_attached;
reg rx_err;
reg re;
reg pid_cs_err;
reg buf1_set;
reg [31:0] idin;
reg int_to_set;
reg int_seqerr_set;

wire [3:0] utmi_vend_ctrl;
wire inta;
wire intb;
wire [31:0] buf1;
wire [31:0] buf0;
wire dma_out_buf_avail;
wire rf_resume_req;
wire utmi_vend_wr;
wire [6:0] funct_adr;
wire [31:0] dout;
wire [15:0] dma_req;
wire dma_in_buf_sz1;
wire match;
wire [31:0] csr;

usbf_rf usbf_rf_ (
	.buf0_set(buf0_set),
	.utmi_vend_stat(utmi_vend_stat),
	.we(we),
	.uc_bsel_set(uc_bsel_set),
	.ep_sel(ep_sel),
	.buf0_rl(buf0_rl),
	.uc_dpd_set(uc_dpd_set),
	.frm_nat(frm_nat),
	.int_upid_set(int_upid_set),
	.crc5_err(crc5_err),
	.mode_hs(mode_hs),
	.suspend(suspend),
	.wclk(wclk),
	.rst(rst),
	.int_buf0_set(int_buf0_set),
	.dma_ack(dma_ack),
	.line_stat(line_stat),
	.int_buf1_set(int_buf1_set),
	.out_to_small(out_to_small),
	.nse_err(nse_err),
	.din(din),
	.adr(adr),
	.int_crc16_set(int_crc16_set),
	.clk(clk),
	.usb_reset(usb_reset),
	.attached(attached),
	.usb_attached(usb_attached),
	.rx_err(rx_err),
	.re(re),
	.pid_cs_err(pid_cs_err),
	.buf1_set(buf1_set),
	.idin(idin),
	.int_to_set(int_to_set),
	.int_seqerr_set(int_seqerr_set),
	.utmi_vend_ctrl(utmi_vend_ctrl),
	.inta(inta),
	.intb(intb),
	.buf1(buf1),
	.buf0(buf0),
	.dma_out_buf_avail(dma_out_buf_avail),
	.rf_resume_req(rf_resume_req),
	.utmi_vend_wr(utmi_vend_wr),
	.funct_adr(funct_adr),
	.dout(dout),
	.dma_req(dma_req),
	.dma_in_buf_sz1(dma_in_buf_sz1),
	.match(match),
	.csr(csr));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_rf/usbf_rf.vcd");
		$dumpvars(0, usbf_rf_bench.usbf_rf_);
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
		buf0_set = $random;
		utmi_vend_stat = $random;
		we = $random;
		uc_bsel_set = $random;
		ep_sel = $random;
		buf0_rl = $random;
		uc_dpd_set = $random;
		frm_nat = $random;
		int_upid_set = $random;
		crc5_err = $random;
		mode_hs = $random;
		suspend = $random;
		wclk = $random;
		int_buf0_set = $random;
		dma_ack = $random;
		line_stat = $random;
		int_buf1_set = $random;
		out_to_small = $random;
		nse_err = $random;
		din = $random;
		adr = $random;
		int_crc16_set = $random;
		usb_reset = $random;
		attached = $random;
		usb_attached = $random;
		rx_err = $random;
		re = $random;
		pid_cs_err = $random;
		buf1_set = $random;
		idin = $random;
		int_to_set = $random;
		int_seqerr_set = $random;
		#26;
	end

endmodule