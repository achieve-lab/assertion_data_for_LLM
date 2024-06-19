`timescale 1ns/1ps

module mmc_cmd_select_bench();

reg DEFAULT_CLOCK;
reg DEFAULT_RESET;
reg [7:0] bit;
reg [3:0] cmd;

wire data;
wire cmd_active;

mmc_cmd_select mmc_cmd_select_ (
	.bit(bit),
	.cmd(cmd),
	.data(data),
	.cmd_active(cmd_active));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/mmc_cmd_select/mmc_cmd_select.vcd");
		$dumpvars(0, mmc_cmd_select_bench);
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
		bit = $random;
		cmd = $random;
		#26;
	end

endmodule