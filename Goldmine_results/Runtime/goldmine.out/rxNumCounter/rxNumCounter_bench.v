`timescale 1ns/1ps

module rxNumCounter_bench();

reg reset;
reg rxclk;
reg receiving;

wire [11:0] frame_cnt;

rxNumCounter rxNumCounter_ (
	.reset(reset),
	.rxclk(rxclk),
	.receiving(receiving),
	.frame_cnt(frame_cnt));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxNumCounter/rxNumCounter.vcd");
		$dumpvars(0, rxNumCounter_bench.rxNumCounter_);
		rxclk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 rxclk = ~rxclk;
	end

	always begin
		#24;
		receiving = $random;
		#26;
	end

endmodule