`timescale 1ns/1ps

module dpll_bench();

reg DEFAULT_RESET;
reg SignalIn;
reg MainClock;

wire SignalOut;
wire Lag;
wire Negative;
wire Lead;
wire Positive;

dpll dpll_ (
	.SignalIn(SignalIn),
	.MainClock(MainClock),
	.SignalOut(SignalOut),
	.Lag(Lag),
	.Negative(Negative),
	.Lead(Lead),
	.Positive(Positive));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/dpll/dpll.vcd");
		$dumpvars(0, dpll_bench.dpll_);
		MainClock = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 MainClock = ~MainClock;
	end

	always begin
		#24;
		SignalIn = $random;
		#26;
	end

endmodule