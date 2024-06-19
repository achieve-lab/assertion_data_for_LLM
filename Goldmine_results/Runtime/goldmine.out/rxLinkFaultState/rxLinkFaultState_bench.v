`timescale 1ns/1ps

module rxLinkFaultState_bench();

reg reset;
reg rxclk;
reg local_fault;
reg remote_fault;

wire [1:0] link_fault;

rxLinkFaultState rxLinkFaultState_ (
	.reset(reset),
	.rxclk(rxclk),
	.local_fault(local_fault),
	.remote_fault(remote_fault),
	.link_fault(link_fault));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxLinkFaultState/rxLinkFaultState.vcd");
		$dumpvars(0, rxLinkFaultState_bench.rxLinkFaultState_);
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
		local_fault = $random;
		remote_fault = $random;
		#26;
	end

endmodule