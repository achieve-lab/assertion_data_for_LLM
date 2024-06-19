`timescale 1ns/1ps

module decoder_8b10b_bench();

reg reset;
reg RBYTECLK;
reg [9:0] tbi;

wire coding_err;
wire disparity;
wire disparity_err;
wire [7:0] ebi;
wire K_out;

decoder_8b10b decoder_8b10b_ (
	.reset(reset),
	.RBYTECLK(RBYTECLK),
	.tbi(tbi),
	.coding_err(coding_err),
	.disparity(disparity),
	.disparity_err(disparity_err),
	.ebi(ebi),
	.K_out(K_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/decoder_8b10b/decoder_8b10b.vcd");
		$dumpvars(0, decoder_8b10b_bench.decoder_8b10b_);
		RBYTECLK = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 RBYTECLK = ~RBYTECLK;
	end

	always begin
		#24;
		tbi = $random;
		#26;
	end

endmodule