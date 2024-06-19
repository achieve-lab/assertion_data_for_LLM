`timescale 1ns/1ps

module fht_bfly_noFF_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] a;
reg [7:0] b;

wire [8:0] c;
wire [8:0] d;

fht_bfly_noFF fht_bfly_noFF_ (
	.a(a),
	.b(b),
	.c(c),
	.d(d));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_bfly_noFF/fht_bfly_noFF.vcd");
		$dumpvars(0, fht_bfly_noFF_bench);
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
		a = $random;
		b = $random;
		#26;
	end

endmodule