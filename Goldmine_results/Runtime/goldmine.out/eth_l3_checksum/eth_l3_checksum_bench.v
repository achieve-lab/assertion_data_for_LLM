`timescale 1ns/1ps

module eth_l3_checksum_bench();

reg Reset;
reg [7:0] RxData;
reg [15:0] ByteCnt;
reg MRxClk;

wire CSready;
wire [15:0] CheckSum;

eth_l3_checksum eth_l3_checksum_ (
	.Reset(Reset),
	.RxData(RxData),
	.ByteCnt(ByteCnt),
	.MRxClk(MRxClk),
	.CSready(CSready),
	.CheckSum(CheckSum));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_l3_checksum/eth_l3_checksum.vcd");
		$dumpvars(0, eth_l3_checksum_bench.eth_l3_checksum_);
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
		RxData = $random;
		ByteCnt = $random;
		#26;
	end

endmodule