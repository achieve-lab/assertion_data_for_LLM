`timescale 1ns/1ps

module phasecomparator_bench();

reg DEFAULT_RESET;
reg InputSignal;
reg MainClock;
reg OutputSignal;

wire Lag;
wire Lead;

phasecomparator phasecomparator_ (
	.InputSignal(InputSignal),
	.MainClock(MainClock),
	.OutputSignal(OutputSignal),
	.Lag(Lag),
	.Lead(Lead));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/phasecomparator/phasecomparator.vcd");
		$dumpvars(0, phasecomparator_bench.phasecomparator_);
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
		InputSignal = $random;
		OutputSignal = $random;
		#26;
	end

endmodule