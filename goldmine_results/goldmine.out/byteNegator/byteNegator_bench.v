`timescale 1ns/1ps

module byteNegator_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] byteIn;
reg byteN;

wire [7:0] byteOut;

byteNegator byteNegator_ (
	.byteIn(byteIn),
	.byteN(byteN),
	.byteOut(byteOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/byteNegator/byteNegator.vcd");
		$dumpvars(0, byteNegator_bench);
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
		byteIn = $random;
		byteN = $random;
		#26;
	end

endmodule