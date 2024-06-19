`timescale 1ns/1ps

module rxStateMachine_bench();

reg reset;
reg recv_enable;
reg get_terminator;
reg length_error;
reg get_error_code;
reg crc_check_invalid;
reg crc_check_valid;
reg get_sfd;
reg rxclk;
reg local_invalid;
reg check_reset;

wire receiving_d1;
wire start_lt;
wire wait_crc_check;
wire good_frame_get;
wire receiving;
wire start_da;
wire bad_frame_get;

rxStateMachine rxStateMachine_ (
	.reset(reset),
	.recv_enable(recv_enable),
	.get_terminator(get_terminator),
	.length_error(length_error),
	.get_error_code(get_error_code),
	.crc_check_invalid(crc_check_invalid),
	.crc_check_valid(crc_check_valid),
	.get_sfd(get_sfd),
	.rxclk(rxclk),
	.local_invalid(local_invalid),
	.check_reset(check_reset),
	.receiving_d1(receiving_d1),
	.start_lt(start_lt),
	.wait_crc_check(wait_crc_check),
	.good_frame_get(good_frame_get),
	.receiving(receiving),
	.start_da(start_da),
	.bad_frame_get(bad_frame_get));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxStateMachine/rxStateMachine.vcd");
		$dumpvars(0, rxStateMachine_bench.rxStateMachine_);
		rxclk = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 rxclk = ~rxclk;
	end

	always begin
		#24;
		recv_enable = $random;
		get_terminator = $random;
		length_error = $random;
		get_error_code = $random;
		crc_check_invalid = $random;
		crc_check_valid = $random;
		get_sfd = $random;
		local_invalid = $random;
		check_reset = $random;
		#26;
	end

endmodule