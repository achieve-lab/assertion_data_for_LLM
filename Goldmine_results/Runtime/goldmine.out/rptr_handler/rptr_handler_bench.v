`timescale 1ns/1ps

module rptr_handler_bench();

reg r_en;
reg [3:0] g_wptr_sync;
reg rrst_n;
reg rclk;

wire [3:0] b_rptr;
wire [3:0] g_rptr;
wire empty;

rptr_handler rptr_handler_ (
	.r_en(r_en),
	.g_wptr_sync(g_wptr_sync),
	.rrst_n(rrst_n),
	.rclk(rclk),
	.b_rptr(b_rptr),
	.g_rptr(g_rptr),
	.empty(empty));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rptr_handler/rptr_handler.vcd");
		$dumpvars(0, rptr_handler_bench.rptr_handler_);
		rclk = 1;
		rrst_n = 1;
		#26;
		rrst_n = 0;
		#500000 $finish;
	end

	always begin
		#25 rclk = ~rclk;
	end

	always begin
		#24;
		r_en = $random;
		g_wptr_sync = $random;
		#26;
	end

endmodule