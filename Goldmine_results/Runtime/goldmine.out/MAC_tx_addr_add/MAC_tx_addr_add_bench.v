`timescale 1ns/1ps

module MAC_tx_addr_add_bench();

reg Reset;
reg [7:0] MAC_add_prom_data;
reg MAC_tx_addr_rd;
reg [2:0] MAC_add_prom_add;
reg Clk;
reg MAC_tx_addr_init;
reg MAC_add_prom_wr;

wire [7:0] MAC_tx_addr_data;

MAC_tx_addr_add MAC_tx_addr_add_ (
	.Reset(Reset),
	.MAC_add_prom_data(MAC_add_prom_data),
	.MAC_tx_addr_rd(MAC_tx_addr_rd),
	.MAC_add_prom_add(MAC_add_prom_add),
	.Clk(Clk),
	.MAC_tx_addr_init(MAC_tx_addr_init),
	.MAC_add_prom_wr(MAC_add_prom_wr),
	.MAC_tx_addr_data(MAC_tx_addr_data));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/MAC_tx_addr_add/MAC_tx_addr_add.vcd");
		$dumpvars(0, MAC_tx_addr_add_bench.MAC_tx_addr_add_);
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
		MAC_add_prom_data = $random;
		MAC_tx_addr_rd = $random;
		MAC_add_prom_add = $random;
		MAC_tx_addr_init = $random;
		MAC_add_prom_wr = $random;
		#26;
	end

endmodule