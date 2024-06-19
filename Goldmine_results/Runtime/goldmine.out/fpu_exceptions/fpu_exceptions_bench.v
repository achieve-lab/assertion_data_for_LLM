`timescale 1ns/1ps

module fpu_exceptions_bench();

reg [2:0] fpu_op;
reg [63:0] in_except;
reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;
reg rst;
reg [1:0] mantissa_in;
reg [1:0] rmode;
reg [11:0] exponent_in;

wire exception;
wire ex_enable;
wire overflow;
wire [63:0] out;
wire inexact;
wire invalid;
wire underflow;

fpu_exceptions fpu_exceptions_ (
	.fpu_op(fpu_op),
	.in_except(in_except),
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.rst(rst),
	.mantissa_in(mantissa_in),
	.rmode(rmode),
	.exponent_in(exponent_in),
	.exception(exception),
	.ex_enable(ex_enable),
	.overflow(overflow),
	.out(out),
	.inexact(inexact),
	.invalid(invalid),
	.underflow(underflow));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_exceptions/fpu_exceptions.vcd");
		$dumpvars(0, fpu_exceptions_bench.fpu_exceptions_);
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
		fpu_op = $random;
		in_except = $random;
		enable = $random;
		opa = $random;
		opb = $random;
		mantissa_in = $random;
		rmode = $random;
		exponent_in = $random;
		#26;
	end

endmodule