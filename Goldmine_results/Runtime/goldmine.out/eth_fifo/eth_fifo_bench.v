`timescale 1ns/1ps

module eth_fifo_bench();

reg reset;
reg write;
reg clk;
reg read;
reg clear;
reg [31:0] data_in;

wire [3:0] cnt;
wire full;
wire almost_full;
wire almost_empty;
wire [31:0] data_out;
wire empty;

eth_fifo eth_fifo_ (
	.reset(reset),
	.write(write),
	.clk(clk),
	.read(read),
	.clear(clear),
	.data_in(data_in),
	.cnt(cnt),
	.full(full),
	.almost_full(almost_full),
	.almost_empty(almost_empty),
	.data_out(data_out),
	.empty(empty));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_fifo/eth_fifo.vcd");
		$dumpvars(0, eth_fifo_bench.eth_fifo_);
		clk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		write = $random;
		read = $random;
		clear = $random;
		data_in = $random;
		#26;
	end

endmodule