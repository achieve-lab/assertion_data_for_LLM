`timescale 1ns/1ps

module alu_barrel_shifter_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] y;
reg [7:0] x;
reg direction;

wire c;
wire [7:0] z;

alu_barrel_shifter alu_barrel_shifter_ (
	.y(y),
	.x(x),
	.direction(direction),
	.c(c),
	.z(z));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_barrel_shifter/alu_barrel_shifter.vcd");
		$dumpvars(0, alu_barrel_shifter_bench);
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
		y = $random;
		x = $random;
		direction = $random;
		#26;
	end

endmodule