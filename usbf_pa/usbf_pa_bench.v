`timescale 1ns/1ps

module usbf_pa_bench();

reg send_data;
reg tx_ready;
reg clk;
reg rst;
reg send_token;
reg [1:0] data_pid_sel;
reg [1:0] token_pid_sel;
reg send_zero_length;
reg [7:0] tx_data_st;

wire tx_first;
wire tx_valid_last;
wire [7:0] tx_data;
wire rd_next;
wire tx_valid;

usbf_pa usbf_pa_ (
	.send_data(send_data),
	.tx_ready(tx_ready),
	.clk(clk),
	.rst(rst),
	.send_token(send_token),
	.data_pid_sel(data_pid_sel),
	.token_pid_sel(token_pid_sel),
	.send_zero_length(send_zero_length),
	.tx_data_st(tx_data_st),
	.tx_first(tx_first),
	.tx_valid_last(tx_valid_last),
	.tx_data(tx_data),
	.rd_next(rd_next),
	.tx_valid(tx_valid));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_pa/usbf_pa.vcd");
		$dumpvars(0, usbf_pa_bench.usbf_pa_);
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
		send_data = $random;
		tx_ready = $random;
		send_token = $random;
		data_pid_sel = $random;
		token_pid_sel = $random;
		send_zero_length = $random;
		tx_data_st = $random;
		#26;
	end

endmodule