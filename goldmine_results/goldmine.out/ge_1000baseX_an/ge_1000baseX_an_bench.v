`timescale 1ns/1ps

module ge_1000baseX_an_bench();

reg ck;
reg reset;
reg mr_loopback;
reg [15:0] mr_np_tx;
reg [15:0] rx_config;
reg rx_config_set;
reg ability_match;
reg [2:0] rudi;
reg consistency_match;
reg mr_an_enable;
reg mr_restart_an;
reg [15:0] mr_adv_ability;
reg sync_status;
reg idle_match;
reg signal_detect;
reg startup_enable;
reg mr_main_reset;
reg acknowledge_match;

wire [15:0] tx_config;
wire [2:0] xmit;
wire [15:0] mr_lp_np_rx;
wire mr_page_rx;
wire mr_an_complete;
wire [15:0] mr_lp_adv_ability;

ge_1000baseX_an ge_1000baseX_an_ (
	.ck(ck),
	.reset(reset),
	.mr_loopback(mr_loopback),
	.mr_np_tx(mr_np_tx),
	.rx_config(rx_config),
	.rx_config_set(rx_config_set),
	.ability_match(ability_match),
	.rudi(rudi),
	.consistency_match(consistency_match),
	.mr_an_enable(mr_an_enable),
	.mr_restart_an(mr_restart_an),
	.mr_adv_ability(mr_adv_ability),
	.sync_status(sync_status),
	.idle_match(idle_match),
	.signal_detect(signal_detect),
	.startup_enable(startup_enable),
	.mr_main_reset(mr_main_reset),
	.acknowledge_match(acknowledge_match),
	.tx_config(tx_config),
	.xmit(xmit),
	.mr_lp_np_rx(mr_lp_np_rx),
	.mr_page_rx(mr_page_rx),
	.mr_an_complete(mr_an_complete),
	.mr_lp_adv_ability(mr_lp_adv_ability));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ge_1000baseX_an/ge_1000baseX_an.vcd");
		$dumpvars(0, ge_1000baseX_an_bench.ge_1000baseX_an_);
		ck = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 ck = ~ck;
	end

	always begin
		#24;
		mr_loopback = $random;
		mr_np_tx = $random;
		rx_config = $random;
		rx_config_set = $random;
		ability_match = $random;
		rudi = $random;
		consistency_match = $random;
		mr_an_enable = $random;
		mr_restart_an = $random;
		mr_adv_ability = $random;
		sync_status = $random;
		idle_match = $random;
		signal_detect = $random;
		startup_enable = $random;
		mr_main_reset = $random;
		acknowledge_match = $random;
		#26;
	end

endmodule