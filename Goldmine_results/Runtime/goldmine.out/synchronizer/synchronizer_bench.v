`timescale 1ns/1ps

module synchronizer_bench();

reg rst_n;
reg [3:0] d_in;
reg clk;

wire [3:0] d_out;

synchronizer synchronizer_ (
	.rst_n(rst_n),
	.d_in(d_in),
	.clk(clk),
	.d_out(d_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/synchronizer/synchronizer.vcd");
		$dumpvars(0, synchronizer_bench.synchronizer_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		d_in = $random;
		#26;
	end

endmodule