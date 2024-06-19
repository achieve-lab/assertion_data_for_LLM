`timescale 1ns/1ps

module eth_outputcontrol_bench();

reg Reset;
reg [6:0] BitCounter;
reg ShiftedBit;
reg WriteOp;
reg InProgress;
reg Clk;
reg NoPre;
reg MdcEn_n;

wire Mdo;
wire MdoEn;

eth_outputcontrol eth_outputcontrol_ (
	.Reset(Reset),
	.BitCounter(BitCounter),
	.ShiftedBit(ShiftedBit),
	.WriteOp(WriteOp),
	.InProgress(InProgress),
	.Clk(Clk),
	.NoPre(NoPre),
	.MdcEn_n(MdcEn_n),
	.Mdo(Mdo),
	.MdoEn(MdoEn));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_outputcontrol/eth_outputcontrol.vcd");
		$dumpvars(0, eth_outputcontrol_bench.eth_outputcontrol_);
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
		BitCounter = $random;
		ShiftedBit = $random;
		WriteOp = $random;
		InProgress = $random;
		NoPre = $random;
		MdcEn_n = $random;
		#26;
	end

endmodule