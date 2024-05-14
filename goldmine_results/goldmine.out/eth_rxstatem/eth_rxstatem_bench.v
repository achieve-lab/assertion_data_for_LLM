`timescale 1ns/1ps

module eth_rxstatem_bench();

reg Reset;
reg MRxDV;
reg ByteCntGreat2;
reg IFGCounterEq24;
reg MRxClk;
reg Transmitting;
reg MRxDEqD;
reg MRxDEq5;
reg ByteCntEq0;
reg ByteCntMaxFrame;

wire StateIdle;
wire StateSFD;
wire StatePreamble;
wire StateDrop;
wire [1:0] StateData;

eth_rxstatem eth_rxstatem_ (
	.Reset(Reset),
	.MRxDV(MRxDV),
	.ByteCntGreat2(ByteCntGreat2),
	.IFGCounterEq24(IFGCounterEq24),
	.MRxClk(MRxClk),
	.Transmitting(Transmitting),
	.MRxDEqD(MRxDEqD),
	.MRxDEq5(MRxDEq5),
	.ByteCntEq0(ByteCntEq0),
	.ByteCntMaxFrame(ByteCntMaxFrame),
	.StateIdle(StateIdle),
	.StateSFD(StateSFD),
	.StatePreamble(StatePreamble),
	.StateDrop(StateDrop),
	.StateData(StateData));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxstatem/eth_rxstatem.vcd");
		$dumpvars(0, eth_rxstatem_bench.eth_rxstatem_);
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
		ByteCntGreat2 = $random;
		IFGCounterEq24 = $random;
		Transmitting = $random;
		MRxDEqD = $random;
		MRxDEq5 = $random;
		ByteCntEq0 = $random;
		ByteCntMaxFrame = $random;
		#26;
	end

endmodule