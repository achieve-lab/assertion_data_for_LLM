`timescale 1ns/1ps

module usbf_pd_bench();

reg rx_err;
reg rx_valid;
reg rx_active;
reg clk;
reg rst;
reg [7:0] rx_data;

wire pid_SOF;
wire pid_MDATA;
wire rx_data_done;
wire pid_OUT;
wire pid_NACK;
wire pid_DATA2;
wire pid_DATA1;
wire pid_DATA0;
wire [10:0] frame_no;
wire pid_PING;
wire rx_data_valid;
wire pid_ERR;
wire pid_IN;
wire pid_cks_err;
wire crc5_err;
wire pid_PRE;
wire pid_ACK;
wire [3:0] token_endp;
wire token_valid;
wire seq_err;
wire crc16_err;
wire [7:0] rx_data_st;
wire pid_STALL;
wire pid_SPLIT;
wire pid_SETUP;
wire pid_NYET;
wire [6:0] token_fadr;

usbf_pd usbf_pd_ (
	.rx_err(rx_err),
	.rx_valid(rx_valid),
	.rx_active(rx_active),
	.clk(clk),
	.rst(rst),
	.rx_data(rx_data),
	.pid_SOF(pid_SOF),
	.pid_MDATA(pid_MDATA),
	.rx_data_done(rx_data_done),
	.pid_OUT(pid_OUT),
	.pid_NACK(pid_NACK),
	.pid_DATA2(pid_DATA2),
	.pid_DATA1(pid_DATA1),
	.pid_DATA0(pid_DATA0),
	.frame_no(frame_no),
	.pid_PING(pid_PING),
	.rx_data_valid(rx_data_valid),
	.pid_ERR(pid_ERR),
	.pid_IN(pid_IN),
	.pid_cks_err(pid_cks_err),
	.crc5_err(crc5_err),
	.pid_PRE(pid_PRE),
	.pid_ACK(pid_ACK),
	.token_endp(token_endp),
	.token_valid(token_valid),
	.seq_err(seq_err),
	.crc16_err(crc16_err),
	.rx_data_st(rx_data_st),
	.pid_STALL(pid_STALL),
	.pid_SPLIT(pid_SPLIT),
	.pid_SETUP(pid_SETUP),
	.pid_NYET(pid_NYET),
	.token_fadr(token_fadr));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_pd/usbf_pd.vcd");
		$dumpvars(0, usbf_pd_bench.usbf_pd_);
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
		rx_active = $random;
		rx_data = $random;
		#26;
	end

endmodule