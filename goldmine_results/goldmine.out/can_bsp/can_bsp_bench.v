`timescale 1ns/1ps

module can_bsp_bench();

reg reset_mode;
reg self_rx_request;
reg [7:0] acceptance_code_3;
reg listen_only_mode;
reg release_buffer;
reg tx_point;
reg tx_request;
reg [7:0] acceptance_mask_2;
reg abort_tx;
reg we_rx_err_cnt;
reg [7:0] tx_data_10;
reg [7:0] addr;
reg clk;
reg sample_point;
reg self_test_mode;
reg sampled_bit;
reg [7:0] tx_data_9;
reg [7:0] tx_data_8;
reg [7:0] tx_data_3;
reg [7:0] tx_data_2;
reg [7:0] tx_data_1;
reg [7:0] tx_data_0;
reg [7:0] tx_data_7;
reg [7:0] tx_data_6;
reg [7:0] tx_data_5;
reg [7:0] tx_data_4;
reg overload_request;
reg fifo_selected;
reg [7:0] acceptance_mask_0;
reg [7:0] acceptance_mask_1;
reg we_tx_err_cnt;
reg [7:0] acceptance_mask_3;
reg [7:0] error_warning_limit;
reg read_error_code_capture_reg;
reg [7:0] acceptance_code_2;
reg rst;
reg [7:0] acceptance_code_1;
reg [7:0] tx_data_12;
reg [7:0] tx_data_11;
reg [7:0] acceptance_code_0;
reg single_shot_transmission;
reg extended_mode;
reg acceptance_filter_mode;
reg [7:0] data_in;
reg hard_sync;
reg read_arbitration_lost_capture_reg;
reg sampled_bit_q;

wire transmit_status;
wire set_bus_error_irq;
wire node_error_passive;
wire transmitting;
wire send_ack;
wire [8:0] tx_err_cnt;
wire set_arbitration_lost_irq;
wire node_error_active;
wire tx_state_q;
wire not_first_bit_of_inter;
wire receive_status;
wire [7:0] error_capture_code;
wire [8:0] rx_err_cnt;
wire need_to_tx;
wire tx_next;
wire [7:0] data_out;
wire overrun;
wire transmitter;
wire [4:0] arbitration_lost_capture;
wire rx_inter;
wire tx;
wire set_reset_mode;
wire go_rx_inter;
wire go_overload_frame;
wire go_error_frame;
wire tx_successful;
wire go_tx;
wire bus_off_on;
wire error_status;
wire [6:0] rx_message_counter;
wire tx_state;
wire rx_idle;
wire overload_frame;
wire info_empty;
wire node_bus_off;

can_bsp can_bsp_ (
	.reset_mode(reset_mode),
	.self_rx_request(self_rx_request),
	.acceptance_code_3(acceptance_code_3),
	.listen_only_mode(listen_only_mode),
	.release_buffer(release_buffer),
	.tx_point(tx_point),
	.tx_request(tx_request),
	.acceptance_mask_2(acceptance_mask_2),
	.abort_tx(abort_tx),
	.we_rx_err_cnt(we_rx_err_cnt),
	.tx_data_10(tx_data_10),
	.addr(addr),
	.clk(clk),
	.sample_point(sample_point),
	.self_test_mode(self_test_mode),
	.sampled_bit(sampled_bit),
	.tx_data_9(tx_data_9),
	.tx_data_8(tx_data_8),
	.tx_data_3(tx_data_3),
	.tx_data_2(tx_data_2),
	.tx_data_1(tx_data_1),
	.tx_data_0(tx_data_0),
	.tx_data_7(tx_data_7),
	.tx_data_6(tx_data_6),
	.tx_data_5(tx_data_5),
	.tx_data_4(tx_data_4),
	.overload_request(overload_request),
	.fifo_selected(fifo_selected),
	.acceptance_mask_0(acceptance_mask_0),
	.acceptance_mask_1(acceptance_mask_1),
	.we_tx_err_cnt(we_tx_err_cnt),
	.acceptance_mask_3(acceptance_mask_3),
	.error_warning_limit(error_warning_limit),
	.read_error_code_capture_reg(read_error_code_capture_reg),
	.acceptance_code_2(acceptance_code_2),
	.rst(rst),
	.acceptance_code_1(acceptance_code_1),
	.tx_data_12(tx_data_12),
	.tx_data_11(tx_data_11),
	.acceptance_code_0(acceptance_code_0),
	.single_shot_transmission(single_shot_transmission),
	.extended_mode(extended_mode),
	.acceptance_filter_mode(acceptance_filter_mode),
	.data_in(data_in),
	.hard_sync(hard_sync),
	.read_arbitration_lost_capture_reg(read_arbitration_lost_capture_reg),
	.sampled_bit_q(sampled_bit_q),
	.transmit_status(transmit_status),
	.set_bus_error_irq(set_bus_error_irq),
	.node_error_passive(node_error_passive),
	.transmitting(transmitting),
	.send_ack(send_ack),
	.tx_err_cnt(tx_err_cnt),
	.set_arbitration_lost_irq(set_arbitration_lost_irq),
	.node_error_active(node_error_active),
	.tx_state_q(tx_state_q),
	.not_first_bit_of_inter(not_first_bit_of_inter),
	.receive_status(receive_status),
	.error_capture_code(error_capture_code),
	.rx_err_cnt(rx_err_cnt),
	.need_to_tx(need_to_tx),
	.tx_next(tx_next),
	.data_out(data_out),
	.overrun(overrun),
	.transmitter(transmitter),
	.arbitration_lost_capture(arbitration_lost_capture),
	.rx_inter(rx_inter),
	.tx(tx),
	.set_reset_mode(set_reset_mode),
	.go_rx_inter(go_rx_inter),
	.go_overload_frame(go_overload_frame),
	.go_error_frame(go_error_frame),
	.tx_successful(tx_successful),
	.go_tx(go_tx),
	.bus_off_on(bus_off_on),
	.error_status(error_status),
	.rx_message_counter(rx_message_counter),
	.tx_state(tx_state),
	.rx_idle(rx_idle),
	.overload_frame(overload_frame),
	.info_empty(info_empty),
	.node_bus_off(node_bus_off));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_bsp/can_bsp.vcd");
		$dumpvars(0, can_bsp_bench.can_bsp_);
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
		reset_mode = $random;
		self_rx_request = $random;
		acceptance_code_3 = $random;
		listen_only_mode = $random;
		release_buffer = $random;
		tx_point = $random;
		tx_request = $random;
		acceptance_mask_2 = $random;
		abort_tx = $random;
		we_rx_err_cnt = $random;
		tx_data_10 = $random;
		addr = $random;
		sample_point = $random;
		self_test_mode = $random;
		sampled_bit = $random;
		tx_data_9 = $random;
		tx_data_8 = $random;
		tx_data_3 = $random;
		tx_data_2 = $random;
		tx_data_1 = $random;
		tx_data_0 = $random;
		tx_data_7 = $random;
		tx_data_6 = $random;
		tx_data_5 = $random;
		tx_data_4 = $random;
		overload_request = $random;
		fifo_selected = $random;
		acceptance_mask_0 = $random;
		acceptance_mask_1 = $random;
		we_tx_err_cnt = $random;
		acceptance_mask_3 = $random;
		error_warning_limit = $random;
		read_error_code_capture_reg = $random;
		acceptance_code_2 = $random;
		acceptance_code_1 = $random;
		tx_data_12 = $random;
		tx_data_11 = $random;
		acceptance_code_0 = $random;
		single_shot_transmission = $random;
		extended_mode = $random;
		acceptance_filter_mode = $random;
		data_in = $random;
		hard_sync = $random;
		read_arbitration_lost_capture_reg = $random;
		sampled_bit_q = $random;
		#26;
	end

endmodule