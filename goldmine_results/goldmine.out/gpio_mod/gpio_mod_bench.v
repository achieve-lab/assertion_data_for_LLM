`timescale 1ns/1ps

module gpio_mod_bench();

reg rst_n;
reg w_n;
reg [31:0] datai;
reg [31:0] addr;
reg clk;
reg [31:0] io_i;
reg sel;

wire [31:0] datao;
wire [31:0] io_o;

gpio_mod gpio_mod_ (
	.rst_n(rst_n),
	.w_n(w_n),
	.datai(datai),
	.addr(addr),
	.clk(clk),
	.io_i(io_i),
	.sel(sel),
	.datao(datao),
	.io_o(io_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/gpio_mod/gpio_mod.vcd");
		$dumpvars(0, gpio_mod_bench.gpio_mod_);
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
		w_n = $random;
		datai = $random;
		addr = $random;
		io_i = $random;
		sel = $random;
		#26;
	end

endmodule