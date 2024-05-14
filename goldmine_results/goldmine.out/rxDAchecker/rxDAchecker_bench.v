`timescale 1ns/1ps

module rxDAchecker_bench();

reg reset;
reg rxclk;
reg [47:0] MAC_Addr;
reg [47:0] da_addr;

wire local_invalid;
wire multi_valid;
wire broad_valid;

rxDAchecker rxDAchecker_ (
	.reset(reset),
	.rxclk(rxclk),
	.MAC_Addr(MAC_Addr),
	.da_addr(da_addr),
	.local_invalid(local_invalid),
	.multi_valid(multi_valid),
	.broad_valid(broad_valid));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/rxDAchecker/rxDAchecker.vcd");
		$dumpvars(0, rxDAchecker_bench.rxDAchecker_);
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
		MAC_Addr = $random;
		da_addr = $random;
		#26;
	end

endmodule