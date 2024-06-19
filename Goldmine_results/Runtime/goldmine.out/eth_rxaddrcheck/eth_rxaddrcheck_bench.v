`timescale 1ns/1ps

module eth_rxaddrcheck_bench();

reg Reset;
reg r_Bro;
reg MRxClk;
reg [5:0] CrcHash;
reg [7:0] RxData;
reg Multicast;
reg RxEndFrm;
reg [1:0] StateData;
reg CrcHashGood;
reg PassAll;
reg Broadcast;
reg [47:0] MAC;
reg r_Pro;
reg [31:0] HASH1;
reg [31:0] HASH0;
reg ControlFrmAddressOK;
reg ByteCntEq5;
reg ByteCntEq4;
reg ByteCntEq7;
reg ByteCntEq6;
reg ByteCntEq0;
reg ByteCntEq3;
reg ByteCntEq2;

wire AddressMiss;
wire RxAbort;

eth_rxaddrcheck eth_rxaddrcheck_ (
	.Reset(Reset),
	.r_Bro(r_Bro),
	.MRxClk(MRxClk),
	.CrcHash(CrcHash),
	.RxData(RxData),
	.Multicast(Multicast),
	.RxEndFrm(RxEndFrm),
	.StateData(StateData),
	.CrcHashGood(CrcHashGood),
	.PassAll(PassAll),
	.Broadcast(Broadcast),
	.MAC(MAC),
	.r_Pro(r_Pro),
	.HASH1(HASH1),
	.HASH0(HASH0),
	.ControlFrmAddressOK(ControlFrmAddressOK),
	.ByteCntEq5(ByteCntEq5),
	.ByteCntEq4(ByteCntEq4),
	.ByteCntEq7(ByteCntEq7),
	.ByteCntEq6(ByteCntEq6),
	.ByteCntEq0(ByteCntEq0),
	.ByteCntEq3(ByteCntEq3),
	.ByteCntEq2(ByteCntEq2),
	.AddressMiss(AddressMiss),
	.RxAbort(RxAbort));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxaddrcheck/eth_rxaddrcheck.vcd");
		$dumpvars(0, eth_rxaddrcheck_bench.eth_rxaddrcheck_);
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
		r_Bro = $random;
		CrcHash = $random;
		RxData = $random;
		Multicast = $random;
		RxEndFrm = $random;
		StateData = $random;
		CrcHashGood = $random;
		PassAll = $random;
		Broadcast = $random;
		MAC = $random;
		r_Pro = $random;
		HASH1 = $random;
		HASH0 = $random;
		ControlFrmAddressOK = $random;
		ByteCntEq5 = $random;
		ByteCntEq4 = $random;
		ByteCntEq7 = $random;
		ByteCntEq6 = $random;
		ByteCntEq0 = $random;
		ByteCntEq3 = $random;
		ByteCntEq2 = $random;
		#26;
	end

endmodule