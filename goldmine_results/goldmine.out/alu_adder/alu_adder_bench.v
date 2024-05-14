`timescale 1ns/1ps

module alu_adder_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] y;
reg [7:0] x;
reg ORsel;
reg carry_in;
reg XORsel;

wire [7:0] and_result;
wire [7:0] or_result;
wire [8:0] carry_out;
wire [7:0] z;
wire [7:0] xor_result;

alu_adder alu_adder_ (
	.y(y),
	.x(x),
	.ORsel(ORsel),
	.carry_in(carry_in),
	.XORsel(XORsel),
	.and_result(and_result),
	.or_result(or_result),
	.carry_out(carry_out),
	.z(z),
	.xor_result(xor_result));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_adder/alu_adder.vcd");
		$dumpvars(0, alu_adder_bench);
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
		ORsel = $random;
		carry_in = $random;
		XORsel = $random;
		#26;
	end

endmodule