`timescale 1ns/1ps

module host_interface_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [1:0] HTRANS;
reg HREADY;
reg reset_pending;
reg [2:0] HSIZE;
reg [31:0] crc_poly_out;
reg [31:0] crc_out;
reg [31:0] HWDATA;
reg [31:0] HADDR;
reg read_wait;
reg buffer_full;
reg HCLK;
reg [31:0] crc_init_out;
reg HWRITE;
reg HSElx;
reg HRESETn;
reg [7:0] crc_idr_out;

wire rev_out_type;
wire HREADYOUT;
wire crc_init_en;
wire [31:0] bus_wr;
wire [1:0] crc_poly_size;
wire [31:0] HRDATA;
wire crc_idr_en;
wire reset_chain;
wire HRESP;
wire buffer_write_en;
wire crc_poly_en;
wire [1:0] rev_in_type;
wire [1:0] bus_size;

host_interface host_interface_ (
	.HTRANS(HTRANS),
	.HREADY(HREADY),
	.reset_pending(reset_pending),
	.HSIZE(HSIZE),
	.crc_poly_out(crc_poly_out),
	.crc_out(crc_out),
	.HWDATA(HWDATA),
	.HADDR(HADDR),
	.read_wait(read_wait),
	.buffer_full(buffer_full),
	.HCLK(HCLK),
	.crc_init_out(crc_init_out),
	.HWRITE(HWRITE),
	.HSElx(HSElx),
	.HRESETn(HRESETn),
	.crc_idr_out(crc_idr_out),
	.rev_out_type(rev_out_type),
	.HREADYOUT(HREADYOUT),
	.crc_init_en(crc_init_en),
	.bus_wr(bus_wr),
	.crc_poly_size(crc_poly_size),
	.HRDATA(HRDATA),
	.crc_idr_en(crc_idr_en),
	.reset_chain(reset_chain),
	.HRESP(HRESP),
	.buffer_write_en(buffer_write_en),
	.crc_poly_en(crc_poly_en),
	.rev_in_type(rev_in_type),
	.bus_size(bus_size));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/host_interface/host_interface.vcd");
		$dumpvars(0, host_interface_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		HTRANS = $random;
		HREADY = $random;
		reset_pending = $random;
		HSIZE = $random;
		crc_poly_out = $random;
		crc_out = $random;
		HWDATA = $random;
		HADDR = $random;
		read_wait = $random;
		buffer_full = $random;
		HCLK = $random;
		crc_init_out = $random;
		HWRITE = $random;
		HSElx = $random;
		HRESETn = $random;
		crc_idr_out = $random;
		#26;
	end

endmodule