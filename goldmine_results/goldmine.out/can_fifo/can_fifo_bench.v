`timescale 1ns/1ps

module can_fifo_bench();

reg fifo_selected;
reg [5:0] addr;
reg extended_mode;
reg clk;
reg rst;
reg reset_mode;
reg [7:0] data_in;
reg release_buffer;
reg wr;

wire [6:0] info_cnt;
wire info_empty;
wire [7:0] data_out;
wire overrun;

can_fifo can_fifo_ (
	.fifo_selected(fifo_selected),
	.addr(addr),
	.extended_mode(extended_mode),
	.clk(clk),
	.rst(rst),
	.reset_mode(reset_mode),
	.data_in(data_in),
	.release_buffer(release_buffer),
	.wr(wr),
	.info_cnt(info_cnt),
	.info_empty(info_empty),
	.data_out(data_out),
	.overrun(overrun));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_fifo/can_fifo.vcd");
		$dumpvars(0, can_fifo_bench.can_fifo_);
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
		fifo_selected = $random;
		addr = $random;
		extended_mode = $random;
		reset_mode = $random;
		data_in = $random;
		release_buffer = $random;
		wr = $random;
		#26;
	end

endmodule