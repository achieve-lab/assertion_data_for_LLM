`timescale 1ns/1ps

module bitNegator_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg bitN;
reg bitIn;

wire bitOut;

bitNegator bitNegator_ (
	.bitN(bitN),
	.bitIn(bitIn),
	.bitOut(bitOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitNegator/bitNegator.vcd");
		$dumpvars(0, bitNegator_bench);
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
		bitN = $random;
		bitIn = $random;
		#26;
	end

endmodule