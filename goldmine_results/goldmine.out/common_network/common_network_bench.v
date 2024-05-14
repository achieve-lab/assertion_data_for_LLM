`timescale 1ns/1ps

module common_network_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] x0_y1;
reg [7:0] x0_y0;
reg [7:0] xm1_ym1;
reg [7:0] x2_y1;
reg [7:0] x2_y0;
reg [7:0] x2_ym1;
reg [7:0] x1_ym1;
reg [7:0] xm1_y0;
reg [7:0] xm1_y1;
reg [7:0] x1_y0;
reg [7:0] x1_y1;
reg [7:0] x0_ym1;

wire [7:0] c3m;
wire [7:0] c3l;
wire [7:0] c1h;
wire [7:0] c0l;
wire [7:0] c3h;
wire [7:0] c1m;
wire [7:0] c1l;
wire [7:0] c0h;
wire [7:0] c2h;
wire [7:0] c0m;
wire [7:0] c2l;
wire [7:0] c2m;

common_network common_network_ (
	.x0_y1(x0_y1),
	.x0_y0(x0_y0),
	.xm1_ym1(xm1_ym1),
	.x2_y1(x2_y1),
	.x2_y0(x2_y0),
	.x2_ym1(x2_ym1),
	.x1_ym1(x1_ym1),
	.xm1_y0(xm1_y0),
	.xm1_y1(xm1_y1),
	.x1_y0(x1_y0),
	.x1_y1(x1_y1),
	.x0_ym1(x0_ym1),
	.c3m(c3m),
	.c3l(c3l),
	.c1h(c1h),
	.c0l(c0l),
	.c3h(c3h),
	.c1m(c1m),
	.c1l(c1l),
	.c0h(c0h),
	.c2h(c2h),
	.c0m(c0m),
	.c2l(c2l),
	.c2m(c2m));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/common_network/common_network.vcd");
		$dumpvars(0, common_network_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		x0_y1 = $random;
		x0_y0 = $random;
		xm1_ym1 = $random;
		x2_y1 = $random;
		x2_y0 = $random;
		x2_ym1 = $random;
		x1_ym1 = $random;
		xm1_y0 = $random;
		xm1_y1 = $random;
		x1_y0 = $random;
		x1_y1 = $random;
		x0_ym1 = $random;
		#26;
	end

endmodule