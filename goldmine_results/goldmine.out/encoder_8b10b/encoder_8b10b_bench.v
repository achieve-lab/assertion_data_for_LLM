`timescale 1ns/1ps

module encoder_8b10b_bench();

reg reset;
reg K;
reg [7:0] ebi;
reg SBYTECLK;

wire [9:0] tbi;
wire disparity;

encoder_8b10b encoder_8b10b_ (
	.reset(reset),
	.K(K),
	.ebi(ebi),
	.SBYTECLK(SBYTECLK),
	.tbi(tbi),
	.disparity(disparity));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/encoder_8b10b/encoder_8b10b.vcd");
		$dumpvars(0, encoder_8b10b_bench.encoder_8b10b_);
		SBYTECLK = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 SBYTECLK = ~SBYTECLK;
	end

	always begin
		#24;
		K = $random;
		ebi = $random;
		#26;
	end

endmodule