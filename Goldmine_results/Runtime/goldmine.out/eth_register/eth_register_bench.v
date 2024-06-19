`timescale 1ns/1ps

module eth_register_bench();

reg Write;
reg Reset;
reg SyncReset;
reg [7:0] DataIn;
reg Clk;

wire [7:0] DataOut;

eth_register eth_register_ (
	.Write(Write),
	.Reset(Reset),
	.SyncReset(SyncReset),
	.DataIn(DataIn),
	.Clk(Clk),
	.DataOut(DataOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_register/eth_register.vcd");
		$dumpvars(0, eth_register_bench.eth_register_);
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
		Write = $random;
		SyncReset = $random;
		DataIn = $random;
		#26;
	end

endmodule