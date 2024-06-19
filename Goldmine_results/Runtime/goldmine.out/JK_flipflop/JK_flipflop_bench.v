`timescale 1ns/1ps

module JK_flipflop_bench();

reg rst_n;
reg k;
reg j;
reg clk;

wire q;
wire q_bar;

JK_flipflop JK_flipflop_ (
	.rst_n(rst_n),
	.k(k),
	.j(j),
	.clk(clk),
	.q(q),
	.q_bar(q_bar));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/JK_flipflop/JK_flipflop.vcd");
		$dumpvars(0, JK_flipflop_bench.JK_flipflop_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		k = $random;
		j = $random;
		#26;
	end

endmodule