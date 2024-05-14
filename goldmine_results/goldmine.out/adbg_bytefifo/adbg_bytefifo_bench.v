`timescale 1ns/1ps

module adbg_bytefifo_bench();

reg RST;
reg PUSH_POPn;
reg [7:0] DATA_IN;
reg EN;
reg CLK;

wire [3:0] BYTES_AVAIL;
wire [3:0] BYTES_FREE;
wire [7:0] DATA_OUT;

adbg_bytefifo adbg_bytefifo_ (
	.RST(RST),
	.PUSH_POPn(PUSH_POPn),
	.DATA_IN(DATA_IN),
	.EN(EN),
	.CLK(CLK),
	.BYTES_AVAIL(BYTES_AVAIL),
	.BYTES_FREE(BYTES_FREE),
	.DATA_OUT(DATA_OUT));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/adbg_bytefifo/adbg_bytefifo.vcd");
		$dumpvars(0, adbg_bytefifo_bench.adbg_bytefifo_);
		CLK = 1;
		RST = 1;
		#26;
		RST = 0;
		#50000 $finish;
	end

	always begin
		#25 CLK = ~CLK;
	end

	always begin
		#24;
		PUSH_POPn = $random;
		DATA_IN = $random;
		EN = $random;
		#26;
	end

endmodule