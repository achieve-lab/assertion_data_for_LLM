`timescale 1ns/1ps

module eth_registers_bench();

reg Reset;
reg TxE_IRQ;
reg Rw;
reg Clk;
reg [31:0] DataIn;
reg SetPauseTimer;
reg RstTxPauseRq;
reg NValid_stat;
reg Busy_stat;
reg LinkFail;
reg RxE_IRQ;
reg Busy_IRQ;
reg RxB_IRQ;
reg TxB_IRQ;
reg UpdateMIIRX_DATAReg;
reg RStatStart;
reg RxClk;
reg TxClk;
reg WCtrlDataStart;
reg TxCtrlEndFrm;
reg [7:0] Address;
reg [3:0] Cs;
reg StartTxDone;
reg [31:0] dbg_dat;
reg [15:0] Prsd;

wire [15:0] r_CtrlData;
wire [15:0] r_TxPauseTV;
wire r_HugEn;
wire [47:0] r_MAC;
wire [6:0] r_IPGR1;
wire r_IFG;
wire r_Pro;
wire r_NoPre;
wire [47:0] r_DMAC;
wire [31:0] r_HASH0;
wire [31:0] r_HASH1;
wire r_ExDfrEn;
wire [5:0] r_CollValid;
wire r_TxPauseRq;
wire r_LoopBck;
wire r_DlyCrcEn;
wire [15:0] r_MinFL;
wire r_RxEn;
wire r_Iam;
wire [7:0] r_ClkDiv;
wire [7:0] r_TxBDNum;
wire [4:0] r_FIAD;
wire [4:0] r_RGAD;
wire r_Bro;
wire r_TxEn;
wire [6:0] r_IPGT;
wire r_CrcEn;
wire int_o;
wire r_TxFlow;
wire r_WCtrlData;
wire r_FullD;
wire r_PassAll;
wire r_RxFlow;
wire r_RStat;
wire r_Pad;
wire [6:0] r_IPGR2;
wire [3:0] r_MaxRet;
wire [31:0] DataOut;
wire r_RecSmall;
wire r_NoBckof;
wire [15:0] r_MaxFL;
wire r_ScanStat;
wire r_MiiNoPre;

eth_registers eth_registers_ (
	.Reset(Reset),
	.TxE_IRQ(TxE_IRQ),
	.Rw(Rw),
	.Clk(Clk),
	.DataIn(DataIn),
	.SetPauseTimer(SetPauseTimer),
	.RstTxPauseRq(RstTxPauseRq),
	.NValid_stat(NValid_stat),
	.Busy_stat(Busy_stat),
	.LinkFail(LinkFail),
	.RxE_IRQ(RxE_IRQ),
	.Busy_IRQ(Busy_IRQ),
	.RxB_IRQ(RxB_IRQ),
	.TxB_IRQ(TxB_IRQ),
	.UpdateMIIRX_DATAReg(UpdateMIIRX_DATAReg),
	.RStatStart(RStatStart),
	.RxClk(RxClk),
	.TxClk(TxClk),
	.WCtrlDataStart(WCtrlDataStart),
	.TxCtrlEndFrm(TxCtrlEndFrm),
	.Address(Address),
	.Cs(Cs),
	.StartTxDone(StartTxDone),
	.dbg_dat(dbg_dat),
	.Prsd(Prsd),
	.r_CtrlData(r_CtrlData),
	.r_TxPauseTV(r_TxPauseTV),
	.r_HugEn(r_HugEn),
	.r_MAC(r_MAC),
	.r_IPGR1(r_IPGR1),
	.r_IFG(r_IFG),
	.r_Pro(r_Pro),
	.r_NoPre(r_NoPre),
	.r_DMAC(r_DMAC),
	.r_HASH0(r_HASH0),
	.r_HASH1(r_HASH1),
	.r_ExDfrEn(r_ExDfrEn),
	.r_CollValid(r_CollValid),
	.r_TxPauseRq(r_TxPauseRq),
	.r_LoopBck(r_LoopBck),
	.r_DlyCrcEn(r_DlyCrcEn),
	.r_MinFL(r_MinFL),
	.r_RxEn(r_RxEn),
	.r_Iam(r_Iam),
	.r_ClkDiv(r_ClkDiv),
	.r_TxBDNum(r_TxBDNum),
	.r_FIAD(r_FIAD),
	.r_RGAD(r_RGAD),
	.r_Bro(r_Bro),
	.r_TxEn(r_TxEn),
	.r_IPGT(r_IPGT),
	.r_CrcEn(r_CrcEn),
	.int_o(int_o),
	.r_TxFlow(r_TxFlow),
	.r_WCtrlData(r_WCtrlData),
	.r_FullD(r_FullD),
	.r_PassAll(r_PassAll),
	.r_RxFlow(r_RxFlow),
	.r_RStat(r_RStat),
	.r_Pad(r_Pad),
	.r_IPGR2(r_IPGR2),
	.r_MaxRet(r_MaxRet),
	.DataOut(DataOut),
	.r_RecSmall(r_RecSmall),
	.r_NoBckof(r_NoBckof),
	.r_MaxFL(r_MaxFL),
	.r_ScanStat(r_ScanStat),
	.r_MiiNoPre(r_MiiNoPre));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_registers/eth_registers.vcd");
		$dumpvars(0, eth_registers_bench.eth_registers_);
		Clk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk = ~Clk;
	end

	always begin
		#24;
		TxE_IRQ = $random;
		Rw = $random;
		DataIn = $random;
		SetPauseTimer = $random;
		RstTxPauseRq = $random;
		NValid_stat = $random;
		Busy_stat = $random;
		LinkFail = $random;
		RxE_IRQ = $random;
		Busy_IRQ = $random;
		RxB_IRQ = $random;
		TxB_IRQ = $random;
		UpdateMIIRX_DATAReg = $random;
		RStatStart = $random;
		RxClk = $random;
		TxClk = $random;
		WCtrlDataStart = $random;
		TxCtrlEndFrm = $random;
		Address = $random;
		Cs = $random;
		StartTxDone = $random;
		dbg_dat = $random;
		Prsd = $random;
		#26;
	end

endmodule