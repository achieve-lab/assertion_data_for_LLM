`timescale 1ns/1ps

module key_expander_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg add_w_out;
reg [31:0] g_out;
reg [3:0] round;
reg enc_dec;
reg [127:0] key_in;

wire [127:0] key_out;
wire [31:0] g_in;

key_expander key_expander_ (
	.add_w_out(add_w_out),
	.g_out(g_out),
	.round(round),
	.enc_dec(enc_dec),
	.key_in(key_in),
	.key_out(key_out),
	.g_in(g_in));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/key_expander/key_expander.vcd");
		$dumpvars(0, key_expander_bench);
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
		add_w_out = $random;
		g_out = $random;
		round = $random;
		enc_dec = $random;
		key_in = $random;
		#26;
	end

endmodule