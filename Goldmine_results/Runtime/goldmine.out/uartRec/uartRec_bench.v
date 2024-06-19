`timescale 1ns/1ps

module uartRec_bench();

reg reset;
reg rx;
reg sTick;
reg clk;

wire [7:0] dOut;
wire rxDoneTick;

uartRec uartRec_ (
	.reset(reset),
	.rx(rx),
	.sTick(sTick),
	.clk(clk),
	.dOut(dOut),
	.rxDoneTick(rxDoneTick));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/uartRec/uartRec.vcd");
		$dumpvars(0, uartRec_bench.uartRec_);
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
		rx = $random;
		sTick = $random;
		#26;
	end

endmodule