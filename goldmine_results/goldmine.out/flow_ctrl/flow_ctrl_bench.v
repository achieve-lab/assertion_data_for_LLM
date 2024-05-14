`timescale 1ns/1ps

module flow_ctrl_bench();

reg Reset;
reg tx_pause_en;
reg xon_cpu;
reg pause_quanta_sub;
reg xoff_gen_complete;
reg xoff_cpu;
reg Clk;
reg xon_gen_complete;
reg [15:0] pause_quanta;
reg pause_quanta_val;

wire pause_apply;
wire xoff_gen;
wire xon_gen;

flow_ctrl flow_ctrl_ (
	.Reset(Reset),
	.tx_pause_en(tx_pause_en),
	.xon_cpu(xon_cpu),
	.pause_quanta_sub(pause_quanta_sub),
	.xoff_gen_complete(xoff_gen_complete),
	.xoff_cpu(xoff_cpu),
	.Clk(Clk),
	.xon_gen_complete(xon_gen_complete),
	.pause_quanta(pause_quanta),
	.pause_quanta_val(pause_quanta_val),
	.pause_apply(pause_apply),
	.xoff_gen(xoff_gen),
	.xon_gen(xon_gen));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/flow_ctrl/flow_ctrl.vcd");
		$dumpvars(0, flow_ctrl_bench.flow_ctrl_);
		Clk = 1;
		Reset = 1;
		#26;
		Reset = 0;
		#50000 $finish;
	end

	always begin
		#25 Clk = ~Clk;
	end

	always begin
		#24;
		tx_pause_en = $random;
		xon_cpu = $random;
		pause_quanta_sub = $random;
		xoff_gen_complete = $random;
		xoff_cpu = $random;
		xon_gen_complete = $random;
		pause_quanta = $random;
		pause_quanta_val = $random;
		#26;
	end

endmodule