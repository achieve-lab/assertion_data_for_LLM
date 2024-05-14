`timescale 1ns/1ps

module alu_datapath_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] A;
reg [7:0] B;
reg sl_AB;
reg sub_AB;
reg load_inputs;
reg and_AB;
reg clr_V;
reg sr_AB;
reg xor_AB;
reg cmp_AB;
reg reset;
reg dec_A;
reg dec_B;
reg inc_A;
reg inc_B;
reg clr_Z;
reg clk;
reg add_AB;
reg or_AB;
reg mul_AB;
reg clr;
reg cpl_B;
reg cpl_A;
reg clr_C;
reg load_outputs;

wire [7:0] Y;
wire C;
wire Z;
wire V;

alu_datapath alu_datapath_ (
	.A(A),
	.B(B),
	.sl_AB(sl_AB),
	.sub_AB(sub_AB),
	.load_inputs(load_inputs),
	.and_AB(and_AB),
	.clr_V(clr_V),
	.sr_AB(sr_AB),
	.xor_AB(xor_AB),
	.cmp_AB(cmp_AB),
	.reset(reset),
	.dec_A(dec_A),
	.dec_B(dec_B),
	.inc_A(inc_A),
	.inc_B(inc_B),
	.clr_Z(clr_Z),
	.clk(clk),
	.add_AB(add_AB),
	.or_AB(or_AB),
	.mul_AB(mul_AB),
	.clr(clr),
	.cpl_B(cpl_B),
	.cpl_A(cpl_A),
	.clr_C(clr_C),
	.load_outputs(load_outputs),
	.Y(Y),
	.C(C),
	.Z(Z),
	.V(V));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_datapath/alu_datapath.vcd");
		$dumpvars(0, alu_datapath_bench);
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
		A = $random;
		B = $random;
		sl_AB = $random;
		sub_AB = $random;
		load_inputs = $random;
		and_AB = $random;
		clr_V = $random;
		sr_AB = $random;
		xor_AB = $random;
		cmp_AB = $random;
		reset = $random;
		dec_A = $random;
		dec_B = $random;
		inc_A = $random;
		inc_B = $random;
		clr_Z = $random;
		clk = $random;
		add_AB = $random;
		or_AB = $random;
		mul_AB = $random;
		clr = $random;
		cpl_B = $random;
		cpl_A = $random;
		clr_C = $random;
		load_outputs = $random;
		#26;
	end

endmodule