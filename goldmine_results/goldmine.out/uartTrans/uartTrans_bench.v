`timescale 1ns/1ps

module uartTrans_bench();

reg reset;
reg [7:0] din;
reg txStart;
reg sTick;
reg clk;

wire txDoneTick;
wire tx;

uartTrans uartTrans_ (
	.reset(reset),
	.din(din),
	.txStart(txStart),
	.sTick(sTick),
	.clk(clk),
	.txDoneTick(txDoneTick),
	.tx(tx));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/uartTrans/uartTrans.vcd");
		$dumpvars(0, uartTrans_bench.uartTrans_);
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
		din = $random;
		txStart = $random;
		sTick = $random;
		#26;
	end

endmodule