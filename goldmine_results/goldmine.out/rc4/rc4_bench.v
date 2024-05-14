`timescale 1ns/1ps

module rc4_bench();

reg rst;
reg [7:0] password_input;
reg clk;

wire [7:0] K;
wire output_ready;

rc4 rc4_ (
	.rst(rst),
	.password_input(password_input),
	.clk(clk),
	.K(K),
	.output_ready(output_ready));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rc4/rc4.vcd");
		$dumpvars(0, rc4_bench.rc4_);
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
		password_input = $random;
		#26;
	end

endmodule