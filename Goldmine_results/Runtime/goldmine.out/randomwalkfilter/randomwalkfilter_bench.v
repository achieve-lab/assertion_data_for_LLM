`timescale 1ns/1ps

module randomwalkfilter_bench();

reg DEFAULT_RESET;
reg Lag;
reg Lead;
reg MainClock;

wire Positive;
wire Negative;

randomwalkfilter randomwalkfilter_ (
	.Lag(Lag),
	.Lead(Lead),
	.MainClock(MainClock),
	.Positive(Positive),
	.Negative(Negative));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/randomwalkfilter/randomwalkfilter.vcd");
		$dumpvars(0, randomwalkfilter_bench.randomwalkfilter_);
		MainClock = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 MainClock = ~MainClock;
	end

	always begin
		#24;
		Lag = $random;
		Lead = $random;
		#26;
	end

endmodule