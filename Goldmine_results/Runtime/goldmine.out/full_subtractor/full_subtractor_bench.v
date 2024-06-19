`timescale 1ns/1ps

module full_subtractor_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg a;
reg Bin;
reg b;

wire Bout;
wire D;

full_subtractor full_subtractor_ (
	.a(a),
	.Bin(Bin),
	.b(b),
	.Bout(Bout),
	.D(D));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/full_subtractor/full_subtractor.vcd");
		$dumpvars(0, full_subtractor_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		a = $random;
		Bin = $random;
		b = $random;
		#26;
	end

endmodule