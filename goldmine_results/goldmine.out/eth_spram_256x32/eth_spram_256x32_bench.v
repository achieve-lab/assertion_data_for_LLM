`timescale 1ns/1ps

module eth_spram_256x32_bench();

reg [7:0] start;
reg [3:0] we;
reg [7:0] finish;
reg [7:0] addr;
reg clk;
reg rst;
reg oe;
reg [31:0] di;
reg ce;

wire [31:0] dato;

eth_spram_256x32 eth_spram_256x32_ (
	.start(start),
	.we(we),
	.finish(finish),
	.addr(addr),
	.clk(clk),
	.rst(rst),
	.oe(oe),
	.di(di),
	.ce(ce),
	.dato(dato));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_spram_256x32/eth_spram_256x32.vcd");
		$dumpvars(0, eth_spram_256x32_bench.eth_spram_256x32_);
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
		start = $random;
		we = $random;
		finish = $random;
		addr = $random;
		oe = $random;
		di = $random;
		ce = $random;
		#26;
	end

endmodule