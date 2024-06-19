`timescale 1ns/1ps

module T_flipflop_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg rst_n;
reg t;
reg clk;

wire q;
wire q_bar;

T_flipflop T_flipflop_ (
	.rst_n(rst_n),
	.t(t),
	.clk(clk),
	.q(q),
	.q_bar(q_bar));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/T_flipflop/T_flipflop.vcd");
		$dumpvars(0, T_flipflop_bench);
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
		rst_n = $random;
		t = $random;
		clk = $random;
		#26;
	end

endmodule