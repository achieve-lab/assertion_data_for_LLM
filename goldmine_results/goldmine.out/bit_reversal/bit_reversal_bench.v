`timescale 1ns/1ps

module bit_reversal_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] rev_type;
reg [31:0] data_in;

wire [31:0] data_out;

bit_reversal bit_reversal_ (
	.rev_type(rev_type),
	.data_in(data_in),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/bit_reversal/bit_reversal.vcd");
		$dumpvars(0, bit_reversal_bench);
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
		rev_type = $random;
		data_in = $random;
		#26;
	end

endmodule