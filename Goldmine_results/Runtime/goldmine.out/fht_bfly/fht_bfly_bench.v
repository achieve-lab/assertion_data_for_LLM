`timescale 1ns/1ps

module fht_bfly_bench();

reg [7:0] a;
reg rstn;
reg [7:0] b;
reg valid;
reg clk;

wire [8:0] c;
wire [8:0] d;

fht_bfly fht_bfly_ (
	.a(a),
	.rstn(rstn),
	.b(b),
	.valid(valid),
	.clk(clk),
	.c(c),
	.d(d));

	initial begin
		$dumpfile("/data/vpulav2/Work/GoldMine/Runtime/goldmine.out/fht_bfly/fht_bfly.vcd");
		$dumpvars(0, fht_bfly_bench.fht_bfly_);
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
		b = $random;
		valid = $random;
		#26;
	end

endmodule