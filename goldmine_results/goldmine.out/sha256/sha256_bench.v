`timescale 1ns/1ps

module sha256_bench();

reg [2:0] cmd_i;
reg cmd_w_i;
reg clk_i;
reg rst_i;
reg [31:0] text_i;

wire [31:0] text_o;
wire [3:0] cmd_o;

sha256 sha256_ (
	.cmd_i(cmd_i),
	.cmd_w_i(cmd_w_i),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.text_i(text_i),
	.text_o(text_o),
	.cmd_o(cmd_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sha256/sha256.vcd");
		$dumpvars(0, sha256_bench.sha256_);
		clk_i = 1;
		rst_i = 1;
		#26;
		rst_i = 0;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		cmd_i = $random;
		cmd_w_i = $random;
		text_i = $random;
		#26;
	end

endmodule