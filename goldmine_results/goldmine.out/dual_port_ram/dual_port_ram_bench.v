`timescale 1ns/1ps

module dual_port_ram_bench();

reg DEFAULT_RESET;
reg [13:0] w_addr;
reg r_ena;
reg w_ena;
reg [13:0] r_addr;
reg clk;
reg [31:0] w_data;

wire [31:0] r_data;

dual_port_ram dual_port_ram_ (
	.w_addr(w_addr),
	.r_ena(r_ena),
	.w_ena(w_ena),
	.r_addr(r_addr),
	.clk(clk),
	.w_data(w_data),
	.r_data(r_data));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/dual_port_ram/dual_port_ram.vcd");
		$dumpvars(0, dual_port_ram_bench.dual_port_ram_);
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
		w_addr = $random;
		r_ena = $random;
		w_ena = $random;
		r_addr = $random;
		w_data = $random;
		#26;
	end

endmodule