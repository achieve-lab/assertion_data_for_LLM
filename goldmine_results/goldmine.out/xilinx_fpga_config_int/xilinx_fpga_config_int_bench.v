`timescale 1ns/1ps

module xilinx_fpga_config_int_bench();

reg DEFAULT_RESET;
reg rdwr_b;
reg sys_clk100;
reg din;
reg tms;
reg prog_b;
reg M2;
reg por;
reg tdi;
reg M1;
reg M0;
reg cclk_I;
reg init_I;
reg tclk;
reg cs_b;

wire cclk_O;
wire trace1;
wire [31:0] COR;
wire done;
wire init_T;
wire [31:0] FAR;
wire cclk_T;
wire [3:0] CMD;
wire trace2;
wire init_O;

xilinx_fpga_config_int xilinx_fpga_config_int_ (
	.rdwr_b(rdwr_b),
	.sys_clk100(sys_clk100),
	.din(din),
	.tms(tms),
	.prog_b(prog_b),
	.M2(M2),
	.por(por),
	.tdi(tdi),
	.M1(M1),
	.M0(M0),
	.cclk_I(cclk_I),
	.init_I(init_I),
	.tclk(tclk),
	.cs_b(cs_b),
	.cclk_O(cclk_O),
	.trace1(trace1),
	.COR(COR),
	.done(done),
	.init_T(init_T),
	.FAR(FAR),
	.cclk_T(cclk_T),
	.CMD(CMD),
	.trace2(trace2),
	.init_O(init_O));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/xilinx_fpga_config_int/xilinx_fpga_config_int.vcd");
		$dumpvars(0, xilinx_fpga_config_int_bench.xilinx_fpga_config_int_);
		sys_clk100 = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 sys_clk100 = ~sys_clk100;
	end

	always begin
		#24;
		rdwr_b = $random;
		din = $random;
		tms = $random;
		prog_b = $random;
		M2 = $random;
		por = $random;
		tdi = $random;
		M1 = $random;
		M0 = $random;
		cclk_I = $random;
		init_I = $random;
		tclk = $random;
		cs_b = $random;
		#26;
	end

endmodule