`timescale 1ns/1ps

module mesi_isc_basic_fifo_bench();

reg rst;
reg [31:0] data_i;
reg wr_i;
reg rd_i;
reg clk;

wire status_empty_o;
wire [31:0] data_o;
wire status_full_o;

mesi_isc_basic_fifo mesi_isc_basic_fifo_ (
	.rst(rst),
	.data_i(data_i),
	.wr_i(wr_i),
	.rd_i(rd_i),
	.clk(clk),
	.status_empty_o(status_empty_o),
	.data_o(data_o),
	.status_full_o(status_full_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mesi_isc_basic_fifo/mesi_isc_basic_fifo.vcd");
		$dumpvars(0, mesi_isc_basic_fifo_bench.mesi_isc_basic_fifo_);
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
		data_i = $random;
		wr_i = $random;
		rd_i = $random;
		#26;
	end

endmodule