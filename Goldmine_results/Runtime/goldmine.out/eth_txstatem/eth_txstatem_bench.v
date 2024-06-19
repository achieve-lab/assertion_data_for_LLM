`timescale 1ns/1ps

module eth_txstatem_bench();

reg Reset;
reg TxUnderRun;
reg RetryMax;
reg TxStartFrm;
reg NibCntEq7;
reg MTxClk;
reg [6:0] NibCnt;
reg MaxFrame;
reg NibbleMinFl;
reg [6:0] IPGR1;
reg [6:0] IPGR2;
reg TooBig;
reg RandomEq0;
reg TxEndFrm;
reg [6:0] IPGT;
reg ColWindow;
reg NibCntEq15;
reg UnderRun;
reg NoBckof;
reg Collision;
reg CrcEn;
reg FullD;
reg ExcessiveDefer;
reg Pad;
reg CarrierSense;
reg StartTxDone;
reg RandomEqByteCnt;

wire StartBackoff;
wire StateJam;
wire StartIPG;
wire StateFCS;
wire StateIdle;
wire StateBackOff;
wire StartDefer;
wire [1:0] StartData;
wire StartJam;
wire StateDefer;
wire StartPreamble;
wire StateIPG;
wire [1:0] StateData;
wire StatePAD;
wire StateJam_q;
wire StartFCS;
wire StatePreamble;
wire DeferIndication;

eth_txstatem eth_txstatem_ (
	.Reset(Reset),
	.TxUnderRun(TxUnderRun),
	.RetryMax(RetryMax),
	.TxStartFrm(TxStartFrm),
	.NibCntEq7(NibCntEq7),
	.MTxClk(MTxClk),
	.NibCnt(NibCnt),
	.MaxFrame(MaxFrame),
	.NibbleMinFl(NibbleMinFl),
	.IPGR1(IPGR1),
	.IPGR2(IPGR2),
	.TooBig(TooBig),
	.RandomEq0(RandomEq0),
	.TxEndFrm(TxEndFrm),
	.IPGT(IPGT),
	.ColWindow(ColWindow),
	.NibCntEq15(NibCntEq15),
	.UnderRun(UnderRun),
	.NoBckof(NoBckof),
	.Collision(Collision),
	.CrcEn(CrcEn),
	.FullD(FullD),
	.ExcessiveDefer(ExcessiveDefer),
	.Pad(Pad),
	.CarrierSense(CarrierSense),
	.StartTxDone(StartTxDone),
	.RandomEqByteCnt(RandomEqByteCnt),
	.StartBackoff(StartBackoff),
	.StateJam(StateJam),
	.StartIPG(StartIPG),
	.StateFCS(StateFCS),
	.StateIdle(StateIdle),
	.StateBackOff(StateBackOff),
	.StartDefer(StartDefer),
	.StartData(StartData),
	.StartJam(StartJam),
	.StateDefer(StateDefer),
	.StartPreamble(StartPreamble),
	.StateIPG(StateIPG),
	.StateData(StateData),
	.StatePAD(StatePAD),
	.StateJam_q(StateJam_q),
	.StartFCS(StartFCS),
	.StatePreamble(StatePreamble),
	.DeferIndication(DeferIndication));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_txstatem/eth_txstatem.vcd");
		$dumpvars(0, eth_txstatem_bench.eth_txstatem_);
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
		TxUnderRun = $random;
		RetryMax = $random;
		TxStartFrm = $random;
		NibCntEq7 = $random;
		NibCnt = $random;
		MaxFrame = $random;
		NibbleMinFl = $random;
		IPGR1 = $random;
		IPGR2 = $random;
		TooBig = $random;
		RandomEq0 = $random;
		TxEndFrm = $random;
		IPGT = $random;
		ColWindow = $random;
		NibCntEq15 = $random;
		UnderRun = $random;
		NoBckof = $random;
		Collision = $random;
		CrcEn = $random;
		FullD = $random;
		ExcessiveDefer = $random;
		Pad = $random;
		CarrierSense = $random;
		StartTxDone = $random;
		RandomEqByteCnt = $random;
		#26;
	end

endmodule