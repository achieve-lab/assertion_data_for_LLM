//////////////////////////////////////////////////////////////////////
////                                                              ////
////  can_fifo.v                                                  ////
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
// Revision 1.27  2004/11/18 12:39:34  igorm
// Fixes for compatibility after the SW reset.
//
// Revision 1.26  2004/02/08 14:30:57  mohor
// Header changed.
//
// Revision 1.25  2003/10/23 16:52:17  mohor
// Active high/low problem when Altera devices are used. Bug fixed by
// Rojhalat Ibrahim.
//
// Revision 1.24  2003/10/17 05:55:20  markom
// mbist signals updated according to newest convention
//
// Revision 1.23  2003/09/05 12:46:41  mohor
// ALTERA_RAM supported.
//
// Revision 1.22  2003/08/20 09:59:16  mohor
// Artisan RAM fixed (when not using BIST).
//
// Revision 1.21  2003/08/14 16:04:52  simons
// Artisan ram instances added.
//
// Revision 1.20  2003/07/16 14:00:45  mohor
// Fixed according to the linter.
//
// Revision 1.19  2003/07/03 09:30:44  mohor
// PCI_BIST replaced with CAN_BIST.
//
// Revision 1.18  2003/06/27 22:14:23  simons
// Overrun fifo implemented with FFs, because it is not possible to create such a memory.
//
// Revision 1.17  2003/06/27 20:56:15  simons
// Virtual silicon ram instances added.
//
// Revision 1.16  2003/06/18 23:03:44  mohor
// Typo fixed.
//
// Revision 1.15  2003/06/11 09:37:05  mohor
// overrun and length_info fifos are initialized at the end of reset.
//
// Revision 1.14  2003/03/05 15:02:30  mohor
// Xilinx RAM added.
//
// Revision 1.13  2003/03/01 22:53:33  mohor
// Actel APA ram supported.
//
// Revision 1.12  2003/02/19 14:44:03  mohor
// CAN core finished. Host interface added. Registers finished.
// Synchronization to the wishbone finished.
//
// Revision 1.11  2003/02/14 20:17:01  mohor
// Several registers added. Not finished, yet.
//
// Revision 1.10  2003/02/11 00:56:06  mohor
// Wishbone interface added.
//
// Revision 1.9  2003/02/09 02:24:33  mohor
// Bosch license warning added. Error counters finished. Overload frames
// still need to be fixed.
//
// Revision 1.8  2003/01/31 01:13:38  mohor
// backup.
//
// Revision 1.7  2003/01/17 17:44:31  mohor
// Fifo corrected to be synthesizable.
//
// Revision 1.6  2003/01/15 13:16:47  mohor
// When a frame with "remote request" is received, no data is stored
// to fifo, just the frame information (identifier, ...). Data length
// that is stored is the received data length and not the actual data
// length that is stored to fifo.
//
// Revision 1.5  2003/01/14 17:25:09  mohor
// Addresses corrected to decimal values (previously hex).
//
// Revision 1.4  2003/01/14 12:19:35  mohor
// rx_fifo is now working.
//
// Revision 1.3  2003/01/09 21:54:45  mohor
// rx fifo added. Not 100 % verified, yet.
//
// Revision 1.2  2003/01/09 14:46:58  mohor
// Temporary files (backup).
//
// Revision 1.1  2003/01/08 02:10:55  mohor
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

module can_fifo
( 
  clk,
  rst,

  wr,

  data_in,
  addr,
  data_out,
  fifo_selected,

  reset_mode,
  release_buffer,
  extended_mode,
  overrun,
  info_empty,
  info_cnt







);

parameter Tp = 1;

input         clk;
input         rst;
input         wr;
input   [7:0] data_in;
input   [5:0] addr;
input         reset_mode;
input         release_buffer;
input         extended_mode;
input         fifo_selected;

output  [7:0] data_out;
output        overrun;
output        info_empty;
output  [6:0] info_cnt;




















  reg     [7:0] fifo [0:63];
  reg     [3:0] length_fifo[0:63];
  reg           overrun_info[0:63];






reg     [5:0] rd_pointer;
reg     [5:0] wr_pointer;
reg     [5:0] read_address;
reg     [5:0] wr_info_pointer;
reg     [5:0] rd_info_pointer;
reg           wr_q;
reg     [3:0] len_cnt;
reg     [6:0] fifo_cnt;
reg     [6:0] info_cnt;
reg           latch_overrun;
reg           initialize_memories;

wire    [3:0] length_info;
wire          write_length_info;
wire          fifo_empty;
wire          fifo_full;
wire          info_full;

assign write_length_info = (~wr) & wr_q;

