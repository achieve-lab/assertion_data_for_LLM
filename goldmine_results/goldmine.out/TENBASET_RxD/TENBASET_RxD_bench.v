`timescale 1ns/1ps

module TENBASET_RxD_bench();

reg DEFAULT_RESET;
reg clk48;
reg manchester_data_in;

wire new_byte_available;
wire [7:0] RcvData;
wire RcvStop;
wire RcvStart;
wire [9:0] sync2;
wire end_of_Ethernet_frame;
wire new_bit_available;

TENBASET_RxD TENBASET_RxD_ (
	.clk48(clk48),
	.manchester_data_in(manchester_data_in),
	.new_byte_available(new_byte_available),
	.RcvData(RcvData),
	.RcvStop(RcvStop),
	.RcvStart(RcvStart),
	.sync2(sync2),
	.end_of_Ethernet_frame(end_of_Ethernet_frame),
	.new_bit_available(new_bit_available));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/TENBASET_RxD/TENBASET_RxD.vcd");
		$dumpvars(0, TENBASET_RxD_bench.TENBASET_RxD_);
		clk48 = 1;
		DEFAULT_RESET = 1;
		#26;
		DEFAULT_RESET = 0;
		#500000 $finish;
	end

	always begin
		#25 clk48 = ~clk48;
	end

	always begin
		#24;
		manchester_data_in = $random;
		#26;
	end

endmodule