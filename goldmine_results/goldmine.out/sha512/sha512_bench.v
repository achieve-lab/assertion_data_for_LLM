`timescale 1ns/1ps

module sha512_bench();

reg [3:0] cmd_i;
reg cmd_w_i;
reg clk_i;
reg rst_i;
reg [31:0] text_i;

wire [31:0] text_o;
wire [4:0] cmd_o;

sha512 sha512_ (
	.cmd_i(cmd_i),
	.cmd_w_i(cmd_w_i),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.text_i(text_i),
	.text_o(text_o),
	.cmd_o(cmd_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sha512/sha512.vcd");
		$dumpvars(0, sha512_bench.sha512_);
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