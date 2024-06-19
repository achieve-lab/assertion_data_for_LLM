
// ported from university project for an ALU in VHDL
module alu_adder  (
                    x          ,
                    y          ,
                    carry_in   ,
                    ORsel      ,
                    XORsel     ,

                    carry_out  ,
                    xor_result ,
                    or_result  ,
                    and_result ,
                    z          
                  );

  parameter ADDER_WIDTH = 8;

  input       [ADDER_WIDTH - 1 :0] x          ;
  input       [ADDER_WIDTH - 1 :0] y          ;
  input                            carry_in   ;
  input                            ORsel      ;
  input                            XORsel     ;

  output      [ADDER_WIDTH - 1 :0] xor_result ;
  output      [ADDER_WIDTH - 1 :0] or_result  ;
  output      [ADDER_WIDTH - 1 :0] and_result ;
  output      [ADDER_WIDTH     :0] carry_out  ;
  output      [ADDER_WIDTH - 1 :0] z          ;

  reg         [ADDER_WIDTH     :0] carry_out  ;
  reg         [ADDER_WIDTH - 1 :0] z          ;

  wire	      [ADDER_WIDTH - 1 :0] XxorY      ;
  wire        [ADDER_WIDTH - 1 :0] XandY      ;
  wire        [ADDER_WIDTH - 1 :0] XorY       ;

  // loop variable register
  reg   [31:0] i;
  
	////////////////////////////////////////////////////
  // adder
  ////////////////////////////////////////////////////
  assign  xor_result	= XxorY   ;
  assign  or_result	  = XorY    ;
  assign  and_result	= XandY   ;

	assign  XxorY	      =	x ^ y   ;
	assign  XandY	      =	x & y   ;
	assign  XorY	      =	x | y   ;
  

  //  adder
  always  @(x or y or carry_out or XxorY or XandY or XorY or XORsel or ORsel)
  begin
    carry_out[0] <= carry_in;
    //for (i = 0; i < ADDER_WIDTH ; i = i+1)
    //begin
        z[0]            <=  XxorY[0] ^ ( carry_out[0] & XORsel);
        carry_out[1]  <=  XandY[0] | ((carry_out[0] | ORsel) & XorY[0]);
	z[1]            <=  XxorY[1] ^ ( carry_out[1] & XORsel);
	carry_out[2]  <=  XandY[1] | ((carry_out[1] | ORsel) & XorY[1]);
	z[2]            <=  XxorY[2] ^ ( carry_out[2] & XORsel);
	carry_out[3]  <=  XandY[2] | ((carry_out[2] | ORsel) & XorY[2]);
	z[3]            <=  XxorY[3] ^ ( carry_out[3] & XORsel);
	carry_out[4]  <=  XandY[3] | ((carry_out[3] | ORsel) & XorY[3]);
	z[4]            <=  XxorY[4] ^ ( carry_out[4] & XORsel);
	carry_out[5]  <=  XandY[4] | ((carry_out[4] | ORsel) & XorY[4]);
	z[5]            <=  XxorY[5] ^ ( carry_out[5] & XORsel);
	carry_out[6]  <=  XandY[5] | ((carry_out[5] | ORsel) & XorY[5]);
	z[6]            <=  XxorY[6] ^ ( carry_out[6] & XORsel);
	carry_out[7]  <=  XandY[6] | ((carry_out[6] | ORsel) & XorY[6]);
	z[7]            <=  XxorY[7] ^ ( carry_out[7] & XORsel);
	carry_out[8]  <=  XandY[7] | ((carry_out[7] | ORsel) & XorY[7]);


    //end
  end
  

endmodule


