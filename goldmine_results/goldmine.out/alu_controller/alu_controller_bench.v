`timescale 1ns/1ps

module alu_controller_bench();

reg reset;
reg [3:0] opcode;
reg clk;

wire dec_A;
wire dec_B;
wire clr_V;
wire cmp_AB;
wire inc_A;
wire inc_B;
wire clr_Z;
wire add_AB;
wire sub_AB;
wire and_AB;
wire cpl_B;
wire mul_AB;
wire clr_C;
wire sr_AB;
wire xor_AB;
wire sl_AB;
wire cpl_A;
wire load_outputs;
wire load_inputs;
wire clr;
wire or_AB;

alu_controller alu_controller_ (
	.reset(reset),
	.opcode(opcode),
	.clk(clk),
	.dec_A(dec_A),
	.dec_B(dec_B),
	.clr_V(clr_V),
	.cmp_AB(cmp_AB),
	.inc_A(inc_A),
	.inc_B(inc_B),
	.clr_Z(clr_Z),
	.add_AB(add_AB),
	.sub_AB(sub_AB),
	.and_AB(and_AB),
	.cpl_B(cpl_B),
	.mul_AB(mul_AB),
	.clr_C(clr_C),
	.sr_AB(sr_AB),
	.xor_AB(xor_AB),
	.sl_AB(sl_AB),
	.cpl_A(cpl_A),
	.load_outputs(load_outputs),
	.load_inputs(load_inputs),
	.clr(clr),
	.or_AB(or_AB));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/alu_controller/alu_controller.vcd");
		$dumpvars(0, alu_controller_bench.alu_controller_);
		clk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		opcode = $random;
		#26;
	end

endmodule