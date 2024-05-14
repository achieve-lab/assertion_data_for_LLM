`timescale 1ns/1ps

module CRC32_D64_bench();

reg RESET;
reg START;
reg [63:0] DATA_IN;
reg CLK;

wire [31:0] CRC_OUT;

CRC32_D64 CRC32_D64_ (
	.RESET(RESET),
	.START(START),
	.DATA_IN(DATA_IN),
	.CLK(CLK),
	.CRC_OUT(CRC_OUT));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/CRC32_D64/CRC32_D64.vcd");
		$dumpvars(0, CRC32_D64_bench.CRC32_D64_);
		CLK = 1;
		RESET = 1;
		#26;
		RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 CLK = ~CLK;
	end

	always begin
		#24;
		START = $random;
		DATA_IN = $random;
		#26;
	end

endmodule