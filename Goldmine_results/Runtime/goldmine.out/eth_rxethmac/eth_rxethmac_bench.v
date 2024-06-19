`timescale 1ns/1ps

module eth_rxethmac_bench();

reg MRxDV;
reg [15:0] MaxFL;
reg HugEn;
reg MRxClk;
reg Transmitting;
reg ControlFrmAddressOK;
reg PassAll;
reg [47:0] MAC;
reg DlyCrcEn;
reg r_IFG;
reg r_Pro;
reg [3:0] MRxD;
reg Reset;
reg r_Bro;
reg [31:0] r_HASH0;
reg [31:0] r_HASH1;

wire StateSFD;
wire AddressMiss;
wire RxAbort;
wire StateIdle;
wire ByteCntMaxFrame;
wire RxStartFrm;
wire [7:0] RxData;
wire [1:0] StateData;
wire RxValid;
wire ByteCntGreat2;
wire RxEndFrm;
wire CrcError;
wire [15:0] ByteCnt;
wire ByteCntEq0;
wire StatePreamble;

eth_rxethmac eth_rxethmac_ (
	.MRxDV(MRxDV),
	.MaxFL(MaxFL),
	.HugEn(HugEn),
	.MRxClk(MRxClk),
	.Transmitting(Transmitting),
	.ControlFrmAddressOK(ControlFrmAddressOK),
	.PassAll(PassAll),
	.MAC(MAC),
	.DlyCrcEn(DlyCrcEn),
	.r_IFG(r_IFG),
	.r_Pro(r_Pro),
	.MRxD(MRxD),
	.Reset(Reset),
	.r_Bro(r_Bro),
	.r_HASH0(r_HASH0),
	.r_HASH1(r_HASH1),
	.StateSFD(StateSFD),
	.AddressMiss(AddressMiss),
	.RxAbort(RxAbort),
	.StateIdle(StateIdle),
	.ByteCntMaxFrame(ByteCntMaxFrame),
	.RxStartFrm(RxStartFrm),
	.RxData(RxData),
	.StateData(StateData),
	.RxValid(RxValid),
	.ByteCntGreat2(ByteCntGreat2),
	.RxEndFrm(RxEndFrm),
	.CrcError(CrcError),
	.ByteCnt(ByteCnt),
	.ByteCntEq0(ByteCntEq0),
	.StatePreamble(StatePreamble));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_rxethmac/eth_rxethmac.vcd");
		$dumpvars(0, eth_rxethmac_bench.eth_rxethmac_);
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
		MaxFL = $random;
		HugEn = $random;
		Transmitting = $random;
		ControlFrmAddressOK = $random;
		PassAll = $random;
		MAC = $random;
		DlyCrcEn = $random;
		r_IFG = $random;
		r_Pro = $random;
		MRxD = $random;
		r_Bro = $random;
		r_HASH0 = $random;
		r_HASH1 = $random;
		#26;
	end

endmodule