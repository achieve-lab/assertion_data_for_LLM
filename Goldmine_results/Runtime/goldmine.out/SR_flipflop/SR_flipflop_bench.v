`timescale 1ns/1ps

module SR_flipflop_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg rst_n;
reg s;
reg r;
reg clk;

wire q;
wire q_bar;

SR_flipflop SR_flipflop_ (
	.rst_n(rst_n),
	.s(s),
	.r(r),
	.clk(clk),
	.q(q),
	.q_bar(q_bar));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/SR_flipflop/SR_flipflop.vcd");
		$dumpvars(0, SR_flipflop_bench);
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
		s = $random;
		r = $random;
		clk = $random;
		#26;
	end

endmodule