`timescale 1ns/1ps

module ca_prng_bench();

reg [31:0] init_pattern_data;
reg load_init_pattern;
reg reset_n;
reg clk;
reg next_pattern;
reg load_update_rule;
reg [7:0] update_rule;

wire [31:0] prng_data;

ca_prng ca_prng_ (
	.init_pattern_data(init_pattern_data),
	.load_init_pattern(load_init_pattern),
	.reset_n(reset_n),
	.clk(clk),
	.next_pattern(next_pattern),
	.load_update_rule(load_update_rule),
	.update_rule(update_rule),
	.prng_data(prng_data));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ca_prng/ca_prng.vcd");
		$dumpvars(0, ca_prng_bench.ca_prng_);
		clk = 1;
		reset_n = 1;
		#26;
		reset_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		init_pattern_data = $random;
		load_init_pattern = $random;
		next_pattern = $random;
		load_update_rule = $random;
		update_rule = $random;
		#26;
	end

endmodule