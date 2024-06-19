//////////////////////////////////////////////////////////////////////
////                                                              ////
////  can_acf.v                                                   ////
////                                                              ////
////                                                              ////
////  This file is part of the CAN Protocol Controller            ////
////  http://www.opencores.org/projects/can/                      ////
////                                                              ////
////                                                              ////
////  Author(s):                                                  ////
////       Igor Mohor                                             ////
////       igorm@opencores.org                                    ////
////                                                              ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002, 2003, 2004 Authors                       ////
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
//// The CAN protocol is developed by Robert Bosch GmbH and       ////
//// protected by patents. Anybody who wants to implement this    ////
//// CAN IP core on silicon has to obtain a CAN protocol license  ////
//// from Bosch.                                                  ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.9  2004/05/31 14:46:11  igorm
// Bit acceptance_filter_mode was inverted.
//
// Revision 1.8  2004/02/08 14:16:44  mohor
// Header changed.
//
// Revision 1.7  2003/07/16 13:41:34  mohor
// Fixed according to the linter.
//
// Revision 1.6  2003/02/10 16:02:11  mohor
// CAN is working according to the specification. WB interface and more
// registers (status, IRQ, ...) needs to be added.
//
// Revision 1.5  2003/02/09 18:40:29  mohor
// Overload fixed. Hard synchronization also enabled at the last bit of
// interframe.
//
// Revision 1.4  2003/02/09 02:24:33  mohor
// Bosch license warning added. Error counters finished. Overload frames
// still need to be fixed.
//
// Revision 1.3  2003/01/31 01:13:37  mohor
// backup.
//
// Revision 1.2  2003/01/14 12:19:35  mohor
// rx_fifo is now working.
//
// Revision 1.1  2003/01/08 02:13:15  mohor
// Acceptance filter added.
//
//
//
//

// synopsys translate_off
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  timescale.v                                                 ////
////                                                              ////
////                                                              ////
////  This file is part of the CAN Protocol Controller            ////
////  http://www.opencores.org/projects/can/                      ////
////                                                              ////
////                                                              ////
////  Author(s):                                                  ////
////       Igor Mohor                                             ////
////       igorm@opencores.org                                    ////
////                                                              ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002, 2003 Authors                             ////
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
//// The CAN protocol is developed by Robert Bosch GmbH and       ////
//// protected by patents. Anybody who wants to implement this    ////
//// CAN IP core on silicon has to obtain a CAN protocol license  ////
//// from Bosch.                                                  ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.2  2002/12/27 00:12:48  mohor
// Header changed, testbench improved to send a frame (crc still missing).
//
// Revision 1.1.1.1  2002/12/20 16:39:21  mohor
// Initial
//
//
//


`timescale 1ns/10ps
// synopsys translate_on
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  can_defines.v                                               ////
////                                                              ////
////                                                              ////
////  This file is part of the CAN Protocol Controller            ////
////  http://www.opencores.org/projects/can/                      ////
////                                                              ////
////                                                              ////
////  Author(s):                                                  ////
////       Igor Mohor                                             ////
////       igorm@opencores.org                                    ////
////                                                              ////
////                                                              ////
////  All additional information is available in the README.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002, 2003, 2004 Authors                       ////
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
//// The CAN protocol is developed by Robert Bosch GmbH and       ////
//// protected by patents. Anybody who wants to implement this    ////
//// CAN IP core on silicon has to obtain a CAN protocol license  ////
//// from Bosch.                                                  ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.13  2004/02/08 14:28:03  mohor
// Header changed.
//
// Revision 1.12  2003/10/17 05:55:20  markom
// mbist signals updated according to newest convention
//
// Revision 1.11  2003/09/05 12:46:42  mohor
// ALTERA_RAM supported.
//
// Revision 1.10  2003/08/14 16:04:52  simons
// Artisan ram instances added.
//
// Revision 1.9  2003/06/27 20:56:15  simons
// Virtual silicon ram instances added.
//
// Revision 1.8  2003/06/09 11:32:36  mohor
// Ports added for the CAN_BIST.
//
// Revision 1.7  2003/03/20 16:51:55  mohor
// *** empty log message ***
//
// Revision 1.6  2003/03/12 04:19:13  mohor
// 8051 interface added (besides WISHBONE interface). Selection is made in
// can_defines.v file.
//
// Revision 1.5  2003/03/05 15:03:20  mohor
// Xilinx RAM added.
//
// Revision 1.4  2003/03/01 22:52:47  mohor
// Actel APA ram supported.
//
// Revision 1.3  2003/02/09 02:24:33  mohor
// Bosch license warning added. Error counters finished. Overload frames
// still need to be fixed.
//
// Revision 1.2  2002/12/27 00:12:52  mohor
// Header changed, testbench improved to send a frame (crc still missing).
//
// Revision 1.1.1.1  2002/12/20 16:39:21  mohor
// Initial
//
//
//


// Uncomment following line if you want to use WISHBONE interface. Otherwise
// 8051 interface is used.
// `define   CAN_WISHBONE_IF

