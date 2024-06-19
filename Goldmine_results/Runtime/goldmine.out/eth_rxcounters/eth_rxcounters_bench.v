`timescale 1ns/1ps

module eth_rxcounters_bench();

reg Reset;
reg MRxDV;
reg HugEn;
reg MRxClk;
reg StateIdle;
reg StateDrop;
reg DlyCrcEn;
reg Transmitting;
reg r_IFG;
reg [15:0] MaxFL;
reg [1:0] StateData;
reg StateSFD;
reg MRxDEqD;
reg StatePreamble;

wire ByteCntSmall7;
wire IFGCounterEq24;
wire [3:0] DlyCrcCnt;
wire ByteCntMaxFrame;
wire [15:0] ByteCntOut;
wire ByteCntGreat2;
wire ByteCntEq5;
wire ByteCntEq4;
wire ByteCntEq7;
wire ByteCntEq6;
wire ByteCntEq1;
wire ByteCntEq0;
wire ByteCntEq3;
wire ByteCntEq2;

eth_rxcounters eth_rxcounters_ (
	.Reset(Reset),
	.MRxDV(MRxDV),
	.HugEn(HugEn),
	.MRxClk(MRxClk),
	.StateIdle(StateIdle),
	.StateDrop(StateDrop),
	.DlyCrcEn(DlyCrcEn),
	.Transmitting(Transmitting),
	.r_IFG(r_IFG),
	.MaxFL(MaxFL),
	.StateData(StateData),
	.StateSFD(StateSFD),
	.MRxDEqD(MRxDEqD),
	.StatePreamble(StatePreamble),
	.ByteCntSmall7(ByteCntSmall7),
	.IFGCounterEq24(IFGCounterEq24),
	.DlyCrcCnt(DlyCrcCnt),
	.ByteCntMaxFrame(ByteCntMaxFrame),
	.ByteCntOut(ByteCntOut),
	.ByteCntGreat2(ByteCntGreat2),
	.ByteCntEq5(ByteCntEq5),
	.ByteCntEq4(ByteCntEq4),
	.ByteCntEq7(ByteCntEq7),
	.ByteCntEq6(ByteCntEq6),
	.ByteCntEq1(ByteCntEq1),
	.ByteCntEq0(ByteCntEq0),
	.ByteCntEq3(ByteCntEq3),
	.ByteCntEq2(ByteCntEq2));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxcounters/eth_rxcounters.vcd");
		$dumpvars(0, eth_rxcounters_bench.eth_rxcounters_);
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
		MRxDV = $random;
		HugEn = $random;
		StateIdle = $random;
		StateDrop = $random;
		DlyCrcEn = $random;
		Transmitting = $random;
		r_IFG = $random;
		MaxFL = $random;
		StateData = $random;
		StateSFD = $random;
		MRxDEqD = $random;
		StatePreamble = $random;
		#26;
	end

endmodule