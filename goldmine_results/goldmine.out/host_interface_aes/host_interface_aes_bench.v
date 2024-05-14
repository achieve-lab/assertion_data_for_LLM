`timescale 1ns/1ps

module host_interface_aes_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [12:0] PWDATA;
reg [31:0] col_bus;
reg PWRITE;
reg ccf_set;
reg PSEL;
reg [31:0] key_bus;
reg PCLK;
reg PENABLE;
reg [3:0] PADDR;
reg PRESETn;
reg [31:0] iv_bus;

wire dma_req_rd;
wire col_rd_en;
wire [31:0] PRDATA;
wire col_wr_en;
wire [1:0] data_type;
wire [3:0] key_en;
wire start_core;
wire disable_core;
wire [3:0] iv_en;
wire [1:0] chmod;
wire dma_req_wr;
wire [1:0] col_addr;
wire [1:0] mode;
wire [3:0] iv_sel;
wire int_err;
wire int_ccf;
wire first_block;
wire [1:0] key_sel;

host_interface_aes host_interface_aes_ (
	.PWDATA(PWDATA),
	.col_bus(col_bus),
	.PWRITE(PWRITE),
	.ccf_set(ccf_set),
	.PSEL(PSEL),
	.key_bus(key_bus),
	.PCLK(PCLK),
	.PENABLE(PENABLE),
	.PADDR(PADDR),
	.PRESETn(PRESETn),
	.iv_bus(iv_bus),
	.dma_req_rd(dma_req_rd),
	.col_rd_en(col_rd_en),
	.PRDATA(PRDATA),
	.col_wr_en(col_wr_en),
	.data_type(data_type),
	.key_en(key_en),
	.start_core(start_core),
	.disable_core(disable_core),
	.iv_en(iv_en),
	.chmod(chmod),
	.dma_req_wr(dma_req_wr),
	.col_addr(col_addr),
	.mode(mode),
	.iv_sel(iv_sel),
	.int_err(int_err),
	.int_ccf(int_ccf),
	.first_block(first_block),
	.key_sel(key_sel));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/host_interface_aes/host_interface_aes.vcd");
		$dumpvars(0, host_interface_aes_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		PWDATA = $random;
		col_bus = $random;
		PWRITE = $random;
		ccf_set = $random;
		PSEL = $random;
		key_bus = $random;
		PCLK = $random;
		PENABLE = $random;
		PADDR = $random;
		PRESETn = $random;
		iv_bus = $random;
		#26;
	end

endmodule