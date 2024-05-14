`timescale 1ns/1ps

module data_swap_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [31:0] data_in;
reg [1:0] swap_type;

wire [31:0] data_swap;

data_swap data_swap_ (
	.data_in(data_in),
	.swap_type(swap_type),
	.data_swap(data_swap));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/data_swap/data_swap.vcd");
		$dumpvars(0, data_swap_bench);
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
		data_in = $random;
		swap_type = $random;
		#26;
	end

endmodule