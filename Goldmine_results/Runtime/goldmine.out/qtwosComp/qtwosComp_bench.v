`timescale 1ns/1ps

module qtwosComp_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [30:0] a;

wire [63:0] b;

qtwosComp qtwosComp_ (
	.a(a),
	.b(b));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qtwosComp/qtwosComp.vcd");
		$dumpvars(0, qtwosComp_bench);
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
		#26;
	end

endmodule