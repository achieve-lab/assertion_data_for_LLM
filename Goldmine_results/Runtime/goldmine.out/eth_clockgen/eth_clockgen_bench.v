`timescale 1ns/1ps

module eth_clockgen_bench();

reg Reset;
reg [7:0] Divider;
reg Clk;

wire Mdc;
wire MdcEn;
wire MdcEn_n;

eth_clockgen eth_clockgen_ (
	.Reset(Reset),
	.Divider(Divider),
	.Clk(Clk),
	.Mdc(Mdc),
	.MdcEn(MdcEn),
	.MdcEn_n(MdcEn_n));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/eth_clockgen/eth_clockgen.vcd");
		$dumpvars(0, eth_clockgen_bench.eth_clockgen_);
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
		Divider = $random;
		#26;
	end

endmodule