`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:18 08/24/2011 
// Design Name: 
// Module Name:    q15_add 
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
module qadd #(
	//Parameterized values
	parameter Q = 15,
	parameter N = 32
	)
	(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );

reg [31:0] res;

assign c = res;

always @(a,b) begin
	// both negative or both positive
	if(a[32-1] == b[32-1]) begin						//	Since they have the same sign, absolute magnitude increases
		res[32-2:0] = a[32-2:0] + b[32-2:0];		//		So we just add the two numbers
		res[32-1] = a[32-1];							//		and set the sign appropriately...  Doesn't matter which one we use, 
															//		they both have the same sign
															//	Do the sign last, on the off-chance there was an overflow...  
		end												//		Not doing any error checking on this...
	//	one of them is negative...
	else if(a[32-1] == 0 && b[32-1] == 1) begin		//	subtract a-b
		if( a[N32-2:0] > b[32-2:0] ) begin					//	if a is greater than b,
			res[32-2:0] = a[32-2:0] - b[32-2:0];			//		then just subtract b from a
			res[32-1] = 0;										//		and manually set the sign to positive
			end
		else begin												//	if a is less than b,
			res[32-2:0] = b[32-2:0] - a[32-2:0];			//		we'll actually subtract a from b to avoid a 2's complement answer
			if (res[32-2:0] == 0)
				res[32-1] = 0;										//		I don't like negative zero....
			else
				res[32-1] = 1;										//		and manually set the sign to negative
			end
		end
	else begin												//	subtract b-a (a negative, b positive)
		if( a[32-2:0] > b[32-2:0] ) begin					//	if a is greater than b,
			res[32-2:0] = a[32-2:0] - b[32-2:0];			//		we'll actually subtract b from a to avoid a 2's complement answer
			if (res[32-2:0] == 0)
				res[32-1] = 0;										//		I don't like negative zero....
			else
				res[32-1] = 1;										//		and manually set the sign to negative
			end
		else begin												//	if a is less than b,
			res[32-2:0] = b[32-2:0] - a[32-2:0];			//		then just subtract a from b
			res[32-1] = 0;										//		and manually set the sign to positive
			end
		end
	end
endmodule