// Uncomment following line if you want to use CAN in Actel APA devices (embedded memory used)
// `define   ACTEL_APA_RAM

// Uncomment following line if you want to use CAN in Altera devices (embedded memory used)
// `define   ALTERA_RAM

// Uncomment following line if you want to use CAN in Xilinx devices (embedded memory used)
// `define   XILINX_RAM

// Uncomment the line for the ram used in ASIC implementation
// `define   VIRTUALSILICON_RAM
// `define   ARTISAN_RAM

// Uncomment the following line when RAM BIST is needed (ASIC implementation)
//`define CAN_BIST                    // Bist (for ASIC implementation)

/* width of MBIST control bus */
//`define CAN_MBIST_CTRL_WIDTH 3

module can_acf
( 
  clk,
  rst,

  id,
  
  /* Mode register */
  reset_mode,
  acceptance_filter_mode,

  extended_mode,
  
  acceptance_code_0,
  acceptance_code_1,
  acceptance_code_2,
  acceptance_code_3,
  acceptance_mask_0,
  acceptance_mask_1,
  acceptance_mask_2,
  acceptance_mask_3,
  
  go_rx_crc_lim,
  go_rx_inter,
  go_error_frame,
  
  data0,
  data1,
  rtr1,
  rtr2,
  ide,
  no_byte0,
  no_byte1,

  
  id_ok
  
  
);

parameter Tp = 1;

input         clk;
input         rst;
input  [28:0] id;
input         reset_mode;
input         acceptance_filter_mode;
input         extended_mode;

input   [7:0] acceptance_code_0;
input   [7:0] acceptance_code_1;
input   [7:0] acceptance_code_2;
input   [7:0] acceptance_code_3;
input   [7:0] acceptance_mask_0;
input   [7:0] acceptance_mask_1;
input   [7:0] acceptance_mask_2;
input   [7:0] acceptance_mask_3;
input         go_rx_crc_lim;
input         go_rx_inter;
input         go_error_frame;
input   [7:0] data0;
input   [7:0] data1;
input         rtr1;
input         rtr2;
input         ide;
input         no_byte0;
input         no_byte1;


output        id_ok;

reg           id_ok;

wire          match;
wire          match_sf_std;
wire          match_sf_ext;
wire          match_df_std;
wire          match_df_ext;


// Working in basic mode. ID match for standard format (11-bit ID).
assign match =        ( (id[3]  == acceptance_code_0[0] | acceptance_mask_0[0] ) &
                        (id[4]  == acceptance_code_0[1] | acceptance_mask_0[1] ) &
                        (id[5]  == acceptance_code_0[2] | acceptance_mask_0[2] ) &
                        (id[6]  == acceptance_code_0[3] | acceptance_mask_0[3] ) &
                        (id[7]  == acceptance_code_0[4] | acceptance_mask_0[4] ) &
                        (id[8]  == acceptance_code_0[5] | acceptance_mask_0[5] ) &
                        (id[9]  == acceptance_code_0[6] | acceptance_mask_0[6] ) &
                        (id[10] == acceptance_code_0[7] | acceptance_mask_0[7] )
                      );


