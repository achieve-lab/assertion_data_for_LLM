`timescale 1ns/1ps

module Broadcast_filter_bench();

reg Reset;
reg [15:0] broadcast_bucket_interval;
reg [15:0] broadcast_bucket_depth;
reg Clk;
reg broadcast_filter_en;
reg broadcast_ptr;

wire broadcast_drop;

Broadcast_filter Broadcast_filter_ (
	.Reset(Reset),
	.broadcast_bucket_interval(broadcast_bucket_interval),
	.broadcast_bucket_depth(broadcast_bucket_depth),
	.Clk(Clk),
	.broadcast_filter_en(broadcast_filter_en),
	.broadcast_ptr(broadcast_ptr),
	.broadcast_drop(broadcast_drop));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Broadcast_filter/Broadcast_filter.vcd");
		$dumpvars(0, Broadcast_filter_bench.Broadcast_filter_);
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
		broadcast_bucket_interval = $random;
		broadcast_bucket_depth = $random;
		broadcast_filter_en = $random;
		broadcast_ptr = $random;
		#26;
	end

endmodule