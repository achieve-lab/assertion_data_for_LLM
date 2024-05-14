`timescale 1ns/1ps

module fpu_round_bench();

reg [11:0] exponent_term;
reg [55:0] mantissa_term;
reg enable;
reg clk;
reg rst;
reg sign_term;
reg [1:0] round_mode;

wire [63:0] round_out;
wire [11:0] exponent_final;

fpu_round fpu_round_ (
	.exponent_term(exponent_term),
	.mantissa_term(mantissa_term),
	.enable(enable),
	.clk(clk),
	.rst(rst),
	.sign_term(sign_term),
	.round_mode(round_mode),
	.round_out(round_out),
	.exponent_final(exponent_final));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_round/fpu_round.vcd");
		$dumpvars(0, fpu_round_bench.fpu_round_);
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
		exponent_term = $random;
		mantissa_term = $random;
		enable = $random;
		sign_term = $random;
		round_mode = $random;
		#26;
	end

endmodule