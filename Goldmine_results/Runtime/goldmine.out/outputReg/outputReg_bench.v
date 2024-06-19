`timescale 1ns/1ps

module outputReg_bench();

reg DEFAULT_CLOCK;
reg reset;
reg outputRw;
reg [6:0] outputRwAddr;
reg outputWriteIn;

wire outputReadOut;
wire [127:0] outputs;

outputReg outputReg_ (
	.reset(reset),
	.outputRw(outputRw),
	.outputRwAddr(outputRwAddr),
	.outputWriteIn(outputWriteIn),
	.outputReadOut(outputReadOut),
	.outputs(outputs));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/outputReg/outputReg.vcd");
		$dumpvars(0, outputReg_bench);
		DEFAULT_CLOCK = 1;
		reset = 1;
		#26;
		reset = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		outputRw = $random;
		outputRwAddr = $random;
		outputWriteIn = $random;
		#26;
	end

endmodule