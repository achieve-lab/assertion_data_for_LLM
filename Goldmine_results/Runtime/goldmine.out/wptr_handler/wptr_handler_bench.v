`timescale 1ns/1ps

module wptr_handler_bench();

reg w_en;
reg [3:0] g_rptr_sync;
reg wclk;
reg wrst_n;

wire [3:0] g_wptr;
wire [3:0] b_wptr;
wire full;

wptr_handler wptr_handler_ (
	.w_en(w_en),
	.g_rptr_sync(g_rptr_sync),
	.wclk(wclk),
	.wrst_n(wrst_n),
	.g_wptr(g_wptr),
	.b_wptr(b_wptr),
	.full(full));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/wptr_handler/wptr_handler.vcd");
		$dumpvars(0, wptr_handler_bench.wptr_handler_);
		wclk = 1;
		wrst_n = 1;
		#26;
		wrst_n = 0;
		#500000 $finish;
	end

	always begin
		#25 wclk = ~wclk;
	end

	always begin
		#24;
		w_en = $random;
		g_rptr_sync = $random;
		#26;
	end

endmodule