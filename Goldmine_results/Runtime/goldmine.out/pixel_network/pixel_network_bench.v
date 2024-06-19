`timescale 1ns/1ps

module pixel_network_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] c3m;
reg [7:0] c3l;
reg [7:0] c1h;
reg [7:0] c3h;
reg [7:0] c1m;
reg [7:0] c1l;
reg [7:0] c2h;
reg [7:0] c2l;
reg [7:0] c2m;

wire [7:0] median;

pixel_network pixel_network_ (
	.c3m(c3m),
	.c3l(c3l),
	.c1h(c1h),
	.c3h(c3h),
	.c1m(c1m),
	.c1l(c1l),
	.c2h(c2h),
	.c2l(c2l),
	.c2m(c2m),
	.median(median));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/pixel_network/pixel_network.vcd");
		$dumpvars(0, pixel_network_bench);
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
		c3m = $random;
		c3l = $random;
		c1h = $random;
		c3h = $random;
		c1m = $random;
		c1l = $random;
		c2h = $random;
		c2l = $random;
		c2m = $random;
		#26;
	end

endmodule