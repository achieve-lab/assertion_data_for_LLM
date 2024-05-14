`timescale 1ns/1ps

module mdio_bench();

reg reset;
reg [25:0] mdio_data_out;
reg [1:0] mdio_opcode;
reg mdio_out_valid;
reg mdio_i;
reg mgmt_clk;
reg [31:0] mgmt_config;

wire mdc;
wire [15:0] mdio_data_in;
wire mdio_t;
wire mdio_in_valid;
wire mdio_o;

mdio mdio_ (
	.reset(reset),
	.mdio_data_out(mdio_data_out),
	.mdio_opcode(mdio_opcode),
	.mdio_out_valid(mdio_out_valid),
	.mdio_i(mdio_i),
	.mgmt_clk(mgmt_clk),
	.mgmt_config(mgmt_config),
	.mdc(mdc),
	.mdio_data_in(mdio_data_in),
	.mdio_t(mdio_t),
	.mdio_in_valid(mdio_in_valid),
	.mdio_o(mdio_o));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mdio/mdio.vcd");
		$dumpvars(0, mdio_bench.mdio_);
		mgmt_clk = 1;
		reset = 1;
		#26;
		reset = 0;
		#500000 $finish;
	end

	always begin
		#25 mgmt_clk = ~mgmt_clk;
	end

	always begin
		#24;
		mdio_data_out = $random;
		mdio_opcode = $random;
		mdio_out_valid = $random;
		mdio_i = $random;
		mgmt_config = $random;
		#26;
	end

endmodule