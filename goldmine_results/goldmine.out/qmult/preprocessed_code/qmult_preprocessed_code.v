`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:14 08/24/2011 
// Design Name: 
// Module Name:    q15_mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:20 08/24/2011 
// Design Name: 
// Module Name:    twosComp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module qtwosComp(
	input [30:0] a,
	output [63:0] b
//    input [N-2:0] a,
//    output [2*N-1:0] b
    );
//	reg [2*N-1:0] data;
//	reg [2*N-1:0] flip;
//	reg [2*N-1:0] out;
	reg [63:0] data;
	reg [63:0] flip;
	reg [63:0] out;
	
	//Parameterized values
	parameter Q = 15;
	parameter N = 32;
	
	assign b = out;
	
	always @(a)
	begin
		data <= a;		//if you dont put the value into a 64b register, when you flip the bits it wont work right
	end
	
	always @(data)
	begin
		flip <= ~a;
	end
	
	always @(flip)
	begin
		out <= flip + 1;
	end

endmodule

module qmult(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );
	 
	wire [63:0] a_ext;
	wire [63:0] b_ext;
	wire [63:0] r_ext;
	
	reg [63:0] a_mult;
	reg [63:0] b_mult;
	reg [63:0] result;
	reg [31:0] retVal;
	
	//Parameterized values
	parameter Q = 15;
	parameter N = 32;

	qtwosComp #(Q,N) comp_a (.a(a[30:0]), .b(a_ext));

	qtwosComp #(Q,N) comp_b (.a(b[30:0]), .b(b_ext));
	
	qtwosComp #(Q,N) comp_r (.a(result[32-2+15:15]), .b(r_ext));
	
	assign c = retVal;
	
	always @(a_ext,b_ext)
	begin
		if(a[32-1] == 1)
			a_mult <= a_ext;
		else
			a_mult <= a;
			
		if(b[32-1] == 1)
			b_mult <= b_ext;
		else
			b_mult <= b;		
	end 
	
	always @(a_mult,b_mult)
	begin
		result <= a_mult * b_mult;
	end
	
	always @(result,r_ext)
	begin		
		//sign
		if((a[32-1] == 1 && b[32-1] == 0) || (a[32-1] == 0 && b[32-1] == 1)) begin
			retVal[32-1] <= 1;
			retVal[32-2:0] <= r_ext[32-2:0];
		end
		else begin
			retVal[32-1] <= 0;
			retVal[32-2:0] <= result[32-2+15:15];
		end
	end

endmodule
