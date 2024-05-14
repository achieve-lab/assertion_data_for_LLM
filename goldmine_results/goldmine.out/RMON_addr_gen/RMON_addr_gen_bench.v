`timescale 1ns/1ps

module RMON_addr_gen_bench();

reg Reset;
reg [15:0] Pkt_length_rmon;
reg Reg_next;
reg [2:0] Pkt_type_rmon;
reg Clk;
reg [2:0] Pkt_err_type_rmon;
reg Apply_rmon;

wire [4:0] Reg_addr;
wire Reg_drop_apply;
wire Reg_apply;
wire [15:0] Reg_data;

RMON_addr_gen RMON_addr_gen_ (
	.Reset(Reset),
	.Pkt_length_rmon(Pkt_length_rmon),
	.Reg_next(Reg_next),
	.Pkt_type_rmon(Pkt_type_rmon),
	.Clk(Clk),
	.Pkt_err_type_rmon(Pkt_err_type_rmon),
	.Apply_rmon(Apply_rmon),
	.Reg_addr(Reg_addr),
	.Reg_drop_apply(Reg_drop_apply),
	.Reg_apply(Reg_apply),
	.Reg_data(Reg_data));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/RMON_addr_gen/RMON_addr_gen.vcd");
		$dumpvars(0, RMON_addr_gen_bench.RMON_addr_gen_);
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
		Pkt_length_rmon = $random;
		Reg_next = $random;
		Pkt_type_rmon = $random;
		Pkt_err_type_rmon = $random;
		Apply_rmon = $random;
		#26;
	end

endmodule