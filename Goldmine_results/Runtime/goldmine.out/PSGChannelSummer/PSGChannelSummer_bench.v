`timescale 1ns/1ps

module PSGChannelSummer_bench();

reg DEFAULT_RESET;
reg [3:0] outctrl;
reg [19:0] tmc_i;
reg [7:0] cnt;
reg clk_i;

wire [21:0] o;

PSGChannelSummer PSGChannelSummer_ (
	.outctrl(outctrl),
	.tmc_i(tmc_i),
	.cnt(cnt),
	.clk_i(clk_i),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGChannelSummer/PSGChannelSummer.vcd");
		$dumpvars(0, PSGChannelSummer_bench.PSGChannelSummer_);
		clk_i = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		outctrl = $random;
		tmc_i = $random;
		cnt = $random;
		#26;
	end

endmodule