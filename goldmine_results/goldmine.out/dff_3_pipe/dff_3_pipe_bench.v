`timescale 1ns/1ps

module dff_3_pipe_bench();

reg rst_n;
reg [7:0] d1;
reg [7:0] d2;
reg [7:0] d0;
reg clk;

wire [7:0] q1;
wire [7:0] q0;
wire [7:0] q2;

dff_3_pipe dff_3_pipe_ (
	.rst_n(rst_n),
	.d1(d1),
	.d2(d2),
	.d0(d0),
	.clk(clk),
	.q1(q1),
	.q0(q0),
	.q2(q2));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/dff_3_pipe/dff_3_pipe.vcd");
		$dumpvars(0, dff_3_pipe_bench.dff_3_pipe_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		d1 = $random;
		d2 = $random;
		d0 = $random;
		#26;
	end

endmodule