`timescale 1ns/1ps

module crc_datapath_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] size_in;
reg rev_out_type;
reg buffer_rst;
reg crc_init_en;
reg clk;
reg bypass_size;
reg [31:0] bus_wr;
reg buffer_en;
reg [1:0] byte_sel;
reg bypass_byte0;
reg [1:0] crc_poly_size;
reg clear_crc_init_sel;
reg crc_out_en;
reg crc_idr_en;
reg set_crc_init_sel;
reg byte_en;
reg crc_poly_en;
reg [1:0] rev_in_type;
reg rst_n;

wire [31:0] crc_out;
wire [1:0] size_out;
wire [31:0] crc_init_out;
wire [7:0] crc_idr_out;
wire [31:0] crc_poly_out;

crc_datapath crc_datapath_ (
	.size_in(size_in),
	.rev_out_type(rev_out_type),
	.buffer_rst(buffer_rst),
	.crc_init_en(crc_init_en),
	.clk(clk),
	.bypass_size(bypass_size),
	.bus_wr(bus_wr),
	.buffer_en(buffer_en),
	.byte_sel(byte_sel),
	.bypass_byte0(bypass_byte0),
	.crc_poly_size(crc_poly_size),
	.clear_crc_init_sel(clear_crc_init_sel),
	.crc_out_en(crc_out_en),
	.crc_idr_en(crc_idr_en),
	.set_crc_init_sel(set_crc_init_sel),
	.byte_en(byte_en),
	.crc_poly_en(crc_poly_en),
	.rev_in_type(rev_in_type),
	.rst_n(rst_n),
	.crc_out(crc_out),
	.size_out(size_out),
	.crc_init_out(crc_init_out),
	.crc_idr_out(crc_idr_out),
	.crc_poly_out(crc_poly_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/crc_datapath/crc_datapath.vcd");
		$dumpvars(0, crc_datapath_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		size_in = $random;
		rev_out_type = $random;
		buffer_rst = $random;
		crc_init_en = $random;
		clk = $random;
		bypass_size = $random;
		bus_wr = $random;
		buffer_en = $random;
		byte_sel = $random;
		bypass_byte0 = $random;
		crc_poly_size = $random;
		clear_crc_init_sel = $random;
		crc_out_en = $random;
		crc_idr_en = $random;
		set_crc_init_sel = $random;
		byte_en = $random;
		crc_poly_en = $random;
		rev_in_type = $random;
		rst_n = $random;
		#26;
	end

endmodule