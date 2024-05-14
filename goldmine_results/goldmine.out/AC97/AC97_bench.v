`timescale 1ns/1ps

module AC97_bench();

reg we_i;
reg [63:0] adr_i;
reg [15:0] dat_i;
reg clk_i;
reg rst_i;
reg SDATA_IN;
reg [17:0] PSGout;
reg stb_i;
reg cyc_i;
reg BIT_CLK;

wire ack_o;
wire [15:0] dat_o;
wire RESET;

AC97 AC97_ (
	.we_i(we_i),
	.adr_i(adr_i),
	.dat_i(dat_i),
	.clk_i(clk_i),
	.rst_i(rst_i),
	.SDATA_IN(SDATA_IN),
	.PSGout(PSGout),
	.stb_i(stb_i),
	.cyc_i(cyc_i),
	.BIT_CLK(BIT_CLK),
	.ack_o(ack_o),
	.dat_o(dat_o),
	.RESET(RESET));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/AC97/AC97.vcd");
		$dumpvars(0, AC97_bench.AC97_);
		clk_i = 1;
		rst_i = 1;
		#26;
		rst_i = 0;
		#50000 $finish;
	end

	always begin
		#25 clk_i = ~clk_i;
	end

	always begin
		#24;
		we_i = $random;
		adr_i = $random;
		dat_i = $random;
		SDATA_IN = $random;
		PSGout = $random;
		stb_i = $random;
		cyc_i = $random;
		BIT_CLK = $random;
		#26;
	end

endmodule