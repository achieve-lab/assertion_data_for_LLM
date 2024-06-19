`timescale 1ns/1ps

module full_adder_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg a;
reg b;
reg cin;

wire S;
wire Cout;

full_adder full_adder_ (
	.a(a),
	.b(b),
	.cin(cin),
	.S(S),
	.Cout(Cout));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/full_adder/full_adder.vcd");
		$dumpvars(0, full_adder_bench);
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
		b = $random;
		cin = $random;
		#26;
	end

endmodule