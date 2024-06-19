`timescale 1ns/1ps

module synchronous_counter_bench();

reg rst_n;
reg up;
reg clk;

wire [3:0] cnt;

synchronous_counter synchronous_counter_ (
	.rst_n(rst_n),
	.up(up),
	.clk(clk),
	.cnt(cnt));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/synchronous_counter/synchronous_counter.vcd");
		$dumpvars(0, synchronous_counter_bench.synchronous_counter_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		up = $random;
		#26;
	end

endmodule