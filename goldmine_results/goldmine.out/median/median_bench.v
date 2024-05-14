`timescale 1ns/1ps

module median_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg rst_n;
reg [31:0] word2;
reg [31:0] word1;
reg [31:0] word0;
reg clk;

wire [9:0] waddr;
wire [9:0] raddr_c;
wire [9:0] raddr_a;
wire [7:0] pixel4;
wire [9:0] raddr_b;
wire [7:0] pixel2;
wire [7:0] pixel3;
wire [7:0] pixel1;

median median_ (
	.rst_n(rst_n),
	.word2(word2),
	.word1(word1),
	.word0(word0),
	.clk(clk),
	.waddr(waddr),
	.raddr_c(raddr_c),
	.raddr_a(raddr_a),
	.pixel4(pixel4),
	.raddr_b(raddr_b),
	.pixel2(pixel2),
	.pixel3(pixel3),
	.pixel1(pixel1));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/median/median.vcd");
		$dumpvars(0, median_bench);
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
		word2 = $random;
		word1 = $random;
		word0 = $random;
		clk = $random;
		#26;
	end

endmodule