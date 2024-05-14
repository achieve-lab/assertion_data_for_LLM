`timescale 1ns/1ps

module s5_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [5:0] stage1_input;

wire [3:0] stage1_output;

s5 s5_ (
	.stage1_input(stage1_input),
	.stage1_output(stage1_output));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/s5/s5.vcd");
		$dumpvars(0, s5_bench);
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
		stage1_input = $random;
		#26;
	end

endmodule