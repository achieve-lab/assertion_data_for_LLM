`timescale 1ns/1ps

module state_machine_bench();

reg rst_n;
reg clk;

wire [9:0] waddr;
wire [9:0] raddr_a;
wire [9:0] raddr_c;
wire [9:0] raddr_b;
wire [1:0] window_line_counter;
wire [9:0] window_column_counter;

state_machine state_machine_ (
	.rst_n(rst_n),
	.clk(clk),
	.waddr(waddr),
	.raddr_a(raddr_a),
	.raddr_c(raddr_c),
	.raddr_b(raddr_b),
	.window_line_counter(window_line_counter),
	.window_column_counter(window_column_counter));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/state_machine/state_machine.vcd");
		$dumpvars(0, state_machine_bench.state_machine_);
		clk = 1;
		rst_n = 1;
		#26;
		rst_n = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		#26;
	end

endmodule