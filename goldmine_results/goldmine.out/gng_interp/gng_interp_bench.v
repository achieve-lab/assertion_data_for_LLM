`timescale 1ns/1ps

module gng_interp_bench();

reg rstn;
reg valid_in;
reg [63:0] data_in;
reg clk;

wire valid_out;
wire [15:0] data_out;

gng_interp gng_interp_ (
	.rstn(rstn),
	.valid_in(valid_in),
	.data_in(data_in),
	.clk(clk),
	.valid_out(valid_out),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gng_interp/gng_interp.vcd");
		$dumpvars(0, gng_interp_bench.gng_interp_);
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
		valid_in = $random;
		data_in = $random;
		#26;
	end

endmodule