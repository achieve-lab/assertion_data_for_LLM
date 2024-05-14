`timescale 1ns/1ps

module eth_shiftreg_bench();

reg Reset;
reg [4:0] Fiad;
reg WriteOp;
reg Mdi;
reg [4:0] Rgad;
reg Clk;
reg [1:0] LatchByte;
reg [15:0] CtrlData;
reg [3:0] ByteSelect;
reg MdcEn_n;

wire ShiftedBit;
wire LinkFail;
wire [15:0] Prsd;

eth_shiftreg eth_shiftreg_ (
	.Reset(Reset),
	.Fiad(Fiad),
	.WriteOp(WriteOp),
	.Mdi(Mdi),
	.Rgad(Rgad),
	.Clk(Clk),
	.LatchByte(LatchByte),
	.CtrlData(CtrlData),
	.ByteSelect(ByteSelect),
	.MdcEn_n(MdcEn_n),
	.ShiftedBit(ShiftedBit),
	.LinkFail(LinkFail),
	.Prsd(Prsd));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_shiftreg/eth_shiftreg.vcd");
		$dumpvars(0, eth_shiftreg_bench.eth_shiftreg_);
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
		Fiad = $random;
		WriteOp = $random;
		Mdi = $random;
		Rgad = $random;
		LatchByte = $random;
		CtrlData = $random;
		ByteSelect = $random;
		MdcEn_n = $random;
		#26;
	end

endmodule