`timescale 1ns/1ps

module EthernetTX_bench();

reg DEFAULT_RESET;
reg [47:0] HostMAC;
reg [15:0] RemotePort;
reg [7:0] SendData;
reg [15:0] SendICMPId;
reg [47:0] RemoteMAC;
reg [15:0] HostPort;
reg [2:0] SendPacketType;
reg clk20;
reg [15:0] SendICMPSeq;
reg [15:0] SendICMPCRC;
reg SendStart;
reg [31:0] RemoteIP;
reg [31:0] HostIP;
reg [9:0] SendDataLen;

wire Ethernet_TDp;
wire SendDataReq;
wire SendingPacket;
wire Ethernet_TDm;
wire [9:0] SendDataPos;

EthernetTX EthernetTX_ (
	.HostMAC(HostMAC),
	.RemotePort(RemotePort),
	.SendData(SendData),
	.SendICMPId(SendICMPId),
	.RemoteMAC(RemoteMAC),
	.HostPort(HostPort),
	.SendPacketType(SendPacketType),
	.clk20(clk20),
	.SendICMPSeq(SendICMPSeq),
	.SendICMPCRC(SendICMPCRC),
	.SendStart(SendStart),
	.RemoteIP(RemoteIP),
	.HostIP(HostIP),
	.SendDataLen(SendDataLen),
	.Ethernet_TDp(Ethernet_TDp),
	.SendDataReq(SendDataReq),
	.SendingPacket(SendingPacket),
	.Ethernet_TDm(Ethernet_TDm),
	.SendDataPos(SendDataPos));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/EthernetTX/EthernetTX.vcd");
		$dumpvars(0, EthernetTX_bench.EthernetTX_);
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
		HostMAC = $random;
		RemotePort = $random;
		SendData = $random;
		SendICMPId = $random;
		RemoteMAC = $random;
		HostPort = $random;
		SendPacketType = $random;
		SendICMPSeq = $random;
		SendICMPCRC = $random;
		SendStart = $random;
		RemoteIP = $random;
		HostIP = $random;
		SendDataLen = $random;
		#26;
	end

endmodule