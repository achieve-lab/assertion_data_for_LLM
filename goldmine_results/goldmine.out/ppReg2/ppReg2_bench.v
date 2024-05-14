`timescale 1ns/1ps

module ppReg2_bench();

reg DEFAULT_RESET;
reg [3:0] aluOpcodeIn;
reg byteRamRwIn;
reg entypeEnIn;
reg bitRamRwIn;
reg clk;
reg tcAccReadIn;
reg outputRwIn;
reg uartReadIn;
reg accEnIn;
reg bitRamEnIn;
reg uartWriteIn;
reg tcResetEnIn;
reg [3:0] op2MuxSelIn;
reg tcPresetEnIn;
reg [3:0] accMuxSelIn;
reg [9:0] fieldIn;
reg byteRamEnIn;
reg aluEnIn;

wire entypeEnOut;
wire byteRamEnOut;
wire aluEnOut;
wire tcPresetEnOut;
wire bitRamRwOut;
wire [3:0] aluOpcodeOut;
wire uartWriteOut;
wire accEnOut;
wire outputRwOut;
wire tcResetEnOut;
wire tcAccReadOut;
wire [9:0] fieldOut;
wire byteRamRwOut;
wire [3:0] accMuxSelOut;
wire bitRamEnOut;
wire [3:0] op2MuxSelOut;
wire uartReadOut;

ppReg2 ppReg2_ (
	.aluOpcodeIn(aluOpcodeIn),
	.byteRamRwIn(byteRamRwIn),
	.entypeEnIn(entypeEnIn),
	.bitRamRwIn(bitRamRwIn),
	.clk(clk),
	.tcAccReadIn(tcAccReadIn),
	.outputRwIn(outputRwIn),
	.uartReadIn(uartReadIn),
	.accEnIn(accEnIn),
	.bitRamEnIn(bitRamEnIn),
	.uartWriteIn(uartWriteIn),
	.tcResetEnIn(tcResetEnIn),
	.op2MuxSelIn(op2MuxSelIn),
	.tcPresetEnIn(tcPresetEnIn),
	.accMuxSelIn(accMuxSelIn),
	.fieldIn(fieldIn),
	.byteRamEnIn(byteRamEnIn),
	.aluEnIn(aluEnIn),
	.entypeEnOut(entypeEnOut),
	.byteRamEnOut(byteRamEnOut),
	.aluEnOut(aluEnOut),
	.tcPresetEnOut(tcPresetEnOut),
	.bitRamRwOut(bitRamRwOut),
	.aluOpcodeOut(aluOpcodeOut),
	.uartWriteOut(uartWriteOut),
	.accEnOut(accEnOut),
	.outputRwOut(outputRwOut),
	.tcResetEnOut(tcResetEnOut),
	.tcAccReadOut(tcAccReadOut),
	.fieldOut(fieldOut),
	.byteRamRwOut(byteRamRwOut),
	.accMuxSelOut(accMuxSelOut),
	.bitRamEnOut(bitRamEnOut),
	.op2MuxSelOut(op2MuxSelOut),
	.uartReadOut(uartReadOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/ppReg2/ppReg2.vcd");
		$dumpvars(0, ppReg2_bench.ppReg2_);
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
		aluOpcodeIn = $random;
		byteRamRwIn = $random;
		entypeEnIn = $random;
		bitRamRwIn = $random;
		tcAccReadIn = $random;
		outputRwIn = $random;
		uartReadIn = $random;
		accEnIn = $random;
		bitRamEnIn = $random;
		uartWriteIn = $random;
		tcResetEnIn = $random;
		op2MuxSelIn = $random;
		tcPresetEnIn = $random;
		accMuxSelIn = $random;
		fieldIn = $random;
		byteRamEnIn = $random;
		aluEnIn = $random;
		#26;
	end

endmodule