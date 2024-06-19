`timescale 1ns/1ps

module accumulatorMUX_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] tcAccIn;
reg [7:0] aluOut;
reg [3:0] accMuxSel;
reg [7:0] immData;
reg [7:0] uartStatIn;
reg [7:0] uartDataIn;
reg [7:0] tcLoadIn;

wire [7:0] accMuxOut;

accumulatorMUX accumulatorMUX_ (
	.tcAccIn(tcAccIn),
	.aluOut(aluOut),
	.accMuxSel(accMuxSel),
	.immData(immData),
	.uartStatIn(uartStatIn),
	.uartDataIn(uartDataIn),
	.tcLoadIn(tcLoadIn),
	.accMuxOut(accMuxOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/accumulatorMUX/accumulatorMUX.vcd");
		$dumpvars(0, accumulatorMUX_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		tcAccIn = $random;
		aluOut = $random;
		accMuxSel = $random;
		immData = $random;
		uartStatIn = $random;
		uartDataIn = $random;
		tcLoadIn = $random;
		#26;
	end

endmodule