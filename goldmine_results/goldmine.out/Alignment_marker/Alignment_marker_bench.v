`timescale 1ns/1ps

module Alignment_marker_bench();

reg reset;
reg iba2xbar_end_pack;
reg iba2xbar_start_pack;
reg clk;
reg [7:0] T_q;
reg [31:0] Data_o;


Alignment_marker Alignment_marker_ (
	.reset(reset),
	.iba2xbar_end_pack(iba2xbar_end_pack),
	.iba2xbar_start_pack(iba2xbar_start_pack),
	.clk(clk),
	.T_q(T_q),
	.Data_o(Data_o),
);

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Alignment_marker/Alignment_marker.vcd");
		$dumpvars(0, Alignment_marker_bench.Alignment_marker_);
		clk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		iba2xbar_end_pack = $random;
		iba2xbar_start_pack = $random;
		T_q = $random;
		Data_o = $random;
		#26;
	end

endmodule