`timescale 1ns/1ps

module arb2_bench();

reg rst;
reg req1;
reg req2;
reg clk;

wire gnt2;
wire gnt1;

arb2 arb2_ (
	.rst(rst),
	.req1(req1),
	.req2(req2),
	.clk(clk),
	.gnt2(gnt2),
	.gnt1(gnt1));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/arb2/arb2.vcd");
		$dumpvars(0, arb2_bench.arb2_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		req1 = $random;
		req2 = $random;
		#26;
	end

endmodule