`timescale 1ns/1ps

module counter_bench();

reg reset;
reg load;
reg en;
reg clk;

wire [7:0] value;

counter counter_ (
	.reset(reset),
	.load(load),
	.en(en),
	.clk(clk),
	.value(value));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/counter/counter.vcd");
		$dumpvars(0, counter_bench.counter_);
		clk = 1;
		reset = 1;
		#26;
		reset = 0;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		load = $random;
		en = $random;
		#26;
	end

endmodule