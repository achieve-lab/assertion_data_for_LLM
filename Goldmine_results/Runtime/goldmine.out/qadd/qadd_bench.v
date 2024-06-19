`timescale 1ns/1ps

module qadd_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [31:0] a;
reg [31:0] b;

wire [31:0] c;

qadd qadd_ (
	.a(a),
	.b(b),
	.c(c));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qadd/qadd.vcd");
		$dumpvars(0, qadd_bench);
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