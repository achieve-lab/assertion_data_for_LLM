`timescale 1ns/1ps

module eth_crc_bench();

reg Reset;
reg Initialize;
reg Enable;
reg [3:0] Data;
reg Clk;

wire CrcError;
wire [31:0] Crc;

eth_crc eth_crc_ (
	.Reset(Reset),
	.Initialize(Initialize),
	.Enable(Enable),
	.Data(Data),
	.Clk(Clk),
	.CrcError(CrcError),
	.Crc(Crc));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_crc/eth_crc.vcd");
		$dumpvars(0, eth_crc_bench.eth_crc_);
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
		Initialize = $random;
		Enable = $random;
		Data = $random;
		#26;
	end

endmodule