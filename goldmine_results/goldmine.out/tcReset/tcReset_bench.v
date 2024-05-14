`timescale 1ns/1ps

module tcReset_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg tcResetEn;
reg [3:0] tcAddr;
reg resetIn;

wire [7:0] resetOut;

tcReset tcReset_ (
	.tcResetEn(tcResetEn),
	.tcAddr(tcAddr),
	.resetIn(resetIn),
	.resetOut(resetOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/tcReset/tcReset.vcd");
		$dumpvars(0, tcReset_bench);
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
		tcResetEn = $random;
		tcAddr = $random;
		resetIn = $random;
		#26;
	end

endmodule