// Working in extended mode. ID match for standard format (11-bit ID). Using single filter.
assign match_sf_std = ( (id[3]  == acceptance_code_0[0] | acceptance_mask_0[0] ) &
                        (id[4]  == acceptance_code_0[1] | acceptance_mask_0[1] ) &
                        (id[5]  == acceptance_code_0[2] | acceptance_mask_0[2] ) &
                        (id[6]  == acceptance_code_0[3] | acceptance_mask_0[3] ) &
                        (id[7]  == acceptance_code_0[4] | acceptance_mask_0[4] ) &
                        (id[8]  == acceptance_code_0[5] | acceptance_mask_0[5] ) &
                        (id[9]  == acceptance_code_0[6] | acceptance_mask_0[6] ) &
                        (id[10] == acceptance_code_0[7] | acceptance_mask_0[7] ) &

                        (rtr1   == acceptance_code_1[4] | acceptance_mask_1[4] ) &
                        (id[0]  == acceptance_code_1[5] | acceptance_mask_1[5] ) &
                        (id[1]  == acceptance_code_1[6] | acceptance_mask_1[6] ) &
                        (id[2]  == acceptance_code_1[7] | acceptance_mask_1[7] ) &

                        (data0[0]  == acceptance_code_2[0] | acceptance_mask_2[0] | no_byte0) &
                        (data0[1]  == acceptance_code_2[1] | acceptance_mask_2[1] | no_byte0) &
                        (data0[2]  == acceptance_code_2[2] | acceptance_mask_2[2] | no_byte0) &
                        (data0[3]  == acceptance_code_2[3] | acceptance_mask_2[3] | no_byte0) &
                        (data0[4]  == acceptance_code_2[4] | acceptance_mask_2[4] | no_byte0) &
                        (data0[5]  == acceptance_code_2[5] | acceptance_mask_2[5] | no_byte0) &
                        (data0[6]  == acceptance_code_2[6] | acceptance_mask_2[6] | no_byte0) &
                        (data0[7]  == acceptance_code_2[7] | acceptance_mask_2[7] | no_byte0) &

                        (data1[0]  == acceptance_code_3[0] | acceptance_mask_3[0] | no_byte1) &
                        (data1[1]  == acceptance_code_3[1] | acceptance_mask_3[1] | no_byte1) &
                        (data1[2]  == acceptance_code_3[2] | acceptance_mask_3[2] | no_byte1) &
                        (data1[3]  == acceptance_code_3[3] | acceptance_mask_3[3] | no_byte1) &
                        (data1[4]  == acceptance_code_3[4] | acceptance_mask_3[4] | no_byte1) &
                        (data1[5]  == acceptance_code_3[5] | acceptance_mask_3[5] | no_byte1) &
                        (data1[6]  == acceptance_code_3[6] | acceptance_mask_3[6] | no_byte1) &
                        (data1[7]  == acceptance_code_3[7] | acceptance_mask_3[7] | no_byte1)
                      );



// Working in extended mode. ID match for extended format (29-bit ID). Using single filter.
assign match_sf_ext = ( (id[21]  == acceptance_code_0[0] | acceptance_mask_0[0] ) &
                        (id[22]  == acceptance_code_0[1] | acceptance_mask_0[1] ) &
                        (id[23]  == acceptance_code_0[2] | acceptance_mask_0[2] ) &
                        (id[24]  == acceptance_code_0[3] | acceptance_mask_0[3] ) &
                        (id[25]  == acceptance_code_0[4] | acceptance_mask_0[4] ) &
                        (id[26]  == acceptance_code_0[5] | acceptance_mask_0[5] ) &
                        (id[27]  == acceptance_code_0[6] | acceptance_mask_0[6] ) &
                        (id[28]  == acceptance_code_0[7] | acceptance_mask_0[7] ) &

                        (id[13]  == acceptance_code_1[0] | acceptance_mask_1[0] ) &
                        (id[14]  == acceptance_code_1[1] | acceptance_mask_1[1] ) &
                        (id[15]  == acceptance_code_1[2] | acceptance_mask_1[2] ) &
                        (id[16]  == acceptance_code_1[3] | acceptance_mask_1[3] ) &
                        (id[17]  == acceptance_code_1[4] | acceptance_mask_1[4] ) &
                        (id[18]  == acceptance_code_1[5] | acceptance_mask_1[5] ) &
                        (id[19]  == acceptance_code_1[6] | acceptance_mask_1[6] ) &
                        (id[20]  == acceptance_code_1[7] | acceptance_mask_1[7] ) &

                        (id[5]  == acceptance_code_2[0] | acceptance_mask_2[0] ) &
                        (id[6]  == acceptance_code_2[1] | acceptance_mask_2[1] ) &
                        (id[7]  == acceptance_code_2[2] | acceptance_mask_2[2] ) &
                        (id[8]  == acceptance_code_2[3] | acceptance_mask_2[3] ) &
                        (id[9]  == acceptance_code_2[4] | acceptance_mask_2[4] ) &
                        (id[10] == acceptance_code_2[5] | acceptance_mask_2[5] ) &
                        (id[11] == acceptance_code_2[6] | acceptance_mask_2[6] ) &
                        (id[12] == acceptance_code_2[7] | acceptance_mask_2[7] ) &

                        (rtr2   == acceptance_code_3[2] | acceptance_mask_3[2] ) &
                        (id[0]  == acceptance_code_3[3] | acceptance_mask_3[3] ) &
                        (id[1]  == acceptance_code_3[4] | acceptance_mask_3[4] ) &
                        (id[2]  == acceptance_code_3[5] | acceptance_mask_3[5] ) &
                        (id[3]  == acceptance_code_3[6] | acceptance_mask_3[6] ) &
                        (id[4]  == acceptance_code_3[7] | acceptance_mask_3[7] )

                      );


