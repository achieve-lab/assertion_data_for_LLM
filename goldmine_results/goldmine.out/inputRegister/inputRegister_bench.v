`timescale 1ns/1ps

module inputRegister_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [127:0] inputs;
reg [6:0] inputReadAddr;

wire inputReadOut;

inputRegister inputRegister_ (
	.inputs(inputs),
	.inputReadAddr(inputReadAddr),
	.inputReadOut(inputReadOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/inputRegister/inputRegister.vcd");
		$dumpvars(0, inputRegister_bench);
		DEFAULT_CLOCK = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 DEFAULT_CLOCK = ~DEFAULT_CLOCK;
	end

	always begin
		#24;
		inputs = $random;
		inputReadAddr = $random;
		#26;
	end

endmodule