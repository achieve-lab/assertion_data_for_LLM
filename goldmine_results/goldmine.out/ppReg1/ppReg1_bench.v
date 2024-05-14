`timescale 1ns/1ps

module ppReg1_bench();

reg DEFAULT_RESET;
reg [4:0] opcodeIn;
reg [9:0] fieldIn;
reg clk;

wire [9:0] fieldOut;
wire [4:0] opcodeOut;

ppReg1 ppReg1_ (
	.opcodeIn(opcodeIn),
	.fieldIn(fieldIn),
	.clk(clk),
	.fieldOut(fieldOut),
	.opcodeOut(opcodeOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ppReg1/ppReg1.vcd");
		$dumpvars(0, ppReg1_bench.ppReg1_);
		clk = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		opcodeIn = $random;
		fieldIn = $random;
		#26;
	end

endmodule