`timescale 1ns/1ps

module PSGNoteGen_bench();

reg [3:0] bg;
reg [11:0] pw2;
reg [11:0] pw3;
reg [11:0] pw0;
reg [11:0] pw1;
reg [3:0] sync;
reg [11:0] wave;
reg [15:0] freq1;
reg rst;
reg [7:0] cnt;
reg clk;
reg ack;
reg [15:0] freq3;
reg [15:0] freq2;
reg [2:0] bgn;
reg [15:0] freq0;
reg [4:0] vt1;
reg [4:0] vt0;
reg [4:0] vt3;
reg [4:0] vt2;
reg [3:0] test;
reg [3:0] ringmod;

wire [11:0] o;
wire [3:0] br;
wire [23:0] acc1;
wire [23:0] acc0;
wire [23:0] acc3;
wire [23:0] acc2;

PSGNoteGen PSGNoteGen_ (
	.bg(bg),
	.pw2(pw2),
	.pw3(pw3),
	.pw0(pw0),
	.pw1(pw1),
	.sync(sync),
	.wave(wave),
	.freq1(freq1),
	.rst(rst),
	.cnt(cnt),
	.clk(clk),
	.ack(ack),
	.freq3(freq3),
	.freq2(freq2),
	.bgn(bgn),
	.freq0(freq0),
	.vt1(vt1),
	.vt0(vt0),
	.vt3(vt3),
	.vt2(vt2),
	.test(test),
	.ringmod(ringmod),
	.o(o),
	.br(br),
	.acc1(acc1),
	.acc0(acc0),
	.acc3(acc3),
	.acc2(acc2));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/PSGNoteGen/PSGNoteGen.vcd");
		$dumpvars(0, PSGNoteGen_bench.PSGNoteGen_);
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
		bg = $random;
		pw2 = $random;
		pw3 = $random;
		pw0 = $random;
		pw1 = $random;
		sync = $random;
		wave = $random;
		freq1 = $random;
		cnt = $random;
		ack = $random;
		freq3 = $random;
		freq2 = $random;
		bgn = $random;
		freq0 = $random;
		vt1 = $random;
		vt0 = $random;
		vt3 = $random;
		vt2 = $random;
		test = $random;
		ringmod = $random;
		#26;
	end

endmodule