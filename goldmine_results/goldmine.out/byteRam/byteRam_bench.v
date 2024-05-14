`timescale 1ns/1ps

module byteRam_bench();

reg reset;
reg [6:0] byteRamAddr;
reg byteRamEn;
reg [7:0] byteRamIn;
reg clk;
reg byteRamRw;

wire [7:0] byteRamOut;

byteRam byteRam_ (
	.reset(reset),
	.byteRamAddr(byteRamAddr),
	.byteRamEn(byteRamEn),
	.byteRamIn(byteRamIn),
	.clk(clk),
	.byteRamRw(byteRamRw),
	.byteRamOut(byteRamOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/byteRam/byteRam.vcd");
		$dumpvars(0, byteRam_bench.byteRam_);
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
		byteRamAddr = $random;
		byteRamEn = $random;
		byteRamIn = $random;
		byteRamRw = $random;
		#26;
	end

endmodule