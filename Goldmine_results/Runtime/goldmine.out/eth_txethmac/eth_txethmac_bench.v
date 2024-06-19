`timescale 1ns/1ps

module eth_txethmac_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg Reset;
reg TxUnderRun;
reg HugEn;
reg [5:0] CollValid;
reg TxStartFrm;
reg MTxClk;
reg [15:0] MinFL;
reg DlyCrcEn;
reg [3:0] MaxRet;
reg [6:0] IPGR1;
reg [6:0] IPGR2;
reg CarrierSense;
reg TxEndFrm;
reg [15:0] MaxFL;
reg [6:0] IPGT;
reg NoBckof;
reg Collision;
reg CrcEn;
reg FullD;
reg Pad;
reg [7:0] TxData;
reg ExDfrEn;

wire LateCollision;
wire TxDone;
wire [3:0] MTxD;
wire TxAbort;
wire TxRetry;
wire WillTransmit;
wire [3:0] RetryCnt;
wire [1:0] StateData;
wire MaxCollisionOccured;
wire MTxErr;
wire DeferIndication;
wire MTxEn;
wire TxUsedData;
wire StartTxAbort;
wire StartTxDone;
wire StatePreamble;
wire ResetCollision;

eth_txethmac eth_txethmac_ (
	.Reset(Reset),
	.TxUnderRun(TxUnderRun),
	.HugEn(HugEn),
	.CollValid(CollValid),
	.TxStartFrm(TxStartFrm),
	.MTxClk(MTxClk),
	.MinFL(MinFL),
	.DlyCrcEn(DlyCrcEn),
	.MaxRet(MaxRet),
	.IPGR1(IPGR1),
	.IPGR2(IPGR2),
	.CarrierSense(CarrierSense),
	.TxEndFrm(TxEndFrm),
	.MaxFL(MaxFL),
	.IPGT(IPGT),
	.NoBckof(NoBckof),
	.Collision(Collision),
	.CrcEn(CrcEn),
	.FullD(FullD),
	.Pad(Pad),
	.TxData(TxData),
	.ExDfrEn(ExDfrEn),
	.LateCollision(LateCollision),
	.TxDone(TxDone),
	.MTxD(MTxD),
	.TxAbort(TxAbort),
	.TxRetry(TxRetry),
	.WillTransmit(WillTransmit),
	.RetryCnt(RetryCnt),
	.StateData(StateData),
	.MaxCollisionOccured(MaxCollisionOccured),
	.MTxErr(MTxErr),
	.DeferIndication(DeferIndication),
	.MTxEn(MTxEn),
	.TxUsedData(TxUsedData),
	.StartTxAbort(StartTxAbort),
	.StartTxDone(StartTxDone),
	.StatePreamble(StatePreamble),
	.ResetCollision(ResetCollision));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_txethmac/eth_txethmac.vcd");
		$dumpvars(0, eth_txethmac_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		Reset = $random;
		TxUnderRun = $random;
		HugEn = $random;
		CollValid = $random;
		TxStartFrm = $random;
		MTxClk = $random;
		MinFL = $random;
		DlyCrcEn = $random;
		MaxRet = $random;
		IPGR1 = $random;
		IPGR2 = $random;
		CarrierSense = $random;
		TxEndFrm = $random;
		MaxFL = $random;
		IPGT = $random;
		NoBckof = $random;
		Collision = $random;
		CrcEn = $random;
		FullD = $random;
		Pad = $random;
		TxData = $random;
		ExDfrEn = $random;
		#26;
	end

endmodule