`timescale 1ns/1ps

module fifo_mem_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg r_en;
reg [3:0] b_rptr;
reg full;
reg wclk;
reg rclk;
reg w_en;
reg [3:0] b_wptr;
reg [7:0] data_in;
reg empty;

wire [7:0] data_out;

fifo_mem fifo_mem_ (
	.r_en(r_en),
	.b_rptr(b_rptr),
	.full(full),
	.wclk(wclk),
	.rclk(rclk),
	.w_en(w_en),
	.b_wptr(b_wptr),
	.data_in(data_in),
	.empty(empty),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fifo_mem/fifo_mem.vcd");
		$dumpvars(0, fifo_mem_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		r_en = $random;
		b_rptr = $random;
		full = $random;
		wclk = $random;
		rclk = $random;
		w_en = $random;
		b_wptr = $random;
		data_in = $random;
		empty = $random;
		#26;
	end

endmodule