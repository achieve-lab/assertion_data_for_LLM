`timescale 1ns/1ps
module barrel_shifter_simple_working  (
                                x         ,
                                y         ,
                                z         ,
                                c         ,
                                direction
                              );
  parameter DWIDTH = 8;                            

  input       [DWIDTH-1:0]    x         ;
  input       [DWIDTH-1:0]    y         ;
  output      [DWIDTH-1:0]    z         ;
  output                      c         ;
  input                       direction ;
  
  reg         [DWIDTH-1:0]    z         ;
  reg                         c         ;

  reg         [DWIDTH-1:0]    y_tmp     ;

  
  initial
  begin
    c = 1'b0;
    y_tmp = 'd0; // initialise for simulation purposes
  end  
  
  always @(x or y or direction)
  begin

    z = x;
    c = 0;
    for (y_tmp={{DWIDTH-3{1'b0}},y[2:0]}; y_tmp > 0; y_tmp = y_tmp - 1)
    begin
    
      `ifdef DEBUG_BARREL_SHIFTER
        $display ("[%0t] D%0d z=%0b", $time, y_tmp, z);
      `endif
       if (direction)
       begin
         z = {z[0], z[DWIDTH-1:1]};
         c = z[0]                 ;
       end
       else
       begin
         z = {z[DWIDTH-2:0], z[DWIDTH-1]} ;
         c = z[DWIDTH-2]                  ;
       end
    end
  
  end
  
endmodule