// Delayed write signal
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_q <=#Tp 1'b0;
  else if (reset_mode)
    wr_q <=#Tp 1'b0;
  else
    wr_q <=#Tp wr;
end


// length counter
always @ (posedge clk or posedge rst)
begin
  if (rst)
    len_cnt <= 4'h0;
  else if (reset_mode | write_length_info)
    len_cnt <=#Tp 4'h0;
  else if (wr & (~fifo_full))
    len_cnt <=#Tp len_cnt + 1'b1;
end


// wr_info_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_info_pointer <= 6'h0;
  else if (write_length_info & (~info_full) | initialize_memories)
    wr_info_pointer <=#Tp wr_info_pointer + 1'b1;
  else if (reset_mode)
    wr_info_pointer <=#Tp rd_info_pointer;
end



// rd_info_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    rd_info_pointer <= 6'h0;
  else if (release_buffer & (~info_full))
    rd_info_pointer <=#Tp rd_info_pointer + 1'b1;
end


// rd_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    rd_pointer <= 5'h0;
  else if (release_buffer & (~fifo_empty))
    rd_pointer <=#Tp rd_pointer + {2'h0, length_info};
end


// wr_pointer
always @ (posedge clk or posedge rst)
begin
  if (rst)
    wr_pointer <= 5'h0;
  else if (reset_mode)
    wr_pointer <=#Tp rd_pointer;
  else if (wr & (~fifo_full))
    wr_pointer <=#Tp wr_pointer + 1'b1;
end


// latch_overrun
always @ (posedge clk or posedge rst)
begin
  if (rst)
    latch_overrun <= 1'b0;
  else if (reset_mode | write_length_info)
    latch_overrun <=#Tp 1'b0;
  else if (wr & fifo_full)
    latch_overrun <=#Tp 1'b1;
end


// Counting data in fifo
always @ (posedge clk or posedge rst)
begin
  if (rst)
    fifo_cnt <= 7'h0;
  else if (reset_mode)
    fifo_cnt <=#Tp 7'h0;
  else if (wr & (~release_buffer) & (~fifo_full))
    fifo_cnt <=#Tp fifo_cnt + 1'b1;
  else if ((~wr) & release_buffer & (~fifo_empty))
    fifo_cnt <=#Tp fifo_cnt - {3'h0, length_info};
  else if (wr & release_buffer & (~fifo_full) & (~fifo_empty))
    fifo_cnt <=#Tp fifo_cnt - {3'h0, length_info} + 1'b1;
end

assign fifo_full = fifo_cnt == 7'd64;
assign fifo_empty = fifo_cnt == 7'd0;


// Counting data in length_fifo and overrun_info fifo
always @ (posedge clk or posedge rst)
begin
  if (rst)
    info_cnt <=#Tp 7'h0;
  else if (reset_mode)
    info_cnt <=#Tp 7'h0;
  else if (write_length_info ^ release_buffer)
    begin
      if (release_buffer & (~info_empty))
        info_cnt <=#Tp info_cnt - 1'b1;
      else if (write_length_info & (~info_full))
        info_cnt <=#Tp info_cnt + 1'b1;
    end
end
        
assign info_full = info_cnt == 7'd64;
assign info_empty = info_cnt == 7'd0;


// Selecting which address will be used for reading data from rx fifo
always @ (extended_mode or rd_pointer or addr)
begin
  if (extended_mode)      // extended mode
    read_address = rd_pointer + (addr - 6'd16);
  else                    // normal mode
    read_address = rd_pointer + (addr - 6'd20);
end


always @ (posedge clk or posedge rst)
begin
  if (rst)
    initialize_memories <= 1'b1;
  else if (&wr_info_pointer)
    initialize_memories <=#Tp 1'b0;
end






































































































































































































































































































  // writing data to fifo
  always @ (posedge clk)
  begin
    if (wr & (~fifo_full))
      fifo[wr_pointer] <=#Tp data_in;
  end

  // reading from fifo
  assign data_out = fifo[read_address];


  // writing length_fifo
  always @ (posedge clk)
  begin
    if (write_length_info & (~info_full) | initialize_memories)
      length_fifo[wr_info_pointer] <=#Tp len_cnt & {4{~initialize_memories}};
  end


  // reading length_fifo
  assign length_info = length_fifo[rd_info_pointer];

  // overrun_info
  always @ (posedge clk)
  begin
    if (write_length_info & (~info_full) | initialize_memories)
      overrun_info[wr_info_pointer] <=#Tp (latch_overrun | (wr & fifo_full)) & (~initialize_memories);
  end
  
  
  // reading overrun
  assign overrun = overrun_info[rd_info_pointer];












endmodule
