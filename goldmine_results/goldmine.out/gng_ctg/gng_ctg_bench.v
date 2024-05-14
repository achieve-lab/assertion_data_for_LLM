`timescale 1ns/1ps

module gng_ctg_bench();

reg rstn;
reg ce;
reg clk;

wire valid_out;
wire [63:0] data_out;

gng_ctg gng_ctg_ (
	.rstn(rstn),
	.ce(ce),
	.clk(clk),
	.valid_out(valid_out),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_ctg/gng_ctg.vcd");
		$dumpvars(0, gng_ctg_bench.gng_ctg_);
		clk = 1;
		rstn = 1;
		#26;
		rstn = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		ce = $random;
		#26;
	end

endmodule