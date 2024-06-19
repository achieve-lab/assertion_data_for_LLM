`timescale 1ns/1ps

module asynchronous_fifo_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg r_en;
reg rrst_n;
reg wclk;
reg rclk;
reg w_en;
reg [7:0] data_in;
reg wrst_n;

wire full;
wire [7:0] data_out;
wire empty;

asynchronous_fifo asynchronous_fifo_ (
	.r_en(r_en),
	.rrst_n(rrst_n),
	.wclk(wclk),
	.rclk(rclk),
	.w_en(w_en),
	.data_in(data_in),
	.wrst_n(wrst_n),
	.full(full),
	.data_out(data_out),
	.empty(empty));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/asynchronous_fifo/asynchronous_fifo.vcd");
		$dumpvars(0, asynchronous_fifo_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		r_en = $random;
		rrst_n = $random;
		wclk = $random;
		rclk = $random;
		w_en = $random;
		data_in = $random;
		wrst_n = $random;
		#26;
	end

endmodule