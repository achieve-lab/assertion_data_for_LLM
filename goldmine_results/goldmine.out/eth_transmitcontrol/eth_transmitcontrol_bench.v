`timescale 1ns/1ps

module eth_transmitcontrol_bench();

reg [47:0] MAC;
reg TxStartFrmIn;
reg TxDoneIn;
reg TxAbortIn;
reg TxUsedDataOutDetected;
reg DlyCrcEn;
reg TxUsedDataIn;
reg TPauseRq;
reg MTxClk;
reg TxFlow;
reg TxUsedDataOut;
reg TxReset;
reg [15:0] TxPauseTV;

wire WillSendControlFrame;
wire BlockTxDone;
wire TxCtrlEndFrm;
wire CtrlMux;
wire TxCtrlStartFrm;
wire [7:0] ControlData;
wire SendingCtrlFrm;

eth_transmitcontrol eth_transmitcontrol_ (
	.MAC(MAC),
	.TxStartFrmIn(TxStartFrmIn),
	.TxDoneIn(TxDoneIn),
	.TxAbortIn(TxAbortIn),
	.TxUsedDataOutDetected(TxUsedDataOutDetected),
	.DlyCrcEn(DlyCrcEn),
	.TxUsedDataIn(TxUsedDataIn),
	.TPauseRq(TPauseRq),
	.MTxClk(MTxClk),
	.TxFlow(TxFlow),
	.TxUsedDataOut(TxUsedDataOut),
	.TxReset(TxReset),
	.TxPauseTV(TxPauseTV),
	.WillSendControlFrame(WillSendControlFrame),
	.BlockTxDone(BlockTxDone),
	.TxCtrlEndFrm(TxCtrlEndFrm),
	.CtrlMux(CtrlMux),
	.TxCtrlStartFrm(TxCtrlStartFrm),
	.ControlData(ControlData),
	.SendingCtrlFrm(SendingCtrlFrm));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_transmitcontrol/eth_transmitcontrol.vcd");
		$dumpvars(0, eth_transmitcontrol_bench.eth_transmitcontrol_);
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
		MAC = $random;
		TxStartFrmIn = $random;
		TxDoneIn = $random;
		TxAbortIn = $random;
		TxUsedDataOutDetected = $random;
		DlyCrcEn = $random;
		TxUsedDataIn = $random;
		TPauseRq = $random;
		TxFlow = $random;
		TxUsedDataOut = $random;
		TxPauseTV = $random;
		#26;
	end

endmodule