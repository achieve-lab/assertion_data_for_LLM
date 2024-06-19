`timescale 1ns/1ps

module control_unit_bench();

reg start;
reg [1:0] aes_mode;
reg clk;
reg disable_core;
reg [1:0] operation_mode;
reg rst_n;

wire [2:0] sbox_sel;
wire encrypt_decrypt;
wire key_derivation_en;
wire [1:0] rk_sel;
wire [3:0] key_en;
wire mode_ctr;
wire key_gen;
wire iv_cnt_en;
wire mode_cbc;
wire bypass_key_en;
wire last_round;
wire iv_cnt_sel;
wire [3:0] col_en;
wire end_comp;
wire [1:0] col_sel;
wire key_init;
wire bypass_rk;
wire [3:0] round;
wire [1:0] key_out_sel;
wire key_sel;

control_unit control_unit_ (
	.start(start),
	.aes_mode(aes_mode),
	.clk(clk),
	.disable_core(disable_core),
	.operation_mode(operation_mode),
	.rst_n(rst_n),
	.sbox_sel(sbox_sel),
	.encrypt_decrypt(encrypt_decrypt),
	.key_derivation_en(key_derivation_en),
	.rk_sel(rk_sel),
	.key_en(key_en),
	.mode_ctr(mode_ctr),
	.key_gen(key_gen),
	.iv_cnt_en(iv_cnt_en),
	.mode_cbc(mode_cbc),
	.bypass_key_en(bypass_key_en),
	.last_round(last_round),
	.iv_cnt_sel(iv_cnt_sel),
	.col_en(col_en),
	.end_comp(end_comp),
	.col_sel(col_sel),
	.key_init(key_init),
	.bypass_rk(bypass_rk),
	.round(round),
	.key_out_sel(key_out_sel),
	.key_sel(key_sel));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/control_unit/control_unit.vcd");
		$dumpvars(0, control_unit_bench.control_unit_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		start = $random;
		aes_mode = $random;
		disable_core = $random;
		operation_mode = $random;
		#26;
	end

endmodule