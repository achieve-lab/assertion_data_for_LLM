`timescale 1ns/1ps

module cde_sram_dp_bench();

reg DEFAULT_RESET;
reg rd;
reg [9:0] raddr;
reg [9:0] waddr;
reg wr;
reg clk;
reg cs;
reg [7:0] wdata;

wire [7:0] rdata;

cde_sram_dp cde_sram_dp_ (
	.rd(rd),
	.raddr(raddr),
	.waddr(waddr),
	.wr(wr),
	.clk(clk),
	.cs(cs),
	.wdata(wdata),
	.rdata(rdata));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/cde_sram_dp/cde_sram_dp.vcd");
		$dumpvars(0, cde_sram_dp_bench.cde_sram_dp_);
		clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		rd = $random;
		raddr = $random;
		waddr = $random;
		wr = $random;
		cs = $random;
		wdata = $random;
		#26;
	end

endmodule