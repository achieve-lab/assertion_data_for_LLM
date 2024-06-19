`timescale 1ns/1ps

module tcLoad_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [3:0] tcAddr;
reg [7:0] ttIn;
reg [7:0] cdIn;
reg [7:0] cuIn;
reg [7:0] dnIn;

wire [7:0] tcLoadOut;

tcLoad tcLoad_ (
	.tcAddr(tcAddr),
	.ttIn(ttIn),
	.cdIn(cdIn),
	.cuIn(cuIn),
	.dnIn(dnIn),
	.tcLoadOut(tcLoadOut));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/tcLoad/tcLoad.vcd");
		$dumpvars(0, tcLoad_bench);
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
		tcAddr = $random;
		ttIn = $random;
		cdIn = $random;
		cuIn = $random;
		dnIn = $random;
		#26;
	end

endmodule