`timescale 1ns/1ps

module mtx_trps_8x8_dpsram_bench();

reg sclk;
reg [7:0] inp_data;
reg rstn;
reg inp_valid;

wire mem_valid;
wire [7:0] mem_data;

mtx_trps_8x8_dpsram mtx_trps_8x8_dpsram_ (
	.sclk(sclk),
	.inp_data(inp_data),
	.rstn(rstn),
	.inp_valid(inp_valid),
	.mem_valid(mem_valid),
	.mem_data(mem_data));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mtx_trps_8x8_dpsram/mtx_trps_8x8_dpsram.vcd");
		$dumpvars(0, mtx_trps_8x8_dpsram_bench.mtx_trps_8x8_dpsram_);
		sclk = 1;
		rstn = 1;
		#26;
		rstn = 0;
		#50000 $finish;
	end

	always begin
		#25 sclk = ~sclk;
	end

	always begin
		#24;
		inp_data = $random;
		inp_valid = $random;
		#26;
	end

endmodule