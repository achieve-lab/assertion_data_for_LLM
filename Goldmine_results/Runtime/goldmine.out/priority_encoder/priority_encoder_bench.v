`timescale 1ns/1ps

module priority_encoder_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] D;

wire [2:0] y;

priority_encoder priority_encoder_ (
	.D(D),
	.y(y));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/priority_encoder/priority_encoder.vcd");
		$dumpvars(0, priority_encoder_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		D = $random;
		#26;
	end

endmodule