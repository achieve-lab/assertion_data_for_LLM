`timescale 1ns/1ps

module eth_cop_bench();

reg [31:0] s2_wb_dat_i;
reg [3:0] m2_wb_sel_i;
reg s2_wb_err_i;
reg [31:0] m1_wb_adr_i;
reg wb_rst_i;
reg m1_wb_we_i;
reg m2_wb_stb_i;
reg m2_wb_we_i;
reg s2_wb_ack_i;
reg m2_wb_cyc_i;
reg [31:0] m1_wb_dat_i;
reg s1_wb_ack_i;
reg wb_clk_i;
reg [31:0] m2_wb_adr_i;
reg m1_wb_stb_i;
reg [3:0] m1_wb_sel_i;
reg [31:0] s1_wb_dat_i;
reg s1_wb_err_i;
reg [31:0] m2_wb_dat_i;
reg m1_wb_cyc_i;

wire m2_wb_ack_o;
wire s2_wb_cyc_o;
wire s1_wb_cyc_o;
wire s2_wb_stb_o;
wire m1_wb_ack_o;
wire [31:0] s2_wb_dat_o;
wire s2_wb_we_o;
wire [31:0] m1_wb_dat_o;
wire [31:0] s2_wb_adr_o;
wire m1_wb_err_o;
wire m2_wb_err_o;
wire [3:0] s2_wb_sel_o;
wire [31:0] s1_wb_dat_o;
wire s1_wb_we_o;
wire [31:0] s1_wb_adr_o;
wire [31:0] m2_wb_dat_o;
wire [3:0] s1_wb_sel_o;
wire s1_wb_stb_o;

eth_cop eth_cop_ (
	.s2_wb_dat_i(s2_wb_dat_i),
	.m2_wb_sel_i(m2_wb_sel_i),
	.s2_wb_err_i(s2_wb_err_i),
	.m1_wb_adr_i(m1_wb_adr_i),
	.wb_rst_i(wb_rst_i),
	.m1_wb_we_i(m1_wb_we_i),
	.m2_wb_stb_i(m2_wb_stb_i),
	.m2_wb_we_i(m2_wb_we_i),
	.s2_wb_ack_i(s2_wb_ack_i),
	.m2_wb_cyc_i(m2_wb_cyc_i),
	.m1_wb_dat_i(m1_wb_dat_i),
	.s1_wb_ack_i(s1_wb_ack_i),
	.wb_clk_i(wb_clk_i),
	.m2_wb_adr_i(m2_wb_adr_i),
	.m1_wb_stb_i(m1_wb_stb_i),
	.m1_wb_sel_i(m1_wb_sel_i),
	.s1_wb_dat_i(s1_wb_dat_i),
	.s1_wb_err_i(s1_wb_err_i),
	.m2_wb_dat_i(m2_wb_dat_i),
	.m1_wb_cyc_i(m1_wb_cyc_i),
	.m2_wb_ack_o(m2_wb_ack_o),
	.s2_wb_cyc_o(s2_wb_cyc_o),
	.s1_wb_cyc_o(s1_wb_cyc_o),
	.s2_wb_stb_o(s2_wb_stb_o),
	.m1_wb_ack_o(m1_wb_ack_o),
	.s2_wb_dat_o(s2_wb_dat_o),
	.s2_wb_we_o(s2_wb_we_o),
	.m1_wb_dat_o(m1_wb_dat_o),
	.s2_wb_adr_o(s2_wb_adr_o),
	.m1_wb_err_o(m1_wb_err_o),
	.m2_wb_err_o(m2_wb_err_o),
	.s2_wb_sel_o(s2_wb_sel_o),
	.s1_wb_dat_o(s1_wb_dat_o),
	.s1_wb_we_o(s1_wb_we_o),
	.s1_wb_adr_o(s1_wb_adr_o),
	.m2_wb_dat_o(m2_wb_dat_o),
	.s1_wb_sel_o(s1_wb_sel_o),
	.s1_wb_stb_o(s1_wb_stb_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_cop/eth_cop.vcd");
		$dumpvars(0, eth_cop_bench.eth_cop_);
		wb_clk_i = 1;
		wb_rst_i = 1;
		#26;
		wb_rst_i = 0;
		#50000 $finish;
	end

	always begin
		#25 wb_clk_i = ~wb_clk_i;
	end

	always begin
		#24;
		s2_wb_dat_i = $random;
		m2_wb_sel_i = $random;
		s2_wb_err_i = $random;
		m1_wb_adr_i = $random;
		m1_wb_we_i = $random;
		m2_wb_stb_i = $random;
		m2_wb_we_i = $random;
		s2_wb_ack_i = $random;
		m2_wb_cyc_i = $random;
		m1_wb_dat_i = $random;
		s1_wb_ack_i = $random;
		m2_wb_adr_i = $random;
		m1_wb_stb_i = $random;
		m1_wb_sel_i = $random;
		s1_wb_dat_i = $random;
		s1_wb_err_i = $random;
		m2_wb_dat_i = $random;
		m1_wb_cyc_i = $random;
		#26;
	end

endmodule