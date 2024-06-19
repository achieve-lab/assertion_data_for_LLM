`timescale 1ns/1ps

module apb_bench();

reg [31:0] PWDATA;
reg PWRITE;
reg PSELx;
reg RX_EMPTY;
reg PCLK;
reg PENABLE;
reg [31:0] PADDR;
reg [31:0] READ_DATA_ON_RX;
reg PRESETn;
reg ERROR;
reg TX_EMPTY;

wire PREADY;
wire [31:0] WRITE_DATA_ON_TX;
wire [31:0] PRDATA;
wire INT_RX;
wire [13:0] INTERNAL_I2C_REGISTER_TIMEOUT;
wire RD_ENA;
wire WR_ENA;
wire [13:0] INTERNAL_I2C_REGISTER_CONFIG;
wire PSLVERR;
wire INT_TX;

apb apb_ (
	.PWDATA(PWDATA),
	.PWRITE(PWRITE),
	.PSELx(PSELx),
	.RX_EMPTY(RX_EMPTY),
	.PCLK(PCLK),
	.PENABLE(PENABLE),
	.PADDR(PADDR),
	.READ_DATA_ON_RX(READ_DATA_ON_RX),
	.PRESETn(PRESETn),
	.ERROR(ERROR),
	.TX_EMPTY(TX_EMPTY),
	.PREADY(PREADY),
	.WRITE_DATA_ON_TX(WRITE_DATA_ON_TX),
	.PRDATA(PRDATA),
	.INT_RX(INT_RX),
	.INTERNAL_I2C_REGISTER_TIMEOUT(INTERNAL_I2C_REGISTER_TIMEOUT),
	.RD_ENA(RD_ENA),
	.WR_ENA(WR_ENA),
	.INTERNAL_I2C_REGISTER_CONFIG(INTERNAL_I2C_REGISTER_CONFIG),
	.PSLVERR(PSLVERR),
	.INT_TX(INT_TX));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/apb/apb.vcd");
		$dumpvars(0, apb_bench.apb_);
		PCLK = 1;
		PRESETn = 1;
		#26;
		PRESETn = 0;
		#50000 $finish;
	end

	always begin
		#25 PCLK = ~PCLK;
	end

	always begin
		#24;
		PWDATA = $random;
		PWRITE = $random;
		PSELx = $random;
		RX_EMPTY = $random;
		PENABLE = $random;
		PADDR = $random;
		READ_DATA_ON_RX = $random;
		ERROR = $random;
		TX_EMPTY = $random;
		#26;
	end

endmodule