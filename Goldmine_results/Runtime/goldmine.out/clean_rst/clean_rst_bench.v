`timescale 1ns/1ps

module clean_rst_bench();

reg rsti;
reg clk;

wire rsto;

clean_rst clean_rst_ (
	.rsti(rsti),
	.clk(clk),
	.rsto(rsto));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/clean_rst/clean_rst.vcd");
		$dumpvars(0, clean_rst_bench.clean_rst_);
		clk = 1;
		rsti = 1;
		#26;
		rsti = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		#26;
	end

endmodule