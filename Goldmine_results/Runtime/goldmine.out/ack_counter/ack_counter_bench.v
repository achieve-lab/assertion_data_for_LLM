`timescale 1ns/1ps

module ack_counter_bench();

reg reset;
reg ready;
reg tx_start;
reg [15:0] max_count;
reg clock;

wire tx_ack;

ack_counter ack_counter_ (
	.reset(reset),
	.ready(ready),
	.tx_start(tx_start),
	.max_count(max_count),
	.clock(clock),
	.tx_ack(tx_ack));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ack_counter/ack_counter.vcd");
		$dumpvars(0, ack_counter_bench.ack_counter_);
		clock = 1;
		reset = 1;
		#26;
		reset = 0;
		#500000 $finish;
	end

	always begin
		#25 clock = ~clock;
	end

	always begin
		#24;
		ready = $random;
		tx_start = $random;
		max_count = $random;
		#26;
	end

endmodule