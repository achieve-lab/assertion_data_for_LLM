`timescale 1ns/1ps

module freqdivider_bench();

reg DEFAULT_RESET;
reg Positive;
reg Negative;
reg MainClock;

wire FrequencyOut;

freqdivider freqdivider_ (
	.Positive(Positive),
	.Negative(Negative),
	.MainClock(MainClock),
	.FrequencyOut(FrequencyOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/freqdivider/freqdivider.vcd");
		$dumpvars(0, freqdivider_bench.freqdivider_);
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
		Positive = $random;
		Negative = $random;
		#26;
	end

endmodule