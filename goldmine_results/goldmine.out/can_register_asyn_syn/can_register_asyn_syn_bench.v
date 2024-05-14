`timescale 1ns/1ps

module can_register_asyn_syn_bench();

reg rst;
reg we;
reg rst_sync;
reg [7:0] data_in;
reg clk;

wire [7:0] data_out;

can_register_asyn_syn can_register_asyn_syn_ (
	.rst(rst),
	.we(we),
	.rst_sync(rst_sync),
	.data_in(data_in),
	.clk(clk),
	.data_out(data_out));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/can_register_asyn_syn/can_register_asyn_syn.vcd");
		$dumpvars(0, can_register_asyn_syn_bench.can_register_asyn_syn_);
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
		rst_sync = $random;
		data_in = $random;
		#26;
	end

endmodule