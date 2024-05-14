`timescale 1ns/1ps

module ge_1000baseX_sync_bench();

reg ck;
reg reset;
reg loopback;
reg decoder_coding_err;
reg ebi_K;
reg decoder_disparity_err;
reg startup_enable;
reg [7:0] ebi_rxd;
reg signal_detect;

wire ebi_K_out;
wire sync_status;
wire [7:0] ebi_rxd_out;
wire rx_even;

ge_1000baseX_sync ge_1000baseX_sync_ (
	.ck(ck),
	.reset(reset),
	.loopback(loopback),
	.decoder_coding_err(decoder_coding_err),
	.ebi_K(ebi_K),
	.decoder_disparity_err(decoder_disparity_err),
	.startup_enable(startup_enable),
	.ebi_rxd(ebi_rxd),
	.signal_detect(signal_detect),
	.ebi_K_out(ebi_K_out),
	.sync_status(sync_status),
	.ebi_rxd_out(ebi_rxd_out),
	.rx_even(rx_even));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ge_1000baseX_sync/ge_1000baseX_sync.vcd");
		$dumpvars(0, ge_1000baseX_sync_bench.ge_1000baseX_sync_);
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
		loopback = $random;
		decoder_coding_err = $random;
		ebi_K = $random;
		decoder_disparity_err = $random;
		startup_enable = $random;
		ebi_rxd = $random;
		signal_detect = $random;
		#26;
	end

endmodule