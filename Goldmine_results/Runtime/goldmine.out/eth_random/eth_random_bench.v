`timescale 1ns/1ps

module eth_random_bench();

reg Reset;
reg StateJam;
reg StateJam_q;
reg MTxClk;
reg [15:0] NibCnt;
reg [3:0] RetryCnt;
reg [9:0] ByteCnt;

wire RandomEq0;
wire RandomEqByteCnt;

eth_random eth_random_ (
	.Reset(Reset),
	.StateJam(StateJam),
	.StateJam_q(StateJam_q),
	.MTxClk(MTxClk),
	.NibCnt(NibCnt),
	.RetryCnt(RetryCnt),
	.ByteCnt(ByteCnt),
	.RandomEq0(RandomEq0),
	.RandomEqByteCnt(RandomEqByteCnt));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_random/eth_random.vcd");
		$dumpvars(0, eth_random_bench.eth_random_);
		MTxClk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 MTxClk = ~MTxClk;
	end

	always begin
		#24;
		StateJam = $random;
		StateJam_q = $random;
		NibCnt = $random;
		RetryCnt = $random;
		ByteCnt = $random;
		#26;
	end

endmodule