`timescale 1ns/1ps

module eth_macstatus_bench();

reg Reset;
reg RxCrcError;
reg [1:0] RxStateData;
reg MRxClk;
reg [15:0] RxByteCnt;
reg MTxClk;
reg LateCollision;
reg r_HugEn;
reg Loopback;
reg RxByteCntMaxFrame;
reg MRxErr;
reg [15:0] r_MaxFL;
reg RxByteCntEq0;
reg MRxDV;
reg RxStateSFD;
reg TxUsedData;
reg StatePreamble;
reg RstDeferLatched;
reg CarrierSense;
reg RxStatePreamble;
reg [5:0] CollValid;
reg RxStateIdle;
reg DeferIndication;
reg Transmitting;
reg [15:0] r_MinFL;
reg [3:0] RetryCnt;
reg MaxCollisionOccured;
reg r_FullD;
reg Collision;
reg r_RecSmall;
reg [3:0] MRxD;
reg [1:0] StateData;
reg StartTxAbort;
reg StartTxDone;
reg RxByteCntGreat2;
reg TxStartFrm;

wire ReceivedPacketGood;
wire RetryLimit;
wire LatchedCrcError;
wire InvalidSymbol;
wire DeferLatched;
wire ShortFrame;
wire ReceiveEnd;
wire DribbleNibble;
wire ReceivedLengthOK;
wire CarrierSenseLost;
wire ReceivedPacketTooBig;
wire LateCollLatched;
wire LoadRxStatus;
wire [3:0] RetryCntLatched;
wire LatchedMRxErr;
wire RxLateCollision;

eth_macstatus eth_macstatus_ (
	.Reset(Reset),
	.RxCrcError(RxCrcError),
	.RxStateData(RxStateData),
	.MRxClk(MRxClk),
	.RxByteCnt(RxByteCnt),
	.MTxClk(MTxClk),
	.LateCollision(LateCollision),
	.r_HugEn(r_HugEn),
	.Loopback(Loopback),
	.RxByteCntMaxFrame(RxByteCntMaxFrame),
	.MRxErr(MRxErr),
	.r_MaxFL(r_MaxFL),
	.RxByteCntEq0(RxByteCntEq0),
	.MRxDV(MRxDV),
	.RxStateSFD(RxStateSFD),
	.TxUsedData(TxUsedData),
	.StatePreamble(StatePreamble),
	.RstDeferLatched(RstDeferLatched),
	.CarrierSense(CarrierSense),
	.RxStatePreamble(RxStatePreamble),
	.CollValid(CollValid),
	.RxStateIdle(RxStateIdle),
	.DeferIndication(DeferIndication),
	.Transmitting(Transmitting),
	.r_MinFL(r_MinFL),
	.RetryCnt(RetryCnt),
	.MaxCollisionOccured(MaxCollisionOccured),
	.r_FullD(r_FullD),
	.Collision(Collision),
	.r_RecSmall(r_RecSmall),
	.MRxD(MRxD),
	.StateData(StateData),
	.StartTxAbort(StartTxAbort),
	.StartTxDone(StartTxDone),
	.RxByteCntGreat2(RxByteCntGreat2),
	.TxStartFrm(TxStartFrm),
	.ReceivedPacketGood(ReceivedPacketGood),
	.RetryLimit(RetryLimit),
	.LatchedCrcError(LatchedCrcError),
	.InvalidSymbol(InvalidSymbol),
	.DeferLatched(DeferLatched),
	.ShortFrame(ShortFrame),
	.ReceiveEnd(ReceiveEnd),
	.DribbleNibble(DribbleNibble),
	.ReceivedLengthOK(ReceivedLengthOK),
	.CarrierSenseLost(CarrierSenseLost),
	.ReceivedPacketTooBig(ReceivedPacketTooBig),
	.LateCollLatched(LateCollLatched),
	.LoadRxStatus(LoadRxStatus),
	.RetryCntLatched(RetryCntLatched),
	.LatchedMRxErr(LatchedMRxErr),
	.RxLateCollision(RxLateCollision));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_macstatus/eth_macstatus.vcd");
		$dumpvars(0, eth_macstatus_bench.eth_macstatus_);
		MRxClk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 MRxClk = ~MRxClk;
	end

	always begin
		#24;
		RxCrcError = $random;
		RxStateData = $random;
		RxByteCnt = $random;
		MTxClk = $random;
		LateCollision = $random;
		r_HugEn = $random;
		Loopback = $random;
		RxByteCntMaxFrame = $random;
		MRxErr = $random;
		r_MaxFL = $random;
		RxByteCntEq0 = $random;
		MRxDV = $random;
		RxStateSFD = $random;
		TxUsedData = $random;
		StatePreamble = $random;
		RstDeferLatched = $random;
		CarrierSense = $random;
		RxStatePreamble = $random;
		CollValid = $random;
		RxStateIdle = $random;
		DeferIndication = $random;
		Transmitting = $random;
		r_MinFL = $random;
		RetryCnt = $random;
		MaxCollisionOccured = $random;
		r_FullD = $random;
		Collision = $random;
		r_RecSmall = $random;
		MRxD = $random;
		StateData = $random;
		StartTxAbort = $random;
		StartTxDone = $random;
		RxByteCntGreat2 = $random;
		TxStartFrm = $random;
		#26;
	end

endmodule