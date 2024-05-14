`timescale 1ns/1ps

module RegCPUData_bench();

reg Reset;
reg CCSB;
reg CWR_pulse;
reg Clk;
reg [6:0] CA_reg_set;
reg [15:0] RegInit;
reg [7:0] CA_reg;
reg [15:0] CD_in_reg;

wire [15:0] RegOut;

RegCPUData RegCPUData_ (
	.Reset(Reset),
	.CCSB(CCSB),
	.CWR_pulse(CWR_pulse),
	.Clk(Clk),
	.CA_reg_set(CA_reg_set),
	.RegInit(RegInit),
	.CA_reg(CA_reg),
	.CD_in_reg(CD_in_reg),
	.RegOut(RegOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/RegCPUData/RegCPUData.vcd");
		$dumpvars(0, RegCPUData_bench.RegCPUData_);
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
		CCSB = $random;
		CWR_pulse = $random;
		CA_reg_set = $random;
		RegInit = $random;
		CA_reg = $random;
		CD_in_reg = $random;
		#26;
	end

endmodule