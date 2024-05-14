`timescale 1ns/1ps

module TENBASET_TxD_bench();

reg DEFAULT_RESET;
reg [7:0] pkt_data;
reg CRCflush;
reg SendingPacket;
reg CRC;
reg clk20;

wire Ethernet_TDp;
wire [3:0] ShiftCount;
wire [10:0] rdaddress;
wire readram;
wire [7:0] ShiftData;
wire Ethernet_TDm;

TENBASET_TxD TENBASET_TxD_ (
	.pkt_data(pkt_data),
	.CRCflush(CRCflush),
	.SendingPacket(SendingPacket),
	.CRC(CRC),
	.clk20(clk20),
	.Ethernet_TDp(Ethernet_TDp),
	.ShiftCount(ShiftCount),
	.rdaddress(rdaddress),
	.readram(readram),
	.ShiftData(ShiftData),
	.Ethernet_TDm(Ethernet_TDm));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/TENBASET_TxD/TENBASET_TxD.vcd");
		$dumpvars(0, TENBASET_TxD_bench.TENBASET_TxD_);
		clk20 = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 clk20 = ~clk20;
	end

	always begin
		#24;
		pkt_data = $random;
		CRCflush = $random;
		SendingPacket = $random;
		CRC = $random;
		#26;
	end

endmodule