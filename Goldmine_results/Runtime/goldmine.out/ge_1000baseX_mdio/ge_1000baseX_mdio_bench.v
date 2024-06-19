`timescale 1ns/1ps

module ge_1000baseX_mdio_bench();

reg reset;
reg mdc;
reg mdio;
reg [15:0] data_rd;

wire mdio_oe;
wire [15:0] data_wr;
wire strobe_wr;
wire mdio_out;
wire [4:0] data_addr;

ge_1000baseX_mdio ge_1000baseX_mdio_ (
	.reset(reset),
	.mdc(mdc),
	.mdio(mdio),
	.data_rd(data_rd),
	.mdio_oe(mdio_oe),
	.data_wr(data_wr),
	.strobe_wr(strobe_wr),
	.mdio_out(mdio_out),
	.data_addr(data_addr));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ge_1000baseX_mdio/ge_1000baseX_mdio.vcd");
		$dumpvars(0, ge_1000baseX_mdio_bench.ge_1000baseX_mdio_);
		mdc = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 mdc = ~mdc;
	end

	always begin
		#24;
		mdio = $random;
		data_rd = $random;
		#26;
	end

endmodule