// Working in extended mode. ID match for standard format (11-bit ID). Using double filter.
assign match_df_std = (((id[3]  == acceptance_code_0[0] | acceptance_mask_0[0] ) &
                        (id[4]  == acceptance_code_0[1] | acceptance_mask_0[1] ) &
                        (id[5]  == acceptance_code_0[2] | acceptance_mask_0[2] ) &
                        (id[6]  == acceptance_code_0[3] | acceptance_mask_0[3] ) &
                        (id[7]  == acceptance_code_0[4] | acceptance_mask_0[4] ) &
                        (id[8]  == acceptance_code_0[5] | acceptance_mask_0[5] ) &
                        (id[9]  == acceptance_code_0[6] | acceptance_mask_0[6] ) &
                        (id[10] == acceptance_code_0[7] | acceptance_mask_0[7] ) &

                        (rtr1   == acceptance_code_1[4] | acceptance_mask_1[4] ) &
                        (id[0]  == acceptance_code_1[5] | acceptance_mask_1[5] ) &
                        (id[1]  == acceptance_code_1[6] | acceptance_mask_1[6] ) &
                        (id[2]  == acceptance_code_1[7] | acceptance_mask_1[7] ) &

                        (data0[0] == acceptance_code_3[0] | acceptance_mask_3[0] | no_byte0) &
                        (data0[1] == acceptance_code_3[1] | acceptance_mask_3[1] | no_byte0) &
                        (data0[2] == acceptance_code_3[2] | acceptance_mask_3[2] | no_byte0) &
                        (data0[3] == acceptance_code_3[3] | acceptance_mask_3[3] | no_byte0) &
                        (data0[4] == acceptance_code_1[0] | acceptance_mask_1[0] | no_byte0) &
                        (data0[5] == acceptance_code_1[1] | acceptance_mask_1[1] | no_byte0) &
                        (data0[6] == acceptance_code_1[2] | acceptance_mask_1[2] | no_byte0) &
                        (data0[7] == acceptance_code_1[3] | acceptance_mask_1[3] | no_byte0) )
                        
                       |

                       ((id[3]  == acceptance_code_2[0] | acceptance_mask_2[0] ) &
                        (id[4]  == acceptance_code_2[1] | acceptance_mask_2[1] ) &
                        (id[5]  == acceptance_code_2[2] | acceptance_mask_2[2] ) &
                        (id[6]  == acceptance_code_2[3] | acceptance_mask_2[3] ) &
                        (id[7]  == acceptance_code_2[4] | acceptance_mask_2[4] ) &
                        (id[8]  == acceptance_code_2[5] | acceptance_mask_2[5] ) &
                        (id[9]  == acceptance_code_2[6] | acceptance_mask_2[6] ) &
                        (id[10] == acceptance_code_2[7] | acceptance_mask_2[7] ) &

                        (rtr1   == acceptance_code_3[4] | acceptance_mask_3[4] ) &
                        (id[0]  == acceptance_code_3[5] | acceptance_mask_3[5] ) &
                        (id[1]  == acceptance_code_3[6] | acceptance_mask_3[6] ) &
                        (id[2]  == acceptance_code_3[7] | acceptance_mask_3[7] ) )

                      );


