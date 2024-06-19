`timescale 1ns/1ps

module eth_receivecontrol_bench();

reg ReceivedPacketGood;
reg r_PassAll;
reg MRxClk;
reg RxStatusWriteLatched_sync2;
reg MTxClk;
reg TxAbortIn;
reg TxUsedDataOutDetected;
reg ReceiveEnd;
reg RxStartFrm;
reg ReceivedLengthOK;
reg DlyCrcEn;
reg RxReset;
reg [47:0] MAC;
reg RxValid;
reg RxFlow;
reg TxStartFrmOut;
reg RxEndFrm;
reg TxDoneIn;
reg [7:0] RxData;
reg TxReset;

wire ReceivedPauseFrm;
wire Pause;
wire SetPauseTimer;
wire AddressOK;

eth_receivecontrol eth_receivecontrol_ (
	.ReceivedPacketGood(ReceivedPacketGood),
	.r_PassAll(r_PassAll),
	.MRxClk(MRxClk),
	.RxStatusWriteLatched_sync2(RxStatusWriteLatched_sync2),
	.MTxClk(MTxClk),
	.TxAbortIn(TxAbortIn),
	.TxUsedDataOutDetected(TxUsedDataOutDetected),
	.ReceiveEnd(ReceiveEnd),
	.RxStartFrm(RxStartFrm),
	.ReceivedLengthOK(ReceivedLengthOK),
	.DlyCrcEn(DlyCrcEn),
	.RxReset(RxReset),
	.MAC(MAC),
	.RxValid(RxValid),
	.RxFlow(RxFlow),
	.TxStartFrmOut(TxStartFrmOut),
	.RxEndFrm(RxEndFrm),
	.TxDoneIn(TxDoneIn),
	.RxData(RxData),
	.TxReset(TxReset),
	.ReceivedPauseFrm(ReceivedPauseFrm),
	.Pause(Pause),
	.SetPauseTimer(SetPauseTimer),
	.AddressOK(AddressOK));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_receivecontrol/eth_receivecontrol.vcd");
		$dumpvars(0, eth_receivecontrol_bench.eth_receivecontrol_);
		MRxClk = 1;
		RxReset = 1;
		#26;
		RxReset = 0;
		#50000 $finish;
	end

	always begin
		#25 MRxClk = ~MRxClk;
	end

	always begin
		#24;
		ReceivedPacketGood = $random;
		r_PassAll = $random;
		RxStatusWriteLatched_sync2 = $random;
		MTxClk = $random;
		TxAbortIn = $random;
		TxUsedDataOutDetected = $random;
		ReceiveEnd = $random;
		RxStartFrm = $random;
		ReceivedLengthOK = $random;
		DlyCrcEn = $random;
		MAC = $random;
		RxValid = $random;
		RxFlow = $random;
		TxStartFrmOut = $random;
		RxEndFrm = $random;
		TxDoneIn = $random;
		RxData = $random;
		TxReset = $random;
		#26;
	end

endmodule