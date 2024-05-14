`timescale 1ns/1ps

module pwm_reader_bench();

reg clk_en_i;
reg ack_i;
reg clk_i;
reg rst_i;
reg pwm_signal_i;

wire [7:0] dat_o;
wire stb_o;

pwm_reader pwm_reader_ (
	.clk_en_i(clk_en_i),
	.ack_i(ack_i),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.pwm_signal_i(pwm_signal_i),
	.dat_o(dat_o),
	.stb_o(stb_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/pwm_reader/pwm_reader.vcd");
		$dumpvars(0, pwm_reader_bench.pwm_reader_);
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
		clk_en_i = $random;
		ack_i = $random;
		pwm_signal_i = $random;
		#26;
	end

endmodule