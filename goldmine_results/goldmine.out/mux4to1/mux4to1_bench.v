`timescale 1ns/1ps

module mux4to1_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] s;
reg e;
reg [3:0] i1;
reg [3:0] i0;
reg [3:0] i3;
reg [3:0] i2;

wire [3:0] z;

mux4to1 mux4to1_ (
	.s(s),
	.e(e),
	.i1(i1),
	.i0(i0),
	.i3(i3),
	.i2(i2),
	.z(z));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mux4to1/mux4to1.vcd");
		$dumpvars(0, mux4to1_bench);
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
		s = $random;
		e = $random;
		i1 = $random;
		i0 = $random;
		i3 = $random;
		i2 = $random;
		#26;
	end

endmodule