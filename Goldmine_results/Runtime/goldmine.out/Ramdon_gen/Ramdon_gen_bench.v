`timescale 1ns/1ps

module Ramdon_gen_bench();

reg Reset;
reg Init;
reg [3:0] RetryCnt;
reg Clk;

wire Random_time_meet;

Ramdon_gen Ramdon_gen_ (
	.Reset(Reset),
	.Init(Init),
	.RetryCnt(RetryCnt),
	.Clk(Clk),
	.Random_time_meet(Random_time_meet));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/Ramdon_gen/Ramdon_gen.vcd");
		$dumpvars(0, Ramdon_gen_bench.Ramdon_gen_);
		Clk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk = ~Clk;
	end

	always begin
		#24;
		Init = $random;
		RetryCnt = $random;
		#26;
	end

endmodule