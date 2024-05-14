`timescale 1ns/1ps

module fht_1d_x8_bench();

reg sclk;
reg rstn;
reg x_valid;
reg [7:0] x_data;

wire [10:0] fht_data;
wire fht_valid;

fht_1d_x8 fht_1d_x8_ (
	.sclk(sclk),
	.rstn(rstn),
	.x_valid(x_valid),
	.x_data(x_data),
	.fht_data(fht_data),
	.fht_valid(fht_valid));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_1d_x8/fht_1d_x8.vcd");
		$dumpvars(0, fht_1d_x8_bench.fht_1d_x8_);
		sclk = 1;
		rstn = 1;
		#26;
		rstn = 0;
		#50000 $finish;
	end

	always begin
		#25 sclk = ~sclk;
	end

	always begin
		#24;
		x_valid = $random;
		x_data = $random;
		#26;
	end

endmodule