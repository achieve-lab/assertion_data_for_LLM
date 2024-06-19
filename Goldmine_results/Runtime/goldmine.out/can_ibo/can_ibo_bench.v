`timescale 1ns/1ps

module can_ibo_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] di;

wire [7:0] do;

can_ibo can_ibo_ (
	.di(di),
	.do(do));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_ibo/can_ibo.vcd");
		$dumpvars(0, can_ibo_bench);
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
		di = $random;
		#26;
	end

endmodule