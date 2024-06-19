`timescale 1ns/1ps

module PSGEnvGen_bench();

reg [7:0] sustain1;
reg [7:0] sustain0;
reg [7:0] cnt;
reg [7:0] sustain2;
reg clk;
reg [15:0] attack3;
reg [15:0] attack2;
reg [15:0] attack1;
reg [15:0] attack0;
reg [7:0] sustain3;
reg [11:0] decay0;
reg [11:0] decay1;
reg [11:0] decay2;
reg [11:0] decay3;
reg [3:0] gate;
reg rst;
reg [11:0] relese2;
reg [11:0] relese3;
reg [11:0] relese0;
reg [11:0] relese1;

wire [7:0] o;

PSGEnvGen PSGEnvGen_ (
	.sustain1(sustain1),
	.sustain0(sustain0),
	.cnt(cnt),
	.sustain2(sustain2),
	.clk(clk),
	.attack3(attack3),
	.attack2(attack2),
	.attack1(attack1),
	.attack0(attack0),
	.sustain3(sustain3),
	.decay0(decay0),
	.decay1(decay1),
	.decay2(decay2),
	.decay3(decay3),
	.gate(gate),
	.rst(rst),
	.relese2(relese2),
	.relese3(relese3),
	.relese0(relese0),
	.relese1(relese1),
	.o(o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGEnvGen/PSGEnvGen.vcd");
		$dumpvars(0, PSGEnvGen_bench.PSGEnvGen_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		sustain1 = $random;
		sustain0 = $random;
		cnt = $random;
		sustain2 = $random;
		attack3 = $random;
		attack2 = $random;
		attack1 = $random;
		attack0 = $random;
		sustain3 = $random;
		decay0 = $random;
		decay1 = $random;
		decay2 = $random;
		decay3 = $random;
		gate = $random;
		relese2 = $random;
		relese3 = $random;
		relese0 = $random;
		relese1 = $random;
		#26;
	end

endmodule