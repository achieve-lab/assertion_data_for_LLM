`timescale 1ns/1ps

module variableresetrandomwalkfilter_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg Lag;
reg Lead;
reg MainClock;

wire Positive;
wire Negative;

variableresetrandomwalkfilter variableresetrandomwalkfilter_ (
	.Lag(Lag),
	.Lead(Lead),
	.MainClock(MainClock),
	.Positive(Positive),
	.Negative(Negative));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/variableresetrandomwalkfilter/variableresetrandomwalkfilter.vcd");
		$dumpvars(0, variableresetrandomwalkfilter_bench);
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
		Lag = $random;
		Lead = $random;
		MainClock = $random;
		#26;
	end

endmodule