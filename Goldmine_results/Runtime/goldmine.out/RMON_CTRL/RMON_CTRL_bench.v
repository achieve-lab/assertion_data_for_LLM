`timescale 1ns/1ps

module RMON_CTRL_bench();

reg Reset;
reg [5:0] CPU_rd_addr;
reg [15:0] Reg_data_0;
reg [15:0] Reg_data_1;
reg [31:0] Douta;
reg Clk;
reg Reg_apply_1;
reg Reg_apply_0;
reg CPU_rd_apply;
reg [4:0] Reg_addr_1;
reg [4:0] Reg_addr_0;

wire Wea;
wire [31:0] Dina;
wire [5:0] Addra;
wire Reg_next_1;
wire Reg_next_0;
wire CPU_rd_grant;
wire [31:0] CPU_rd_dout;

RMON_CTRL RMON_CTRL_ (
	.Reset(Reset),
	.CPU_rd_addr(CPU_rd_addr),
	.Reg_data_0(Reg_data_0),
	.Reg_data_1(Reg_data_1),
	.Douta(Douta),
	.Clk(Clk),
	.Reg_apply_1(Reg_apply_1),
	.Reg_apply_0(Reg_apply_0),
	.CPU_rd_apply(CPU_rd_apply),
	.Reg_addr_1(Reg_addr_1),
	.Reg_addr_0(Reg_addr_0),
	.Wea(Wea),
	.Dina(Dina),
	.Addra(Addra),
	.Reg_next_1(Reg_next_1),
	.Reg_next_0(Reg_next_0),
	.CPU_rd_grant(CPU_rd_grant),
	.CPU_rd_dout(CPU_rd_dout));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/RMON_CTRL/RMON_CTRL.vcd");
		$dumpvars(0, RMON_CTRL_bench.RMON_CTRL_);
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
		CPU_rd_addr = $random;
		Reg_data_0 = $random;
		Reg_data_1 = $random;
		Douta = $random;
		Reg_apply_1 = $random;
		Reg_apply_0 = $random;
		CPU_rd_apply = $random;
		Reg_addr_1 = $random;
		Reg_addr_0 = $random;
		#26;
	end

endmodule