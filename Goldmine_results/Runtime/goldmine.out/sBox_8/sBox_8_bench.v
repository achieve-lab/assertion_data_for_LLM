`timescale 1ns/1ps

module sBox_8_bench();

reg DEFAULT_RESET;
reg clk;
reg enc_dec;
reg [7:0] sbox_in;

wire [7:0] sbox_out_enc;
wire [7:0] sbox_out_dec;

sBox_8 sBox_8_ (
	.clk(clk),
	.enc_dec(enc_dec),
	.sbox_in(sbox_in),
	.sbox_out_enc(sbox_out_enc),
	.sbox_out_dec(sbox_out_dec));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/sBox_8/sBox_8.vcd");
		$dumpvars(0, sBox_8_bench.sBox_8_);
		clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		enc_dec = $random;
		sbox_in = $random;
		#26;
	end

endmodule