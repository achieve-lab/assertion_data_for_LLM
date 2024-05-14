`timescale 1ns/1ps

module qadd_tf_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;


qadd_tf qadd_tf_ (
,
);

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/qadd_tf/qadd_tf.vcd");
		$dumpvars(0, qadd_tf_bench);
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
		#26;
	end

endmodule