`timescale 1ns/1ps

module half_adder_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg a;
reg b;

wire S;
wire Cout;

half_adder half_adder_ (
	.a(a),
	.b(b),
	.S(S),
	.Cout(Cout));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/half_adder/half_adder.vcd");
		$dumpvars(0, half_adder_bench);
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
		#26;
	end

endmodule