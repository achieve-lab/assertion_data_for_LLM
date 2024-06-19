//////////////////////////////////////////////////////////////////////
////                                                              ////
////  timescale.v                                                 ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001 Authors                                   ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.2  2001/10/19 11:36:31  mohor
// Log file added.
//
//
//

`timescale 1ns / 1ns

module eth_l3_checksum 
   (
     MRxClk ,Reset, RxData , ByteCnt, CheckSum ,CSready
   );

input    MRxClk;
input    Reset;
input [7:0] RxData;
input [15:0] ByteCnt;
output [15:0] CheckSum;
output        CSready;

reg   [15:0]   CheckSum;
reg   [31:0]   Sum;
reg            CSready;
reg   [1:0]    StartCalc;
reg            Divided_2_clk ;
reg            Divided_4_clk ;
reg [7:0] prev_latched_Rx;
reg [7:0] prev_latched_Rx1;

 initial Divided_2_clk=0;
 initial Divided_4_clk=0;

always @ (posedge MRxClk)
    begin
       Divided_2_clk <=  MRxClk^Divided_2_clk;
       if (ByteCnt[15:0] >= 16'h17 & ByteCnt[15:0] < (16'h17+16'd20))
           begin
           prev_latched_Rx[7:0] <= RxData[7:0];
           prev_latched_Rx1[7:0] <= prev_latched_Rx[7:0];
           end

    end

always @ (posedge Divided_2_clk)
      Divided_4_clk <= Divided_4_clk ^ Divided_2_clk;
       

always @ (posedge  Divided_2_clk or posedge Reset )
begin
    if (Reset)
        begin
        CheckSum[15:0] <= 16'd0;
        CSready <= 1'd0;
        end
    else
       if (ByteCnt[15:0]==16'h15)
           StartCalc[0] <= (RxData[7:0] == 8'h8);
       else
       if (ByteCnt[15:0]==16'h16)
           begin
           StartCalc[0] <= (RxData[7:0] == 8'h0) & StartCalc[0] ;
           CheckSum[15:0] <= 16'h0;
           Sum[31:0] <= 32'h0;
           CSready <= 1'b0;
           end
       else     
       if (ByteCnt[15:0] >= 16'h17 & ByteCnt[15:0] < (16'h17+16'd20))
           begin
           StartCalc[1]<= (ByteCnt[15:0] > 16'h17) & StartCalc[0] ;
           end
       else
         StartCalc[1:0] <= 2'h0;   
         
   if (ByteCnt[15:0]-16'h17== 16'd20)
       begin
         CSready <= 1'b1;
         CheckSum[15:0] <= ~(Sum[15:0]+Sum[31:16]);
       end
       
   end

 always @ (negedge Divided_4_clk)
 begin
      if (&StartCalc)
        Sum[31:0]<= Sum[31:0] + {prev_latched_Rx1[7:0] , RxData[7:0]};
      
  end

  

endmodule
