`timescale 1ns/1ps

module usbf_idma_bench();

reg dma_en;
reg rx_data_done;
reg [13:0] buf_size;
reg clk;
reg rx_dma_en;
reg [31:0] mdin;
reg abort;
reg send_zero_length;
reg [7:0] rx_data_st;
reg rd_next;
reg rx_data_valid;
reg rst;
reg [16:0] adr;
reg mack;
reg tx_dma_en;
reg [13:0] size;

wire send_data;
wire [14:0] madr;
wire idma_done;
wire mwe;
wire [31:0] mdout;
wire mreq;
wire [7:0] tx_data_st;
wire [10:0] sizu_c;

usbf_idma usbf_idma_ (
	.dma_en(dma_en),
	.rx_data_done(rx_data_done),
	.buf_size(buf_size),
	.clk(clk),
	.rx_dma_en(rx_dma_en),
	.mdin(mdin),
	.abort(abort),
	.send_zero_length(send_zero_length),
	.rx_data_st(rx_data_st),
	.rd_next(rd_next),
	.rx_data_valid(rx_data_valid),
	.rst(rst),
	.adr(adr),
	.mack(mack),
	.tx_dma_en(tx_dma_en),
	.size(size),
	.send_data(send_data),
	.madr(madr),
	.idma_done(idma_done),
	.mwe(mwe),
	.mdout(mdout),
	.mreq(mreq),
	.tx_data_st(tx_data_st),
	.sizu_c(sizu_c));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_idma/usbf_idma.vcd");
		$dumpvars(0, usbf_idma_bench.usbf_idma_);
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
		dma_en = $random;
		rx_data_done = $random;
		buf_size = $random;
		rx_dma_en = $random;
		mdin = $random;
		abort = $random;
		send_zero_length = $random;
		rx_data_st = $random;
		rd_next = $random;
		rx_data_valid = $random;
		adr = $random;
		mack = $random;
		tx_dma_en = $random;
		size = $random;
		#26;
	end

endmodule