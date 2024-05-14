`timescale 1ns/1ps

module rconst2in1_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [11:0] i;

wire [63:0] rc1;
wire [63:0] rc2;

rconst2in1 rconst2in1_ (
	.i(i),
	.rc1(rc1),
	.rc2(rc2));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rconst2in1/rconst2in1.vcd");
		$dumpvars(0, rconst2in1_bench);
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