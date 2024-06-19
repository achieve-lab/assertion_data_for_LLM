`timescale 1ns/1ps

module ge_1000baseX_rx_bench();

reg ck;
reg reset;
reg [2:0] xmit;
reg carrier_detect;
reg [7:0] ebi_rxd;
reg mr_main_reset;
reg ebi_K;
reg sync_status;
reg rx_even;
reg signal_detect;

wire gmii_rx_er;
wire [15:0] rx_config;
wire rx_config_set;
wire ability_match;
wire [2:0] rudi;
wire [7:0] gmii_rxd;
wire consistency_match;
wire rx_frame_pulse;
wire gmii_rx_dv;
wire idle_match;
wire receiving;
wire acknowledge_match;

ge_1000baseX_rx ge_1000baseX_rx_ (
	.ck(ck),
	.reset(reset),
	.xmit(xmit),
	.carrier_detect(carrier_detect),
	.ebi_rxd(ebi_rxd),
	.mr_main_reset(mr_main_reset),
	.ebi_K(ebi_K),
	.sync_status(sync_status),
	.rx_even(rx_even),
	.signal_detect(signal_detect),
	.gmii_rx_er(gmii_rx_er),
	.rx_config(rx_config),
	.rx_config_set(rx_config_set),
	.ability_match(ability_match),
	.rudi(rudi),
	.gmii_rxd(gmii_rxd),
	.consistency_match(consistency_match),
	.rx_frame_pulse(rx_frame_pulse),
	.gmii_rx_dv(gmii_rx_dv),
	.idle_match(idle_match),
	.receiving(receiving),
	.acknowledge_match(acknowledge_match));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ge_1000baseX_rx/ge_1000baseX_rx.vcd");
		$dumpvars(0, ge_1000baseX_rx_bench.ge_1000baseX_rx_);
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
		xmit = $random;
		carrier_detect = $random;
		ebi_rxd = $random;
		mr_main_reset = $random;
		ebi_K = $random;
		sync_status = $random;
		rx_even = $random;
		signal_detect = $random;
		#26;
	end

endmodule