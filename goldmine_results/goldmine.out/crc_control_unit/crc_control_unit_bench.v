`timescale 1ns/1ps

module crc_control_unit_bench();

reg [1:0] size_in;
reg write;
reg reset_chain;
reg rst_n;
reg clk;

wire set_crc_init_sel;
wire clear_crc_init_sel;
wire reset_pending;
wire buffer_full;
wire byte_en;
wire bypass_size;
wire [1:0] byte_sel;
wire bypass_byte0;
wire read_wait;
wire crc_out_en;

crc_control_unit crc_control_unit_ (
	.size_in(size_in),
	.write(write),
	.reset_chain(reset_chain),
	.rst_n(rst_n),
	.clk(clk),
	.set_crc_init_sel(set_crc_init_sel),
	.clear_crc_init_sel(clear_crc_init_sel),
	.reset_pending(reset_pending),
	.buffer_full(buffer_full),
	.byte_en(byte_en),
	.bypass_size(bypass_size),
	.byte_sel(byte_sel),
	.bypass_byte0(bypass_byte0),
	.read_wait(read_wait),
	.crc_out_en(crc_out_en));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/crc_control_unit/crc_control_unit.vcd");
		$dumpvars(0, crc_control_unit_bench.crc_control_unit_);
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
		size_in = $random;
		write = $random;
		reset_chain = $random;
		#26;
	end

endmodule