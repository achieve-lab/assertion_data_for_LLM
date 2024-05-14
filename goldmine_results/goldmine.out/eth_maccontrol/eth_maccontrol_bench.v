`timescale 1ns/1ps

module eth_maccontrol_bench();

reg [47:0] DMAC;
reg r_PassAll;
reg MRxClk;
reg MTxClk;
reg TxAbortIn;
reg PadIn;
reg DlyCrcEn;
reg [7:0] TxDataIn;
reg RxValid;
reg TPauseRq;
reg RxEndFrm;
reg RxReset;
reg RxStartFrm;
reg TxFlow;
reg TxReset;
reg [15:0] TxPauseTV;
reg ReceivedPacketGood;
reg [47:0] MAC;
reg TxStartFrmIn;
reg TxDoneIn;
reg ReceiveEnd;
reg CrcEnIn;
reg ReceivedLengthOK;
reg RxStatusWriteLatched_sync2;
reg TxUsedDataIn;
reg RxFlow;
reg TxEndFrmIn;
reg [7:0] RxData;

wire TxDoneOut;
wire ReceivedPauseFrm;
wire SetPauseTimer;
wire TxCtrlEndFrm;
wire TxEndFrmOut;
wire WillSendControlFrame;
wire [7:0] TxDataOut;
wire PadOut;
wire TxAbortOut;
wire ControlFrmAddressOK;
wire TxUsedDataOut;
wire CrcEnOut;
wire TxStartFrmOut;

eth_maccontrol eth_maccontrol_ (
	.DMAC(DMAC),
	.r_PassAll(r_PassAll),
	.MRxClk(MRxClk),
	.MTxClk(MTxClk),
	.TxAbortIn(TxAbortIn),
	.PadIn(PadIn),
	.DlyCrcEn(DlyCrcEn),
	.TxDataIn(TxDataIn),
	.RxValid(RxValid),
	.TPauseRq(TPauseRq),
	.RxEndFrm(RxEndFrm),
	.RxReset(RxReset),
	.RxStartFrm(RxStartFrm),
	.TxFlow(TxFlow),
	.TxReset(TxReset),
	.TxPauseTV(TxPauseTV),
	.ReceivedPacketGood(ReceivedPacketGood),
	.MAC(MAC),
	.TxStartFrmIn(TxStartFrmIn),
	.TxDoneIn(TxDoneIn),
	.ReceiveEnd(ReceiveEnd),
	.CrcEnIn(CrcEnIn),
	.ReceivedLengthOK(ReceivedLengthOK),
	.RxStatusWriteLatched_sync2(RxStatusWriteLatched_sync2),
	.TxUsedDataIn(TxUsedDataIn),
	.RxFlow(RxFlow),
	.TxEndFrmIn(TxEndFrmIn),
	.RxData(RxData),
	.TxDoneOut(TxDoneOut),
	.ReceivedPauseFrm(ReceivedPauseFrm),
	.SetPauseTimer(SetPauseTimer),
	.TxCtrlEndFrm(TxCtrlEndFrm),
	.TxEndFrmOut(TxEndFrmOut),
	.WillSendControlFrame(WillSendControlFrame),
	.TxDataOut(TxDataOut),
	.PadOut(PadOut),
	.TxAbortOut(TxAbortOut),
	.ControlFrmAddressOK(ControlFrmAddressOK),
	.TxUsedDataOut(TxUsedDataOut),
	.CrcEnOut(CrcEnOut),
	.TxStartFrmOut(TxStartFrmOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_maccontrol/eth_maccontrol.vcd");
		$dumpvars(0, eth_maccontrol_bench.eth_maccontrol_);
		MTxClk = 1;
		TxReset = 1;
		#26;
		TxReset = 0;
		#50000 $finish;
	end

	always begin
		#25 MTxClk = ~MTxClk;
	end

	always begin
		#24;
		DMAC = $random;
		r_PassAll = $random;
		MRxClk = $random;
		TxAbortIn = $random;
		PadIn = $random;
		DlyCrcEn = $random;
		TxDataIn = $random;
		RxValid = $random;
		TPauseRq = $random;
		RxEndFrm = $random;
		RxReset = $random;
		RxStartFrm = $random;
		TxFlow = $random;
		TxPauseTV = $random;
		ReceivedPacketGood = $random;
		MAC = $random;
		TxStartFrmIn = $random;
		TxDoneIn = $random;
		ReceiveEnd = $random;
		CrcEnIn = $random;
		ReceivedLengthOK = $random;
		RxStatusWriteLatched_sync2 = $random;
		TxUsedDataIn = $random;
		RxFlow = $random;
		TxEndFrmIn = $random;
		RxData = $random;
		#26;
	end

endmodule