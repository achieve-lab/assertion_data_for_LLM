`timescale 1ns/1ps

module PSGBusArb_bench();

reg clk;
reg ack;
reg req5;
reg req6;
reg req7;
reg req0;
reg req1;
reg req2;
reg req3;
reg req4;
reg ce;
reg rst;

wire [2:0] seln;
wire sel4;
wire sel5;
wire sel6;
wire sel7;
wire sel0;
wire sel1;
wire sel2;
wire sel3;

PSGBusArb PSGBusArb_ (
	.clk(clk),
	.ack(ack),
	.req5(req5),
	.req6(req6),
	.req7(req7),
	.req0(req0),
	.req1(req1),
	.req2(req2),
	.req3(req3),
	.req4(req4),
	.ce(ce),
	.rst(rst),
	.seln(seln),
	.sel4(sel4),
	.sel5(sel5),
	.sel6(sel6),
	.sel7(sel7),
	.sel0(sel0),
	.sel1(sel1),
	.sel2(sel2),
	.sel3(sel3));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGBusArb/PSGBusArb.vcd");
		$dumpvars(0, PSGBusArb_bench.PSGBusArb_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		ack = $random;
		req5 = $random;
		req6 = $random;
		req7 = $random;
		req0 = $random;
		req1 = $random;
		req2 = $random;
		req3 = $random;
		req4 = $random;
		ce = $random;
		#26;
	end

endmodule