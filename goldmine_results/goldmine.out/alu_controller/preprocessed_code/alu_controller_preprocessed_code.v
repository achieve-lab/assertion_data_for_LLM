// port from university project for ALU in VHDL
//





















 
//`include "alu_controller.vh"
module alu_controller (
                        add_AB          ,
                        inc_A           ,
                        inc_B           ,
                        sub_AB          ,
                        cmp_AB          ,
                        sl_AB           ,
                        sr_AB           ,
                        clr             ,
                        dec_A           ,
                        dec_B           ,
                        mul_AB          ,
                        cpl_A           ,
                        and_AB          ,
                        or_AB           ,
                        xor_AB          ,
                        cpl_B           ,

                        clr_Z           ,
                        clr_V           ,
                        clr_C           ,

                        load_inputs     ,
                        load_outputs    ,

                        opcode          ,
                        reset           , 
                        clk          
                       );

  // default opcode bit width
  parameter OPWIDTH = 4;
  parameter OPBITS  = 16;
  
  output                    add_AB          ;
  output                    inc_A           ;
  output                    inc_B           ;
  output                    sub_AB          ;
  output                    cmp_AB          ;
  output                    sl_AB           ;
  output                    sr_AB           ;
  output                    clr             ;
  output                    dec_A           ;
  output                    dec_B           ;
  output                    mul_AB          ;
  output                    cpl_A           ;
  output                    and_AB          ;
  output                    or_AB           ;
  output                    xor_AB          ;
  output                    cpl_B           ;
                                  
  output                    clr_Z           ;
  output                    clr_V           ;
  output                    clr_C           ;
                                  
  output                    load_inputs     ;
  output                    load_outputs    ;
                                    
  reg                       load_inputs     ;
  reg                       load_outputs    ;

  input    [OPWIDTH-1:0]    opcode          ;
  input                     reset           ;
  input                     clk             ; 



  reg    [OPWIDTH-1     :0] this_opcode     ;
  reg    [OPWIDTH-1     :0] next_opcode     ;
  
  reg    [65536+1:0]  opcode_sel      ;


  assign add_AB =   opcode_sel[ 0  ];
  assign inc_A  =   opcode_sel[ 1   ];
  assign inc_B  =   opcode_sel[ 9   ];
  assign sub_AB =   opcode_sel[ 2  ];
  assign cmp_AB =   opcode_sel[ 3  ];
  assign sl_AB  =   opcode_sel[ 4];
  assign sr_AB  =   opcode_sel[ 5];
  assign clr    =   opcode_sel[ 6     ];
  assign dec_A  =   opcode_sel[ 7   ];
  assign dec_B  =   opcode_sel[ 8   ];
  assign mul_AB =   opcode_sel[ 10  ];
  assign cpl_A  =   opcode_sel[ 11   ];
  assign and_AB =   opcode_sel[ 12  ];
  assign or_AB  =   opcode_sel[ 13   ];
  assign xor_AB =   opcode_sel[ 14  ];
  assign cpl_B  =   opcode_sel[ 15   ];
  
  // [leo 22MAR09 TOREVIEW] to be reviewed
  assign clr_Z  =   opcode_sel[   0];
  assign clr_V  =   opcode_sel[   1];
  assign clr_C  =   opcode_sel[   2];
  
  // state control
  //always @(posedge clk or reset)
  always @(posedge clk or posedge reset) // for systemc
  begin
    if    (reset)
      this_opcode <= 6;
    else
      this_opcode <= opcode;

  end
        
  // FSM 
  always @(this_opcode)
  begin

    // reset opcode_sel signals
    opcode_sel    <= 'h0;
    load_inputs   <= 'h0;

    case (this_opcode)
      6     :
			begin
        opcode_sel[6   ]       <= 1'b1  ;
			end
      0  :
			begin
        opcode_sel[0]       <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      1    :
			begin

        opcode_sel[1]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      9    :
			begin

        opcode_sel[9]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      7    :
			begin

        opcode_sel[7]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      8    :
			begin

        opcode_sel[8]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      2  :
			begin

        opcode_sel[2]       <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      3  :
			begin

        opcode_sel[3]       <= 1'b1;
        load_inputs                <= 1'b1;

			end
      12  :
			begin

        opcode_sel[12]       <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      13    :
			begin

        opcode_sel[13]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      14  :
			begin

        opcode_sel[14]       <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      10  :
			begin

        opcode_sel[10]       <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      11    :
			begin

        opcode_sel[11]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      15    :
			begin

        opcode_sel[15]        <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      4  :
			begin

        opcode_sel[4]     <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      5  :
			begin

        opcode_sel[5]     <= 1'b1;
        load_inputs                <= 1'b1;
        load_outputs               <= 1'b1;       

			end
      default :
			begin
        next_opcode       <= this_opcode;
      end
			endcase
  end // always begin for FSM
endmodule
