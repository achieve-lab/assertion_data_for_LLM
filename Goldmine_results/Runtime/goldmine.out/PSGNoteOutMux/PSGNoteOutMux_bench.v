`timescale 1ns/1ps

module PSGNoteOutMux_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [11:0] a;
reg [4:0] s;
reg [11:0] b;
reg [11:0] e;
reg [11:0] d;
reg [11:0] c;

wire [11:0] o;

PSGNoteOutMux PSGNoteOutMux_ (
	.a(a),
	.s(s),
	.b(b),
	.e(e),
	.d(d),
	.c(c),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGNoteOutMux/PSGNoteOutMux.vcd");
		$dumpvars(0, PSGNoteOutMux_bench);
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
		s = $random;
		b = $random;
		e = $random;
		d = $random;
		c = $random;
		#26;
	end

endmodule