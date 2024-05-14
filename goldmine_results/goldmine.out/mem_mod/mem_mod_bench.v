`timescale 1ns/1ps

module mem_mod_bench();

reg DEFAULT_RESET;
reg sel;
reg w_n;
reg [31:0] datai;
reg [31:0] addr;
reg clk;

wire [31:0] datao;

mem_mod mem_mod_ (
	.sel(sel),
	.w_n(w_n),
	.datai(datai),
	.addr(addr),
	.clk(clk),
	.datao(datao));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mem_mod/mem_mod.vcd");
		$dumpvars(0, mem_mod_bench.mem_mod_);
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
		sel = $random;
		w_n = $random;
		datai = $random;
		addr = $random;
		#26;
	end

endmodule