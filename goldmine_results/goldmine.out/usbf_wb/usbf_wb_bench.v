`timescale 1ns/1ps

module usbf_wb_bench();

reg wb_we_i;
reg [31:0] wb_data_i;
reg [17:0] wb_addr_i;
reg phy_clk;
reg [31:0] ma_din;
reg wb_stb_i;
reg wb_cyc_i;
reg [31:0] rf_din;
reg rst;
reg wb_clk;
reg ma_ack;

wire ma_we;
wire [17:0] ma_adr;
wire wb_ack_o;
wire [31:0] wb_data_o;
wire [31:0] ma_dout;
wire [31:0] rf_dout;
wire ma_req;
wire rf_re;
wire rf_we;

usbf_wb usbf_wb_ (
	.wb_we_i(wb_we_i),
	.wb_data_i(wb_data_i),
	.wb_addr_i(wb_addr_i),
	.phy_clk(phy_clk),
	.ma_din(ma_din),
	.wb_stb_i(wb_stb_i),
	.wb_cyc_i(wb_cyc_i),
	.rf_din(rf_din),
	.rst(rst),
	.wb_clk(wb_clk),
	.ma_ack(ma_ack),
	.ma_we(ma_we),
	.ma_adr(ma_adr),
	.wb_ack_o(wb_ack_o),
	.wb_data_o(wb_data_o),
	.ma_dout(ma_dout),
	.rf_dout(rf_dout),
	.ma_req(ma_req),
	.rf_re(rf_re),
	.rf_we(rf_we));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/usbf_wb/usbf_wb.vcd");
		$dumpvars(0, usbf_wb_bench.usbf_wb_);
		wb_clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 wb_clk = ~wb_clk;
	end

	always begin
		#24;
		wb_we_i = $random;
		wb_data_i = $random;
		wb_addr_i = $random;
		phy_clk = $random;
		ma_din = $random;
		wb_stb_i = $random;
		wb_cyc_i = $random;
		rf_din = $random;
		ma_ack = $random;
		#26;
	end

endmodule