`timescale 1ns/1ps

module PSGMasterVolumeControl_bench();

reg [15:0] i;
reg [3:0] volume;
reg clk_i;
reg rst_i;

wire [19:0] o;

PSGMasterVolumeControl PSGMasterVolumeControl_ (
	.i(i),
	.volume(volume),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGMasterVolumeControl/PSGMasterVolumeControl.vcd");
		$dumpvars(0, PSGMasterVolumeControl_bench.PSGMasterVolumeControl_);
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
		i = $random;
		volume = $random;
		#26;
	end

endmodule