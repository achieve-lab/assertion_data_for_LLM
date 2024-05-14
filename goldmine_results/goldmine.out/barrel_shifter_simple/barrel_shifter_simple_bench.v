`timescale 1ns/1ps

module barrel_shifter_simple_bench();

reg DEFAULT_RESET;
reg [7:0] y;
reg [7:0] x;
reg direction;
reg clk;

wire c;
wire [7:0] z;

barrel_shifter_simple barrel_shifter_simple_ (
	.y(y),
	.x(x),
	.direction(direction),
	.clk(clk),
	.c(c),
	.z(z));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/barrel_shifter_simple/barrel_shifter_simple.vcd");
		$dumpvars(0, barrel_shifter_simple_bench.barrel_shifter_simple_);
		clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		y = $random;
		x = $random;
		direction = $random;
		#26;
	end

endmodule