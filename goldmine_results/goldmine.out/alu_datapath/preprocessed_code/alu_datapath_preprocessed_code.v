// ported from university project for alu in VHDL

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


// port from univeristy project for an ALU in VHDL
//
module alu_barrel_shifter	(
                            x          ,
                            y          ,
                            z          ,
                            c          ,
                            direction
			                    );

  parameter SHIFTER_WIDTH	= 8;

  input	  [SHIFTER_WIDTH - 1 : 0] x          ;
  input	  [SHIFTER_WIDTH - 1 : 0] y          ;
  output  [SHIFTER_WIDTH - 1 : 0] z          ;
  output                          c          ;
  input	                          direction  ;


  wire	[SHIFTER_WIDTH : 0]     Yor       ;
  wire	[SHIFTER_WIDTH : 0]     Yreg      ;
  wire	[SHIFTER_WIDTH : 0]     Xreg      ;
  reg 	[SHIFTER_WIDTH : 0]     Zreg      ;
  wire	[SHIFTER_WIDTH : 0]     Zout      ;

  wire	[SHIFTER_WIDTH : 0]     Xrev      ;
  wire	[SHIFTER_WIDTH : 0]     Zrev      ;
  
  reg 	[SHIFTER_WIDTH-1 : 0]   Zrev_copy ; //  for missing bits

  wire	                        Xmsb      ;

  reg         Ztmp, update_extra_bits;
  integer     j, k, m;
  
  //initial update_extra_bits = 1'b0;

 function [SHIFTER_WIDTH : 0] reverse;
 input  [SHIFTER_WIDTH : 0] a         ;
 reg	  [0 : SHIFTER_WIDTH] a_reversed;
 reg    [31:0]              i         ;
 begin
	 for (i=0;i<= SHIFTER_WIDTH;i = i + 1)
		 a_reversed[i]	= a[i];
	 reverse = a_reversed;
 end
 endfunction


  wire	[SHIFTER_WIDTH : 0]     value_7  ;
  
  assign value_7 = 'h7;
	////////////////////////////////////////////////////
  // shifter
  ////////////////////////////////////////////////////
  
  ///  theoretical solution for missing bits START ///
  //assign Zrev_copy = {Xreg[SHIFTER_WIDTH-1:SHIFTER_WIDTH-m] ;
  ///  theoretical solution for missing bits END  ///
  
  assign  Yreg	=	{1'b0, y & value_7}                                   ;
	assign  Zrev	=	reverse(Zreg)                                         ;
	assign  Xrev	=	(!direction) ? reverse({1'b0, x}) :	reverse({x, 1'b0});
//	assign  Xmsb	=	x[SHIFTER_WIDTH-1]                                    ;
  	assign  Xmsb	=	(y[2:0]==0) ? x[SHIFTER_WIDTH-1] : 1'b0             ;
	//assign  z		  =	(!direction) ? Zout[SHIFTER_WIDTH-1:0]	: {Xmsb, Zout[SHIFTER_WIDTH-1:1]} ;
  
	assign  z		  =	(!direction) ? Zout[SHIFTER_WIDTH-1:0]	: {Xmsb, Zout[SHIFTER_WIDTH-1:1]} | ((y[2:0]==0) ? 'd0 : Zrev_copy);

	assign  c		  =	(!direction) ? Zout[SHIFTER_WIDTH]	    :	Zout[0]                         ;
  
	assign  Zout	=	(!direction) ? Zreg                     : Zrev                            ;
  
	assign  Xreg	= (!direction) ? {1'b0, x}                : Xrev                            ;


	assign  Yor[0]= (Yreg == 'd0) ? 1'b1 : 1'b0;
	assign  Yor[1]= (Yreg == 'd1) ? 1'b1 : 1'b0;
	assign  Yor[2]= (Yreg == 'd2) ? 1'b1 : 1'b0;
	assign  Yor[3]= (Yreg == 'd3) ? 1'b1 : 1'b0;
	assign  Yor[4]= (Yreg == 'd4) ? 1'b1 : 1'b0;
	assign  Yor[5]= (Yreg == 'd5) ? 1'b1 : 1'b0;
	assign  Yor[6]= (Yreg == 'd6) ? 1'b1 : 1'b0;
	assign  Yor[7]= (Yreg == 'd7) ? 1'b1 : 1'b0;
	assign  Yor[8]= 1'b0;
				

  // shifter       :	process (Xreg, Yreg, Yor)
  // temporary variables but declare as regs
  // for synthesis reasons.
  // They extra unneeded bits should be optimized away
  //
  initial j = 'd0;
  initial k = 'd0;
  
  initial update_extra_bits = 1'b0;
  
  always @(x or y or direction)
  begin
    update_extra_bits = 1'b0;
  end
  
  always @(Xreg or Yreg or Yor)
	begin
    //#1;
		Zreg = 'h0;
    


    for (j=SHIFTER_WIDTH; j>=0 ; j=j-1)
    begin
		  Ztmp = 1'b0;						
			if (j == 0)
      begin
				Zreg[j]	=	Xreg[j] & Yor[0];
        



      end
			else
      begin
        



				Ztmp	  = Xreg[j] & Yor[0];
				for (k=1 ; k<=j ; k=k+1)
        begin
					Ztmp   =  (Xreg[j-k]  &  Yor[k]) | Ztmp;
          
          if (Yor[k] && direction)
          begin
        		Zrev_copy = 'd0 ;
            for(m=0; m<k ; m=m+1)
            begin
              update_extra_bits = 1'b1;
              Zrev_copy[(SHIFTER_WIDTH-k)+m] = x[m];
        


            end
          end
        end
      


				Zreg[j]	= Ztmp;
			end // end else
        



		end // end loop
        



	end //end shifter;
  
endmodule

module alu_datapath (
                      A                             , 
                      B                             , 
                      Y                             , 
                      
                      add_AB                        ,  
                      inc_A                         ,  
                      inc_B                         ,  
                      sub_AB                        ,  
                      cmp_AB                        ,  
                      sl_AB                         ,  
                      sr_AB                         ,  
                      clr                           ,  
                      dec_A                         ,  
                      dec_B                         ,  
                      mul_AB                        ,  
                      cpl_A                         ,  
                      and_AB                        ,  
                      or_AB                         ,  
                      xor_AB                        ,  
                      cpl_B                         ,

                      clr_Z                         , 
                      clr_V                         , 
                      clr_C                         , 

                      C                             , 
                      V                             , 
                      Z                             , 

                      load_inputs                   ,
                      load_outputs                  ,
                      
                      reset                         ,
                      clk
                    );

  // data input/output width for the ALU
  parameter			      ALU_WIDTH = 8;

  input   [ALU_WIDTH - 1:0]  A           ;
  input   [ALU_WIDTH - 1:0]  B           ;
  output  [ALU_WIDTH - 1:0]  Y           ;

  input                      add_AB      ;  // ALU control commands   
  input                      inc_A       ;
  input                      inc_B       ;
  input                      sub_AB      ;
  input                      cmp_AB      ;
  input                      sl_AB       ;
  input                      sr_AB       ;
  input                      clr         ;
  input                      dec_A       ;
  input                      dec_B       ;
  input                      mul_AB      ; // Not yet implemented
  input                      cpl_A       ;
  input                      and_AB      ;
  input                      or_AB       ;
  input                      xor_AB      ;  // soft reset! via opcode 
  input                      cpl_B       ;

  input                      clr_Z       ;                            
  input                      clr_V       ;                            
  input                      clr_C       ;                            

  output                     C           ;  // carry flag             
  output                     V           ;  // overflow flag          
  output                     Z           ;  // ALU result = 0         

  input                      load_inputs ;                            
  input                      load_outputs;                            

  input                      reset       ;  // hard reset!            

  input                      clk         ;  // clk wire              


  wire	[ALU_WIDTH - 1:0] adder_in_a        ;
  wire	[ALU_WIDTH - 1:0] adder_in_b        ;
  wire	[ALU_WIDTH - 1:0] adder_out         ;
    
  wire	[ALU_WIDTH - 1:0] shifter_inA       ;
  wire	[ALU_WIDTH - 1:0] shifter_inB       ;
  wire	[ALU_WIDTH - 1:0] shifter_out       ;
  
  wire	                  shifter_carry     ;
  wire	                  shifter_direction ;
  
  wire	                  carry_in          ;
  wire	                  carry             ;
  wire	                  adderORsel        ;
  wire	                  adderXORsel       ;
    
  wire	[ALU_WIDTH    :0] carry_out         ;
  
  wire	[ALU_WIDTH - 1:0] AandB             ;
  wire	[ALU_WIDTH - 1:0] AxorB             ;
  wire	[ALU_WIDTH - 1:0] AorB              ;

  wire	[ALU_WIDTH - 1:0]	logic0            ;
  wire	[ALU_WIDTH - 1:0]	logic1            ;

  
  reg	  [ALU_WIDTH - 1:0] Areg              ;
  reg	  [ALU_WIDTH - 1:0] Breg              ;
  reg	  [ALU_WIDTH - 1:0] Yreg              ;
  reg		                  Zreg              ;
  reg		                  Creg              ;
  reg		                  Vreg              ;
  
  wire  [ALU_WIDTH - 1:0] alu_out           ;
  

	assign logic1		= 'd1	;
	assign logic0		= 'd0	;

	// assign registers to outputs
	assign Y = Yreg;
	assign Z = Zreg;
	assign C = Creg;
	assign V = Vreg;
	
	// inputs to adder
	assign adder_in_a	=	(cpl_B) ? 'd0 :	((cpl_A) ? ~Areg : ((inc_B) ? 1'b0 :((dec_B) ? {ALU_WIDTH{1'b1}} :Areg)) );

  assign  adder_in_b = (!sub_AB && !inc_A && !cpl_A && !cpl_B) ? ((dec_A) ? {ALU_WIDTH{1'b1}} : Breg) : 
                          (((sub_AB && !inc_A) || cpl_B) ? ~Breg : 
                            ((!sub_AB && inc_A && !cpl_B) ?'d0     : 
                              ((cpl_A) ? 'd0 : adder_in_b)));
	
	// carry_in to adder is set to 1 during subtract and increment
	// operations
	assign  carry_in  = (sub_AB || inc_A || inc_B) ? 1'b1 : 1'b0;
  				
	// select appropriate alu_output to go to Z depending
	// on control wires
          
  assign alu_out = ((and_AB || or_AB) && (!sl_AB && !sr_AB))  ? carry_out[ALU_WIDTH:1] 
                                        : ((sl_AB || sr_AB) ? shifter_out 
                                                            : adder_out);
					
	// selects use of the Adder as an OR gate
	assign adderORsel	= (or_AB) ? 'b1 : 'b0;
  
	// selects use of the Adder as an XOR gate
	// or as a compare [which uses the XOR function]
	assign adderXORsel	=	(xor_AB || cmp_AB) ? 'b0 : 'b1;
					
	// set/unset carry flag depending on relevant conditions
  assign carry = (add_AB && !and_AB && !or_AB && !xor_AB && !cpl_B && !clr) ? 
                    carry_out[ALU_WIDTH] :  
                      ((and_AB || or_AB || xor_AB || cpl_B || clr) ?
                        'b0 : ((sl_AB ||  sr_AB)  ? shifter_carry :carry));

					
	// barrel shifter wires
	assign shifter_direction	=	(sr_AB) ? 'b1	:	'b0;
							
	assign shifter_inA = Areg;
	assign shifter_inB = Breg;
	
	alu_adder #(ALU_WIDTH) adder            (
					                                  .x	    		(adder_in_a ) ,
					                                  .y			    (adder_in_b )	,
					                                  .carry_in	  (carry_in   )	,
					                                  .ORsel		  (adderORsel )	,
					                                  .XORsel		  (adderXORsel)	,
					                                  .carry_out	(carry_out  )	,
					                                  .z			    (adder_out  )
				                                  );

	alu_barrel_shifter #(ALU_WIDTH) shifter	(
					                                  .x			    (shifter_inA      ) ,
					                                  .y			    (shifter_inB      ) ,
					                                  .z			    (shifter_out      ) ,
					                                  .c			    (shifter_carry    ) ,
					                                  .direction	(shifter_direction)
					                                );

	//registered_ios
  always @(posedge clk or posedge reset)
						begin
							if (reset)
              begin
								Areg	<=	'd0;
								Breg	<=	'd0;
								Yreg	<=	'd0;

								Zreg	<= 	'b1;
								Creg	<= 	'b0;
								Vreg	<= 	'b0;
              end
							else
              begin
								if (load_inputs)
                begin
									Areg	<=	A;
									Breg	<=	B;
                end
								if (load_outputs)
									Yreg	<= alu_out;
								
								//// clear command clears all registers
								//// and the carry bit
								if (clr)
                begin
									Areg	<=	'd0;
									Breg	<=	'd0;
									Yreg	<=	'd0;
	
									Creg	<= 	'b0;
                end


								if (clr_Z)
									Zreg	<= 'b0;
								if (clr_C)
									Creg	<= 'b0;
								if (clr_V)
									Vreg	<= 'b0;
								
								// set the Z register 
								if 		(alu_out == 'd0)
									Zreg	<= 'b1;
								else
									Zreg	<= 'b0;
								
                                
								Creg	<= carry;
							end
						end // end always registered IOs;
	
	
endmodule


