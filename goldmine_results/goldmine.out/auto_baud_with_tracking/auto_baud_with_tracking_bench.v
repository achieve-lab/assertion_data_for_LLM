`timescale 1ns/1ps

module auto_baud_with_tracking_bench();

reg serial_dat_i;
reg clk_i;
reg reset_i;

wire auto_baud_locked_o;
wire baud_clk_o;

auto_baud_with_tracking auto_baud_with_tracking_ (
	.serial_dat_i(serial_dat_i),
	.clk_i(clk_i),
	.reset_i(reset_i),
	.auto_baud_locked_o(auto_baud_locked_o),
	.baud_clk_o(baud_clk_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/auto_baud_with_tracking/auto_baud_with_tracking.vcd");
		$dumpvars(0, auto_baud_with_tracking_bench.auto_baud_with_tracking_);
		clk_i = 1;
		reset_i = 1;
		#26;
		reset_i = 0;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		serial_dat_i = $random;
		#26;
	end

endmodule