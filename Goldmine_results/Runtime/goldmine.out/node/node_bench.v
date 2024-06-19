`timescale 1ns/1ps

module node_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] data_b;
reg [7:0] data_a;

wire [7:0] data_hi;
wire [7:0] data_lo;

node node_ (
	.data_b(data_b),
	.data_a(data_a),
	.data_hi(data_hi),
	.data_lo(data_lo));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/node/node.vcd");
		$dumpvars(0, node_bench);
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
		data_b = $random;
		data_a = $random;
		#26;
	end

endmodule