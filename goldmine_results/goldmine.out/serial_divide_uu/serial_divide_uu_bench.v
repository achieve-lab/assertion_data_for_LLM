`timescale 1ns/1ps

module serial_divide_uu_bench();

reg clk_en_i;
reg divide_i;
reg clk_i;
reg rst_i;
reg [15:0] dividend_i;
reg [7:0] divisor_i;

wire [15:0] quotient_o;
wire done_o;

serial_divide_uu serial_divide_uu_ (
	.clk_en_i(clk_en_i),
	.divide_i(divide_i),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.dividend_i(dividend_i),
	.divisor_i(divisor_i),
	.quotient_o(quotient_o),
	.done_o(done_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/serial_divide_uu/serial_divide_uu.vcd");
		$dumpvars(0, serial_divide_uu_bench.serial_divide_uu_);
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
		divide_i = $random;
		dividend_i = $random;
		divisor_i = $random;
		#26;
	end

endmodule