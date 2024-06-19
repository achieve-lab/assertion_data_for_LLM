`timescale 1ns/1ps

module eth_miim_bench();

reg Reset;
reg RStat;
reg Mdi;
reg Clk;
reg NoPre;
reg WCtrlData;
reg [4:0] Fiad;
reg ScanStat;
reg [4:0] Rgad;
reg [15:0] CtrlData;
reg [7:0] Divider;

wire Nvalid;
wire Busy;
wire LinkFail;
wire Mdo;
wire Mdc;
wire WCtrlDataStart;
wire UpdateMIIRX_DATAReg;
wire RStatStart;
wire MdoEn;
wire [15:0] Prsd;

eth_miim eth_miim_ (
	.Reset(Reset),
	.RStat(RStat),
	.Mdi(Mdi),
	.Clk(Clk),
	.NoPre(NoPre),
	.WCtrlData(WCtrlData),
	.Fiad(Fiad),
	.ScanStat(ScanStat),
	.Rgad(Rgad),
	.CtrlData(CtrlData),
	.Divider(Divider),
	.Nvalid(Nvalid),
	.Busy(Busy),
	.LinkFail(LinkFail),
	.Mdo(Mdo),
	.Mdc(Mdc),
	.WCtrlDataStart(WCtrlDataStart),
	.UpdateMIIRX_DATAReg(UpdateMIIRX_DATAReg),
	.RStatStart(RStatStart),
	.MdoEn(MdoEn),
	.Prsd(Prsd));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_miim/eth_miim.vcd");
		$dumpvars(0, eth_miim_bench.eth_miim_);
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
		RStat = $random;
		Mdi = $random;
		NoPre = $random;
		WCtrlData = $random;
		Fiad = $random;
		ScanStat = $random;
		Rgad = $random;
		CtrlData = $random;
		Divider = $random;
		#26;
	end

endmodule