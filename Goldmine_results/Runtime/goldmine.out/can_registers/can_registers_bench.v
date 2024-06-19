`timescale 1ns/1ps

module can_registers_bench();

reg we;
reg set_bus_error_irq;
reg node_error_passive;
reg transmitting;
reg transmit_status;
reg set_arbitration_lost_irq;
reg cs;
reg tx_state_q;
reg receive_status;
reg [7:0] error_capture_code;
reg rst;
reg need_to_tx;
reg [7:0] rx_err_cnt;
reg overrun;
reg [7:0] tx_err_cnt;
reg [4:0] arbitration_lost_capture;
reg node_error_active;
reg [7:0] addr;
reg clk;
reg set_reset_mode;
reg sample_point;
reg [7:0] data_in;
reg tx_successful;
reg error_status;
reg [6:0] rx_message_counter;
reg tx_state;
reg overload_frame;
reg info_empty;
reg node_bus_off;

wire reset_mode;
wire read_error_code_capture_reg;
wire [7:0] acceptance_code_3;
wire listen_only_mode;
wire release_buffer;
wire [3:0] time_segment1;
wire tx_request;
wire abort_tx;
wire we_rx_err_cnt;
wire [7:0] data_out;
wire [7:0] tx_data_10;
wire self_test_mode;
wire overload_request;
wire [7:0] tx_data_9;
wire [7:0] tx_data_8;
wire [7:0] tx_data_3;
wire [7:0] tx_data_2;
wire [7:0] tx_data_1;
wire [7:0] tx_data_0;
wire [7:0] tx_data_7;
wire [7:0] tx_data_6;
wire [7:0] tx_data_5;
wire [7:0] tx_data_4;
wire clkout;
wire [7:0] tx_data_12;
wire irq_n;
wire [2:0] time_segment2;
wire [7:0] acceptance_mask_0;
wire [7:0] acceptance_mask_1;
wire we_tx_err_cnt;
wire [7:0] acceptance_mask_3;
wire [7:0] error_warning_limit;
wire self_rx_request;
wire [7:0] acceptance_code_2;
wire [1:0] sync_jump_width;
wire [7:0] acceptance_code_1;
wire [5:0] baud_r_presc;
wire clear_data_overrun;
wire [7:0] tx_data_11;
wire [7:0] acceptance_code_0;
wire single_shot_transmission;
wire extended_mode;
wire acceptance_filter_mode;
wire [7:0] acceptance_mask_2;
wire read_arbitration_lost_capture_reg;
wire triple_sampling;

can_registers can_registers_ (
	.we(we),
	.set_bus_error_irq(set_bus_error_irq),
	.node_error_passive(node_error_passive),
	.transmitting(transmitting),
	.transmit_status(transmit_status),
	.set_arbitration_lost_irq(set_arbitration_lost_irq),
	.cs(cs),
	.tx_state_q(tx_state_q),
	.receive_status(receive_status),
	.error_capture_code(error_capture_code),
	.rst(rst),
	.need_to_tx(need_to_tx),
	.rx_err_cnt(rx_err_cnt),
	.overrun(overrun),
	.tx_err_cnt(tx_err_cnt),
	.arbitration_lost_capture(arbitration_lost_capture),
	.node_error_active(node_error_active),
	.addr(addr),
	.clk(clk),
	.set_reset_mode(set_reset_mode),
	.sample_point(sample_point),
	.data_in(data_in),
	.tx_successful(tx_successful),
	.error_status(error_status),
	.rx_message_counter(rx_message_counter),
	.tx_state(tx_state),
	.overload_frame(overload_frame),
	.info_empty(info_empty),
	.node_bus_off(node_bus_off),
	.reset_mode(reset_mode),
	.read_error_code_capture_reg(read_error_code_capture_reg),
	.acceptance_code_3(acceptance_code_3),
	.listen_only_mode(listen_only_mode),
	.release_buffer(release_buffer),
	.time_segment1(time_segment1),
	.tx_request(tx_request),
	.abort_tx(abort_tx),
	.we_rx_err_cnt(we_rx_err_cnt),
	.data_out(data_out),
	.tx_data_10(tx_data_10),
	.self_test_mode(self_test_mode),
	.overload_request(overload_request),
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
	.clkout(clkout),
	.tx_data_12(tx_data_12),
	.irq_n(irq_n),
	.time_segment2(time_segment2),
	.acceptance_mask_0(acceptance_mask_0),
	.acceptance_mask_1(acceptance_mask_1),
	.we_tx_err_cnt(we_tx_err_cnt),
	.acceptance_mask_3(acceptance_mask_3),
	.error_warning_limit(error_warning_limit),
	.self_rx_request(self_rx_request),
	.acceptance_code_2(acceptance_code_2),
	.sync_jump_width(sync_jump_width),
	.acceptance_code_1(acceptance_code_1),
	.baud_r_presc(baud_r_presc),
	.clear_data_overrun(clear_data_overrun),
	.tx_data_11(tx_data_11),
	.acceptance_code_0(acceptance_code_0),
	.single_shot_transmission(single_shot_transmission),
	.extended_mode(extended_mode),
	.acceptance_filter_mode(acceptance_filter_mode),
	.acceptance_mask_2(acceptance_mask_2),
	.read_arbitration_lost_capture_reg(read_arbitration_lost_capture_reg),
	.triple_sampling(triple_sampling));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_registers/can_registers.vcd");
		$dumpvars(0, can_registers_bench.can_registers_);
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
		we = $random;
		set_bus_error_irq = $random;
		node_error_passive = $random;
		transmitting = $random;
		transmit_status = $random;
		set_arbitration_lost_irq = $random;
		cs = $random;
		tx_state_q = $random;
		receive_status = $random;
		error_capture_code = $random;
		need_to_tx = $random;
		rx_err_cnt = $random;
		overrun = $random;
		tx_err_cnt = $random;
		arbitration_lost_capture = $random;
		node_error_active = $random;
		addr = $random;
		set_reset_mode = $random;
		sample_point = $random;
		data_in = $random;
		tx_successful = $random;
		error_status = $random;
		rx_message_counter = $random;
		tx_state = $random;
		overload_frame = $random;
		info_empty = $random;
		node_bus_off = $random;
		#26;
	end

endmodule