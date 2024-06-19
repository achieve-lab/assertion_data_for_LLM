`timescale 1ns/1ps

module signed_mult_const_asic_bench();

reg [7:0] a;
reg rstn;
reg valid;
reg clk;

wire [8:0] p;

signed_mult_const_asic signed_mult_const_asic_ (
	.a(a),
	.rstn(rstn),
	.valid(valid),
	.clk(clk),
	.p(p));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/signed_mult_const_asic/signed_mult_const_asic.vcd");
		$dumpvars(0, signed_mult_const_asic_bench.signed_mult_const_asic_);
		clk = 1;
		rstn = 1;
		#26;
		rstn = 0;
		#50000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		a = $random;
		valid = $random;
		#26;
	end

endmodule