// Working in extended mode. ID match for extended format (29-bit ID). Using double filter.
assign match_df_ext = (((id[21]  == acceptance_code_0[0] | acceptance_mask_0[0] ) &
                        (id[22]  == acceptance_code_0[1] | acceptance_mask_0[1] ) &
                        (id[23]  == acceptance_code_0[2] | acceptance_mask_0[2] ) &
                        (id[24]  == acceptance_code_0[3] | acceptance_mask_0[3] ) &
                        (id[25]  == acceptance_code_0[4] | acceptance_mask_0[4] ) &
                        (id[26]  == acceptance_code_0[5] | acceptance_mask_0[5] ) &
                        (id[27]  == acceptance_code_0[6] | acceptance_mask_0[6] ) &
                        (id[28]  == acceptance_code_0[7] | acceptance_mask_0[7] ) &

                        (id[13]  == acceptance_code_1[0] | acceptance_mask_1[0] ) &
                        (id[14]  == acceptance_code_1[1] | acceptance_mask_1[1] ) &
                        (id[15]  == acceptance_code_1[2] | acceptance_mask_1[2] ) &
                        (id[16]  == acceptance_code_1[3] | acceptance_mask_1[3] ) &
                        (id[17]  == acceptance_code_1[4] | acceptance_mask_1[4] ) &
                        (id[18]  == acceptance_code_1[5] | acceptance_mask_1[5] ) &
                        (id[19]  == acceptance_code_1[6] | acceptance_mask_1[6] ) &
                        (id[20]  == acceptance_code_1[7] | acceptance_mask_1[7] ) )
                        
                       |
                        
                       ((id[21]  == acceptance_code_2[0] | acceptance_mask_2[0] ) &
                        (id[22]  == acceptance_code_2[1] | acceptance_mask_2[1] ) &
                        (id[23]  == acceptance_code_2[2] | acceptance_mask_2[2] ) &
                        (id[24]  == acceptance_code_2[3] | acceptance_mask_2[3] ) &
                        (id[25]  == acceptance_code_2[4] | acceptance_mask_2[4] ) &
                        (id[26]  == acceptance_code_2[5] | acceptance_mask_2[5] ) &
                        (id[27]  == acceptance_code_2[6] | acceptance_mask_2[6] ) &
                        (id[28]  == acceptance_code_2[7] | acceptance_mask_2[7] ) &

                        (id[13]  == acceptance_code_3[0] | acceptance_mask_3[0] ) &
                        (id[14]  == acceptance_code_3[1] | acceptance_mask_3[1] ) &
                        (id[15]  == acceptance_code_3[2] | acceptance_mask_3[2] ) &
                        (id[16]  == acceptance_code_3[3] | acceptance_mask_3[3] ) &
                        (id[17]  == acceptance_code_3[4] | acceptance_mask_3[4] ) &
                        (id[18]  == acceptance_code_3[5] | acceptance_mask_3[5] ) &
                        (id[19]  == acceptance_code_3[6] | acceptance_mask_3[6] ) &
                        (id[20]  == acceptance_code_3[7] | acceptance_mask_3[7] ) )
                      );



// ID ok signal generation
always @ (posedge clk or posedge rst)
begin
  if (rst)
    id_ok <= 1'b0;
  else if (go_rx_crc_lim)                   // sample_point is already included in go_rx_crc_lim
    begin
      if (extended_mode)
        begin
          if (~acceptance_filter_mode)      // dual filter
            begin
              if (ide)                      // extended frame message
                id_ok <=#Tp match_df_ext;
              else                          // standard frame message
                id_ok <=#Tp match_df_std;
            end           
          else                              // single filter
            begin
              if (ide)                      // extended frame message
                id_ok <=#Tp match_sf_ext;
              else                          // standard frame message
                id_ok <=#Tp match_sf_std;
            end
        end
      else      
        id_ok <=#Tp match;
    end
  else if (reset_mode | go_rx_inter | go_error_frame)        // sample_point is already included in go_rx_inter
    id_ok <=#Tp 1'b0;
end









endmodule
