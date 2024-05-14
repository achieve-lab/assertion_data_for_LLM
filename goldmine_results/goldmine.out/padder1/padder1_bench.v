`timescale 1ns/1ps

module padder1_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] byte_num;
reg [31:0] in;

wire [31:0] out;

padder1 padder1_ (
	.byte_num(byte_num),
	.in(in),
	.out(out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/padder1/padder1.vcd");
		$dumpvars(0, padder1_bench);
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
		byte_num = $random;
		in = $random;
		#26;
	end

endmodule