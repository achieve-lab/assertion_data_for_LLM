`timescale 1ns/1ps

module eth_txcounters_bench();

reg Reset;
reg StateJam;
reg HugEn;
reg StateFCS;
reg TxStartFrm;
reg MTxClk;
reg StartDefer;
reg DlyCrcEn;
reg StateIPG;
reg [15:0] MinFL;
reg StateSFD;
reg StartFCS;
reg [1:0] StateData;
reg StartBackoff;
reg [15:0] MaxFL;
reg StartIPG;
reg StateIdle;
reg StateBackOff;
reg StartJam;
reg StateDefer;
reg StatePreamble;
reg StatePAD;
reg PacketFinished_q;
reg ExDfrEn;

wire NibbleMinFl;
wire ExcessiveDefer;
wire NibCntEq7;
wire [15:0] NibCnt;
wire [2:0] DlyCrcCnt;
wire [15:0] ByteCnt;
wire NibCntEq15;
wire MaxFrame;

eth_txcounters eth_txcounters_ (
	.Reset(Reset),
	.StateJam(StateJam),
	.HugEn(HugEn),
	.StateFCS(StateFCS),
	.TxStartFrm(TxStartFrm),
	.MTxClk(MTxClk),
	.StartDefer(StartDefer),
	.DlyCrcEn(DlyCrcEn),
	.StateIPG(StateIPG),
	.MinFL(MinFL),
	.StateSFD(StateSFD),
	.StartFCS(StartFCS),
	.StateData(StateData),
	.StartBackoff(StartBackoff),
	.MaxFL(MaxFL),
	.StartIPG(StartIPG),
	.StateIdle(StateIdle),
	.StateBackOff(StateBackOff),
	.StartJam(StartJam),
	.StateDefer(StateDefer),
	.StatePreamble(StatePreamble),
	.StatePAD(StatePAD),
	.PacketFinished_q(PacketFinished_q),
	.ExDfrEn(ExDfrEn),
	.NibbleMinFl(NibbleMinFl),
	.ExcessiveDefer(ExcessiveDefer),
	.NibCntEq7(NibCntEq7),
	.NibCnt(NibCnt),
	.DlyCrcCnt(DlyCrcCnt),
	.ByteCnt(ByteCnt),
	.NibCntEq15(NibCntEq15),
	.MaxFrame(MaxFrame));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_txcounters/eth_txcounters.vcd");
		$dumpvars(0, eth_txcounters_bench.eth_txcounters_);
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
		HugEn = $random;
		StateFCS = $random;
		TxStartFrm = $random;
		StartDefer = $random;
		DlyCrcEn = $random;
		StateIPG = $random;
		MinFL = $random;
		StateSFD = $random;
		StartFCS = $random;
		StateData = $random;
		StartBackoff = $random;
		MaxFL = $random;
		StartIPG = $random;
		StateIdle = $random;
		StateBackOff = $random;
		StartJam = $random;
		StateDefer = $random;
		StatePreamble = $random;
		StatePAD = $random;
		PacketFinished_q = $random;
		ExDfrEn = $random;
		#26;
	end

endmodule