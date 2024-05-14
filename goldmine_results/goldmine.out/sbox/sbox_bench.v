`timescale 1ns/1ps

module sbox_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [3:0] data_i;

wire [3:0] data_o;

sbox sbox_ (
	.data_i(data_i),
	.data_o(data_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sbox/sbox.vcd");
		$dumpvars(0, sbox_bench);
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
		data_i = $random;
		#26;
	end

endmodule