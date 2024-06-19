`timescale 1ns/1ps

module bitRam_bench();

reg reset;
reg bitRamEn;
reg bitRamIn;
reg clk;
reg [6:0] bitRamAddr;
reg bitRamRw;

wire bitRamOut;

bitRam bitRam_ (
	.reset(reset),
	.bitRamEn(bitRamEn),
	.bitRamIn(bitRamIn),
	.clk(clk),
	.bitRamAddr(bitRamAddr),
	.bitRamRw(bitRamRw),
	.bitRamOut(bitRamOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bitRam/bitRam.vcd");
		$dumpvars(0, bitRam_bench.bitRam_);
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
		bitRamEn = $random;
		bitRamIn = $random;
		bitRamAddr = $random;
		bitRamRw = $random;
		#26;
	end

endmodule