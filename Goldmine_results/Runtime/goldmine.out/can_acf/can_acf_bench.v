`timescale 1ns/1ps

module can_acf_bench();

reg reset_mode;
reg rtr1;
reg rtr2;
reg [7:0] acceptance_mask_0;
reg [7:0] acceptance_mask_1;
reg [7:0] acceptance_mask_2;
reg [7:0] acceptance_mask_3;
reg rst;
reg no_byte0;
reg [28:0] id;
reg ide;
reg extended_mode;
reg clk;
reg acceptance_filter_mode;
reg go_rx_inter;
reg go_error_frame;
reg no_byte1;
reg go_rx_crc_lim;
reg [7:0] acceptance_code_3;
reg [7:0] acceptance_code_2;
reg [7:0] acceptance_code_1;
reg [7:0] acceptance_code_0;
reg [7:0] data1;
reg [7:0] data0;

wire id_ok;

can_acf can_acf_ (
	.reset_mode(reset_mode),
	.rtr1(rtr1),
	.rtr2(rtr2),
	.acceptance_mask_0(acceptance_mask_0),
	.acceptance_mask_1(acceptance_mask_1),
	.acceptance_mask_2(acceptance_mask_2),
	.acceptance_mask_3(acceptance_mask_3),
	.rst(rst),
	.no_byte0(no_byte0),
	.id(id),
	.ide(ide),
	.extended_mode(extended_mode),
	.clk(clk),
	.acceptance_filter_mode(acceptance_filter_mode),
	.go_rx_inter(go_rx_inter),
	.go_error_frame(go_error_frame),
	.no_byte1(no_byte1),
	.go_rx_crc_lim(go_rx_crc_lim),
	.acceptance_code_3(acceptance_code_3),
	.acceptance_code_2(acceptance_code_2),
	.acceptance_code_1(acceptance_code_1),
	.acceptance_code_0(acceptance_code_0),
	.data1(data1),
	.data0(data0),
	.id_ok(id_ok));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_acf/can_acf.vcd");
		$dumpvars(0, can_acf_bench.can_acf_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		reset_mode = $random;
		rtr1 = $random;
		rtr2 = $random;
		acceptance_mask_0 = $random;
		acceptance_mask_1 = $random;
		acceptance_mask_2 = $random;
		acceptance_mask_3 = $random;
		no_byte0 = $random;
		id = $random;
		ide = $random;
		extended_mode = $random;
		acceptance_filter_mode = $random;
		go_rx_inter = $random;
		go_error_frame = $random;
		no_byte1 = $random;
		go_rx_crc_lim = $random;
		acceptance_code_3 = $random;
		acceptance_code_2 = $random;
		acceptance_code_1 = $random;
		acceptance_code_0 = $random;
		data1 = $random;
		data0 = $random;
		#26;
	end

endmodule