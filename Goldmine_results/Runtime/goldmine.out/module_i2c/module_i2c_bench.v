`timescale 1ns/1ps

module module_i2c_bench();

reg PCLK;
reg fifo_tx_f_full;
reg [13:0] TIMEOUT_TX;
reg fifo_rx_f_full;
reg PRESETn;
reg fifo_rx_f_empty;
reg [13:0] DATA_CONFIG_REG;
reg fifo_tx_f_empty;
reg [31:0] fifo_tx_data_out;

wire fifo_tx_rd_en;
wire [31:0] fifo_rx_data_in;
wire ENABLE_SDA;
wire ERROR;
wire ENABLE_SCL;
wire RX_EMPTY;
wire fifo_rx_wr_en;
wire TX_EMPTY;

module_i2c module_i2c_ (
	.PCLK(PCLK),
	.fifo_tx_f_full(fifo_tx_f_full),
	.TIMEOUT_TX(TIMEOUT_TX),
	.fifo_rx_f_full(fifo_rx_f_full),
	.PRESETn(PRESETn),
	.fifo_rx_f_empty(fifo_rx_f_empty),
	.DATA_CONFIG_REG(DATA_CONFIG_REG),
	.fifo_tx_f_empty(fifo_tx_f_empty),
	.fifo_tx_data_out(fifo_tx_data_out),
	.fifo_tx_rd_en(fifo_tx_rd_en),
	.fifo_rx_data_in(fifo_rx_data_in),
	.ENABLE_SDA(ENABLE_SDA),
	.ERROR(ERROR),
	.ENABLE_SCL(ENABLE_SCL),
	.RX_EMPTY(RX_EMPTY),
	.fifo_rx_wr_en(fifo_rx_wr_en),
	.TX_EMPTY(TX_EMPTY));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/module_i2c/module_i2c.vcd");
		$dumpvars(0, module_i2c_bench.module_i2c_);
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
		fifo_tx_f_full = $random;
		TIMEOUT_TX = $random;
		fifo_rx_f_full = $random;
		fifo_rx_f_empty = $random;
		DATA_CONFIG_REG = $random;
		fifo_tx_f_empty = $random;
		fifo_tx_data_out = $random;
		#26;
	end

endmodule