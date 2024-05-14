`timescale 1ns/1ps

module rconst_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [23:0] i;

wire [63:0] rc;

rconst rconst_ (
	.i(i),
	.rc(rc));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rconst/rconst.vcd");
		$dumpvars(0, rconst_bench);
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
		i = $random;
		#26;
	end

endmodule