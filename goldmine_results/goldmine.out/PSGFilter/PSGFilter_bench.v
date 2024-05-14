`timescale 1ns/1ps

module PSGFilter_bench();

reg [14:0] i;
reg [7:0] cnt;
reg [3:0] adr;
reg wr;
reg clk;
reg rst;
reg [12:0] din;

wire [14:0] o;

PSGFilter PSGFilter_ (
	.i(i),
	.cnt(cnt),
	.adr(adr),
	.wr(wr),
	.clk(clk),
	.rst(rst),
	.din(din),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGFilter/PSGFilter.vcd");
		$dumpvars(0, PSGFilter_bench.PSGFilter_);
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
		i = $random;
		cnt = $random;
		adr = $random;
		wr = $random;
		din = $random;
		#26;
	end

endmodule