`timescale 1ns/1ps

module User_int_sim_bench();

reg Reset;
reg Rx_mac_eop;
reg Tx_mac_wa;
reg [1:0] Rx_mac_BE;
reg Rx_mac_ra;
reg Rx_mac_sop;
reg CPU_init_end;
reg Clk_user;
reg Rx_mac_pa;
reg [31:0] Rx_mac_data;

wire Tx_mac_wr;
wire Rx_mac_rd;
wire [31:0] Tx_mac_data;
wire Tx_mac_sop;
wire Tx_mac_eop;
wire [1:0] Tx_mac_BE;

User_int_sim User_int_sim_ (
	.Reset(Reset),
	.Rx_mac_eop(Rx_mac_eop),
	.Tx_mac_wa(Tx_mac_wa),
	.Rx_mac_BE(Rx_mac_BE),
	.Rx_mac_ra(Rx_mac_ra),
	.Rx_mac_sop(Rx_mac_sop),
	.CPU_init_end(CPU_init_end),
	.Clk_user(Clk_user),
	.Rx_mac_pa(Rx_mac_pa),
	.Rx_mac_data(Rx_mac_data),
	.Tx_mac_wr(Tx_mac_wr),
	.Rx_mac_rd(Rx_mac_rd),
	.Tx_mac_data(Tx_mac_data),
	.Tx_mac_sop(Tx_mac_sop),
	.Tx_mac_eop(Tx_mac_eop),
	.Tx_mac_BE(Tx_mac_BE));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/User_int_sim/User_int_sim.vcd");
		$dumpvars(0, User_int_sim_bench.User_int_sim_);
		Clk_user = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk_user = ~Clk_user;
	end

	always begin
		#24;
		Rx_mac_eop = $random;
		Tx_mac_wa = $random;
		Rx_mac_BE = $random;
		Rx_mac_ra = $random;
		Rx_mac_sop = $random;
		CPU_init_end = $random;
		Rx_mac_pa = $random;
		Rx_mac_data = $random;
		#26;
	end

endmodule