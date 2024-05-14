`timescale 1ns/1ps

module bus_arb_bench();

reg rst_n;
reg [3:0] addr;
reg clk;

wire [15:0] sel;

bus_arb bus_arb_ (
	.rst_n(rst_n),
	.addr(addr),
	.clk(clk),
	.sel(sel));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bus_arb/bus_arb.vcd");
		$dumpvars(0, bus_arb_bench.bus_arb_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		addr = $random;
		#26;
	end

endmodule