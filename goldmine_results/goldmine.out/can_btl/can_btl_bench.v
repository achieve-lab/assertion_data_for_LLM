`timescale 1ns/1ps

module can_btl_bench();

reg transmitter;
reg rx_inter;
reg tx;
reg clk;
reg transmitting;
reg rx;
reg go_rx_inter;
reg [2:0] time_segment2;
reg go_error_frame;
reg [3:0] time_segment1;
reg rst;
reg go_tx;
reg send_ack;
reg go_overload_frame;
reg triple_sampling;
reg rx_idle;
reg [1:0] sync_jump_width;
reg tx_next;
reg node_error_passive;
reg [5:0] baud_r_presc;

wire sample_point;
wire sampled_bit_q;
wire sampled_bit;
wire hard_sync;
wire tx_point;

can_btl can_btl_ (
	.transmitter(transmitter),
	.rx_inter(rx_inter),
	.tx(tx),
	.clk(clk),
	.transmitting(transmitting),
	.rx(rx),
	.go_rx_inter(go_rx_inter),
	.time_segment2(time_segment2),
	.go_error_frame(go_error_frame),
	.time_segment1(time_segment1),
	.rst(rst),
	.go_tx(go_tx),
	.send_ack(send_ack),
	.go_overload_frame(go_overload_frame),
	.triple_sampling(triple_sampling),
	.rx_idle(rx_idle),
	.sync_jump_width(sync_jump_width),
	.tx_next(tx_next),
	.node_error_passive(node_error_passive),
	.baud_r_presc(baud_r_presc),
	.sample_point(sample_point),
	.sampled_bit_q(sampled_bit_q),
	.sampled_bit(sampled_bit),
	.hard_sync(hard_sync),
	.tx_point(tx_point));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_btl/can_btl.vcd");
		$dumpvars(0, can_btl_bench.can_btl_);
		clk = 1;
		rst = 1;
		#26;
		rst = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		transmitter = $random;
		rx_inter = $random;
		tx = $random;
		transmitting = $random;
		rx = $random;
		go_rx_inter = $random;
		time_segment2 = $random;
		go_error_frame = $random;
		time_segment1 = $random;
		go_tx = $random;
		send_ack = $random;
		go_overload_frame = $random;
		triple_sampling = $random;
		rx_idle = $random;
		sync_jump_width = $random;
		tx_next = $random;
		node_error_passive = $random;
		baud_r_presc = $random;
		#26;
	end

endmodule