`timescale 1ns/1ps

module fht_8x8_core_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg sclk;
reg rstn;
reg x_valid;
reg [7:0] x_data;

wire [13:0] fht_2d_data;
wire fht_2d_valid;

fht_8x8_core fht_8x8_core_ (
	.sclk(sclk),
	.rstn(rstn),
	.x_valid(x_valid),
	.x_data(x_data),
	.fht_2d_data(fht_2d_data),
	.fht_2d_valid(fht_2d_valid));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_8x8_core/fht_8x8_core.vcd");
		$dumpvars(0, fht_8x8_core_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		sclk = $random;
		rstn = $random;
		x_valid = $random;
		x_data = $random;
		#26;
	end

endmodule