`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:47 08/24/2011
// Design Name:   q15_add
// Module Name:   C:/Documents and Settings/samskalicky/Desktop/PLE/q_15_add_tf.v
// Project Name:  PLE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q15_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

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
module qadd(
    input [N-1:0] a,
    input [N-1:0] b,
    output [N-1:0] c
    );
//sign+16.15

	//Parameterized values
	parameter Q = 15;
	parameter N = 32;

reg [N-1:0] res;

assign c = res;

always @(a,b)
begin
	//both negative
	if(a[N-1] == 1 && b[N-1] == 1) begin
		//sign
		res[N-1] = 1;
		//whole
		res[N-2:0] = a[N-2:0] + b[N-2:0];
	end
	//both positive
	else if(a[N-1] == 0 && b[N-1] == 0) begin
		//sign
		res[N-1] = 0;
		//whole
		res[N-2:0] = a[N-2:0] + b[N-2:0];
	end
	//subtract a-b
	else if(a[N-1] == 0 && b[N-1] == 1) begin
		//sign
		if(a[N-2:0] > b[N-2:0])
			res[N-1] = 1;
		else
			res[N-1] = 0;
		//whole
		res[N-2:0] = a[N-2:0] - b[N-2:0];
	end
	//subtract b-a
	else begin
		//sign
		if(a[N-2:0] < b[N-2:0])
			res[N-1] = 1;
		else
			res[N-1] = 0;
		//whole
		res[N-2:0] = b[N-2:0] - a[N-2:0];
	end
end

endmodule
module qadd_tf;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] c;

	// Instantiate the Unit Under Test (UUT)
	qadd #(23,32) uut (.a(a), .b(b), .c(c));

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		#100;
		
		a = 1;
		b = 0;
		
		#100;
		
		a = 0;
		b = 1;
		
		#100;
		
		a = 1;
		b = 1;
		
		#100;
		
		a[31:23] = 64;
		a[22:0] = 125;
		b[31:23] = 0;
		b[22:0] = 75;
		
		#100;
		
		a[30]=0;
		a[30:23] = 64;
		a[22:0] = 1048576;
		b[31]=1;
		b[30:23] = 0;	//-1
		b[22:0] = 6291456;
        
		// Add stimulus here
		#100;
	end
      
endmodule

