`timescale 1ns/1ps

module adbg_crc32_bench();

reg enable;
reg clk;
reg rst;
reg shift;
reg data;
reg clr;

wire [31:0] crc_out;
wire serial_out;

adbg_crc32 adbg_crc32_ (
	.enable(enable),
	.clk(clk),
	.rst(rst),
	.shift(shift),
	.data(data),
	.clr(clr),
	.crc_out(crc_out),
	.serial_out(serial_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/adbg_crc32/adbg_crc32.vcd");
		$dumpvars(0, adbg_crc32_bench.adbg_crc32_);
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
		enable = $random;
		shift = $random;
		data = $random;
		clr = $random;
		#26;
	end

endmodule