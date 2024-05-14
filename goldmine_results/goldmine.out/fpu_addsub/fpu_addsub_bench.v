`timescale 1ns/1ps

module fpu_addsub_bench();

reg fpu_op;
reg enable;
reg [63:0] opa;
reg [63:0] opb;
reg clk;
reg rst;
reg [1:0] rmode;

wire ready;
wire [63:0] out;

fpu_addsub fpu_addsub_ (
	.fpu_op(fpu_op),
	.enable(enable),
	.opa(opa),
	.opb(opb),
	.clk(clk),
	.rst(rst),
	.rmode(rmode),
	.ready(ready),
	.out(out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fpu_addsub/fpu_addsub.vcd");
		$dumpvars(0, fpu_addsub_bench.fpu_addsub_);
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
		enable = $random;
		opa = $random;
		opb = $random;
		rmode = $random;
		#26;
	end

endmodule