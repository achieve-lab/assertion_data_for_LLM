//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_transmitcontrol.v                                       ////
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
// Revision 1.5  2002/11/19 17:37:32  mohor
// When control frame (PAUSE) was sent, status was written in the
// eth_wishbone module and both TXB and TXC interrupts were set. Fixed.
// Only TXC interrupt is set.
//
// Revision 1.4  2002/01/23 10:28:16  mohor
// Link in the header changed.
//
// Revision 1.3  2001/10/19 08:43:51  mohor
// eth_timescale.v changed to timescale.v This is done because of the
// simulation of the few cores in a one joined project.
//
// Revision 1.2  2001/09/11 14:17:00  mohor
// Few little NCSIM warnings fixed.
//
// Revision 1.1  2001/08/06 14:44:29  mohor
// A define FPGA added to select between Artisan RAM (for ASIC) and Block Ram (For Virtex).
// Include files fixed to contain no path.
// File names and module names changed ta have a eth_ prologue in the name.
// File eth_timescale.v is used to define timescale
// All pin names on the top module are changed to contain _I, _O or _OE at the end.
// Bidirectional signal MDIO is changed to three signals (Mdc_O, Mdi_I, Mdo_O
// and Mdo_OE. The bidirectional signal must be created on the top level. This
// is done due to the ASIC tools.
//
// Revision 1.1  2001/07/30 21:23:42  mohor
// Directory structure changed. Files checked and joind together.
//
// Revision 1.1  2001/07/03 12:51:54  mohor
// Initial release of the MAC Control module.
//
//
//
//
//
//

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_fifo.v                                                  ////
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
// Revision 1.3  2002/04/22 13:45:52  mohor
// Generic ram or Xilinx ram can be used in fifo (selectable by setting
// ETH_FIFO_XILINX in eth_defines.v).
//
// Revision 1.2  2002/03/25 13:33:04  mohor
// When clear and read/write are active at the same time, cnt and pointers are
// set to 1.
//
// Revision 1.1  2002/02/05 16:44:39  mohor
// Both rx and tx part are finished. Tested with wb_clk_i between 10 and 200
// MHz. Statuses, overrun, control frame transmission and reception still  need
// to be fixed.
//
//

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  ethmac_defines.v                                            ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////                                                              ////
////  All additional information is available in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2002 Authors                             ////
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
// Renamed from eth_defines.v to ethmac_defines.v to fit better into
// OpenCores defined project structure 2011-08-04 olof@opencores.org
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.33  2003/11/12 18:24:58  tadejm
// WISHBONE slave changed and tested from only 32-bit accesss to byte access.
//
// Revision 1.32  2003/10/17 07:46:13  markom
// mbist signals updated according to newest convention
//
// Revision 1.31  2003/08/14 16:42:58  simons
// Artisan ram instance added.
//
// Revision 1.30  2003/06/13 11:55:37  mohor
// Define file in eth_cop.v is changed to eth_defines.v. Some defines were
// moved from tb_eth_defines.v to eth_defines.v.
//
// Revision 1.29  2002/11/19 18:13:49  mohor
// r_MiiMRst is not used for resetting the MIIM module. wb_rst used instead.
//
// Revision 1.28  2002/11/15 14:27:15  mohor
// Since r_Rst bit is not used any more, default value is changed to 0xa000.
//
// Revision 1.27  2002/11/01 18:19:34  mohor
// Defines fixed to use generic RAM by default.
//
// Revision 1.26  2002/10/24 18:53:03  mohor
// fpga define added.
//
// Revision 1.3  2002/10/11 16:57:54  igorm
// eth_defines.v tagged with rel_5 used.
//
// Revision 1.25  2002/10/10 16:47:44  mohor
// Defines changed to have ETH_ prolog.
// ETH_WISHBONE_B# define added.
//
// Revision 1.24  2002/10/10 16:33:11  mohor
// Bist added.
//
// Revision 1.23  2002/09/23 18:22:48  mohor
// Virtual Silicon RAM might be used in the ASIC implementation of the ethernet
// core.
//
// Revision 1.22  2002/09/04 18:36:49  mohor
// Defines for control registers added (ETH_TXCTRL and ETH_RXCTRL).
//
// Revision 1.21  2002/08/16 22:09:47  mohor
// Defines for register width added. mii_rst signal in MIIMODER register
// changed.
//
// Revision 1.20  2002/08/14 19:31:48  mohor
// Register TX_BD_NUM is changed so it contains value of the Tx buffer descriptors. No
// need to multiply or devide any more.
//
// Revision 1.19  2002/07/23 15:28:31  mohor
// Ram , used for BDs changed from generic_spram to eth_spram_256x32.
//
// Revision 1.18  2002/05/03 10:15:50  mohor
// Outputs registered. Reset changed for eth_wishbone module.
//
// Revision 1.17  2002/04/24 08:52:19  mohor
// Compiler directives added. Tx and Rx fifo size incremented. A "late collision"
// bug fixed.
//
// Revision 1.16  2002/03/19 12:53:29  mohor
// Some defines that are used in testbench only were moved to tb_eth_defines.v
// file.
//
// Revision 1.15  2002/02/26 16:11:32  mohor
// Number of interrupts changed
//
// Revision 1.14  2002/02/16 14:03:44  mohor
// Registered trimmed. Unused registers removed.
//
// Revision 1.13  2002/02/16 13:06:33  mohor
// EXTERNAL_DMA used instead of WISHBONE_DMA.
//
// Revision 1.12  2002/02/15 10:58:31  mohor
// Changed that were lost with last update put back to the file.
//
// Revision 1.11  2002/02/14 20:19:41  billditt
// Modified for Address Checking,
// addition of eth_addrcheck.v
//
// Revision 1.10  2002/02/12 17:01:19  mohor
// HASH0 and HASH1 registers added. 

// Revision 1.9  2002/02/08 16:21:54  mohor
// Rx status is written back to the BD.
//
// Revision 1.8  2002/02/05 16:44:38  mohor
// Both rx and tx part are finished. Tested with wb_clk_i between 10 and 200
// MHz. Statuses, overrun, control frame transmission and reception still  need
// to be fixed.
//
// Revision 1.7  2002/01/23 10:28:16  mohor
// Link in the header changed.
//
// Revision 1.6  2001/12/05 15:00:16  mohor
// RX_BD_NUM changed to TX_BD_NUM (holds number of TX descriptors
// instead of the number of RX descriptors).
//
// Revision 1.5  2001/12/05 10:21:37  mohor
// ETH_RX_BD_ADR register deleted. ETH_RX_BD_NUM is used instead.
//
// Revision 1.4  2001/11/13 14:23:56  mohor
// Generic memory model is used. Defines are changed for the same reason.
//
// Revision 1.3  2001/10/18 12:07:11  mohor
// Status signals changed, Adress decoding changed, interrupt controller
// added.
//
// Revision 1.2  2001/09/24 15:02:56  mohor
// Defines changed (All precede with ETH_). Small changes because some
// tools generate warnings when two operands are together. Synchronization
// between two clocks domains in eth_wishbonedma.v is changed (due to ASIC
// demands).
//
// Revision 1.1  2001/08/06 14:44:29  mohor
// A define FPGA added to select between Artisan RAM (for ASIC) and Block Ram (For Virtex).
// Include files fixed to contain no path.
// File names and module names changed ta have a eth_ prologue in the name.
// File eth_timescale.v is used to define timescale
// All pin names on the top module are changed to contain _I, _O or _OE at the end.
// Bidirectional signal MDIO is changed to three signals (Mdc_O, Mdi_I, Mdo_O
// and Mdo_OE. The bidirectional signal must be created on the top level. This
// is done due to the ASIC tools.
//
// Revision 1.1  2001/07/30 21:23:42  mohor
// Directory structure changed. Files checked and joind together.
//
//
//
//
//



//`define ETH_BIST                    // Bist for usage with Virtual Silicon RAMS



// Ethernet implemented in Xilinx Chips (uncomment following lines)
// `define ETH_FIFO_XILINX             // Use Xilinx distributed ram for tx and rx fifo
// `define ETH_XILINX_RAMB4            // Selection of the used memory for Buffer descriptors
                                      // Core is going to be implemented in Virtex FPGA and contains Virtex 
                                      // specific elements. 

// Ethernet implemented in Altera Chips (uncomment following lines)
//`define ETH_ALTERA_ALTSYNCRAM

// Ethernet implemented in ASIC with Virtual Silicon RAMs
// `define ETH_VIRTUAL_SILICON_RAM     // Virtual Silicon RAMS used storing buffer decriptors (ASIC implementation)

// Ethernet implemented in ASIC with Artisan RAMs
// `define ETH_ARTISAN_RAM             // Artisan RAMS used storing buffer decriptors (ASIC implementation)

// Uncomment when Avalon bus is used
//`define ETH_AVALON_BUS
//  Changes : Ran Minerbi



























































































































// Outputs are registered (uncomment when needed)


// Settings for TX FIFO




// Settings for RX FIFO




// Burst length



// WISHBONE interface is Revision B3 compliant (uncomment when needed)
//`define ETH_WISHBONE_B3

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

module eth_fifo (data_in, data_out, clk, reset, write, read, clear,
                 almost_full, full, almost_empty, empty, cnt);

parameter DATA_WIDTH    = 32;
parameter DEPTH         = 8;
parameter CNT_WIDTH     = 4;

input                     clk;
input                     reset;
input                     write;
input                     read;
input                     clear;
input   [DATA_WIDTH-1:0]  data_in;

output  [DATA_WIDTH-1:0]  data_out;
output                    almost_full;
output                    full;
output                    almost_empty;
output                    empty;
output  [CNT_WIDTH-1:0]   cnt;



  

    reg     [DATA_WIDTH-1:0]  fifo  [0:DEPTH-1];
    reg     [DATA_WIDTH-1:0]  data_out;
  


reg     [CNT_WIDTH-1:0]   cnt;
reg     [CNT_WIDTH-2:0]   read_pointer;
reg     [CNT_WIDTH-2:0]   write_pointer;


always @ (posedge clk or posedge reset)
begin
  if(reset)
    cnt <= 0;
  else
  if(clear)
    cnt <= { {(CNT_WIDTH-1){1'b0}}, read^write};
  else
  if(read ^ write)
    if(read)
      cnt <= cnt - 1;
    else
      cnt <= cnt + 1;
end


always @ (posedge clk or posedge reset)
begin
  if(reset)
    read_pointer <= 0;
  else
  if(clear)
    read_pointer <= { {(CNT_WIDTH-2){1'b0}}, read};
  else
  if(read & ~empty)
    read_pointer <= read_pointer + 1'b1;
end

always @ (posedge clk or posedge reset)
begin
  if(reset)
    write_pointer <= 0;
  else
  if(clear)
    write_pointer <= { {(CNT_WIDTH-2){1'b0}}, write};
  else
  if(write & ~full)
    write_pointer <= write_pointer + 1'b1;
end

assign empty = ~(|cnt);
assign almost_empty = cnt == 1;
assign full  = cnt == DEPTH;
assign almost_full  = &cnt[CNT_WIDTH-2:0];












   // !ETH_FIFO_XILINX










   // !ETH_ALTERA_ALTSYNCRAM
  always @ (posedge clk)
  begin
    if(write & clear)
      fifo[0] <= data_in;
    else
   if(write & ~full)
      fifo[write_pointer] <= data_in;
  end
  

  always @ (posedge clk)
  begin
    if(clear)
      data_out <= fifo[0];
    else
      data_out <= fifo[read_pointer];
  end
  // !ETH_ALTERA_ALTSYNCRAM
  // !ETH_FIFO_XILINX


endmodule
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


module eth_transmitcontrol (MTxClk, TxReset, TxUsedDataIn, TxUsedDataOut, TxDoneIn, TxAbortIn, 
                            TxStartFrmIn, TPauseRq, TxUsedDataOutDetected, TxFlow, DlyCrcEn, 
                            TxPauseTV, MAC, TxCtrlStartFrm, TxCtrlEndFrm, SendingCtrlFrm, CtrlMux, 
                            ControlData, WillSendControlFrame, BlockTxDone
                           );


input         MTxClk;
input         TxReset;
input         TxUsedDataIn;
input         TxUsedDataOut;
input         TxDoneIn;
input         TxAbortIn;
input         TxStartFrmIn;
input         TPauseRq;
input         TxUsedDataOutDetected;
input         TxFlow;
input         DlyCrcEn;
input  [15:0] TxPauseTV;
input  [47:0] MAC;

output        TxCtrlStartFrm;
output        TxCtrlEndFrm;
output        SendingCtrlFrm;
output        CtrlMux;
output [7:0]  ControlData;
output        WillSendControlFrame;
output        BlockTxDone;

reg           SendingCtrlFrm;
reg           CtrlMux;
reg           WillSendControlFrame;
reg    [3:0]  DlyCrcCnt;
reg    [5:0]  ByteCnt;
reg           ControlEnd_q;
reg    [7:0]  MuxedCtrlData;
reg           TxCtrlStartFrm;
reg           TxCtrlStartFrm_q;
reg           TxCtrlEndFrm;
reg    [7:0]  ControlData;
reg           TxUsedDataIn_q;
reg           BlockTxDone;

wire          IncrementDlyCrcCnt;
wire          ResetByteCnt;
wire          IncrementByteCnt;
wire          ControlEnd;
wire          IncrementByteCntBy2;
wire          EnableCnt;


// A command for Sending the control frame is active (latched)
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    WillSendControlFrame <=  1'b0;
  else
  if(TxCtrlEndFrm & CtrlMux)
    WillSendControlFrame <=  1'b0;
  else
  if(TPauseRq & TxFlow)
    WillSendControlFrame <=  1'b1;
end


// Generation of the transmit control packet start frame
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    TxCtrlStartFrm <=  1'b0;
  else
  if(TxUsedDataIn_q & CtrlMux)
    TxCtrlStartFrm <=  1'b0;
  else
  if(WillSendControlFrame & ~TxUsedDataOut & (TxDoneIn | TxAbortIn | TxStartFrmIn | (~TxUsedDataOutDetected)))
    TxCtrlStartFrm <=  1'b1;
end



// Generation of the transmit control packet end frame
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    TxCtrlEndFrm <=  1'b0;
  else
  if(ControlEnd | ControlEnd_q)
    TxCtrlEndFrm <=  1'b1;
  else
    TxCtrlEndFrm <=  1'b0;
end


// Generation of the multiplexer signal (controls muxes for switching between
// normal and control packets)
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    CtrlMux <=  1'b0;
  else
  if(WillSendControlFrame & ~TxUsedDataOut)
    CtrlMux <=  1'b1;
  else
  if(TxDoneIn)
    CtrlMux <=  1'b0;
end



// Generation of the Sending Control Frame signal (enables padding and CRC)
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    SendingCtrlFrm <=  1'b0;
  else
  if(WillSendControlFrame & TxCtrlStartFrm)
    SendingCtrlFrm <=  1'b1;
  else
  if(TxDoneIn)
    SendingCtrlFrm <=  1'b0;
end


always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    TxUsedDataIn_q <=  1'b0;
  else
    TxUsedDataIn_q <=  TxUsedDataIn;
end



// Generation of the signal that will block sending the Done signal to the eth_wishbone module
// While sending the control frame
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    BlockTxDone <=  1'b0;
  else
  if(TxCtrlStartFrm)
    BlockTxDone <=  1'b1;
  else
  if(TxStartFrmIn)
    BlockTxDone <=  1'b0;
end


always @ (posedge MTxClk)
begin
  ControlEnd_q     <=  ControlEnd;
  TxCtrlStartFrm_q <=  TxCtrlStartFrm;
end


assign IncrementDlyCrcCnt = CtrlMux & TxUsedDataIn &  ~DlyCrcCnt[2];


// Delayed CRC counter
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    DlyCrcCnt <=  4'h0;
  else
  if(ResetByteCnt)
    DlyCrcCnt <=  4'h0;
  else
  if(IncrementDlyCrcCnt)
    DlyCrcCnt <=  DlyCrcCnt + 4'd1;
end

             
assign ResetByteCnt = TxReset | (~TxCtrlStartFrm & (TxDoneIn | TxAbortIn));
assign IncrementByteCnt = CtrlMux & (TxCtrlStartFrm & ~TxCtrlStartFrm_q & ~TxUsedDataIn | TxUsedDataIn & ~ControlEnd);
assign IncrementByteCntBy2 = CtrlMux & TxCtrlStartFrm & (~TxCtrlStartFrm_q) & TxUsedDataIn;     // When TxUsedDataIn and CtrlMux are set at the same time

assign EnableCnt = (~DlyCrcEn | DlyCrcEn & (&DlyCrcCnt[1:0]));
// Byte counter
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    ByteCnt <=  6'h0;
  else
  if(ResetByteCnt)
    ByteCnt <=  6'h0;
  else
  if(IncrementByteCntBy2 & EnableCnt)
    ByteCnt <=  (ByteCnt[5:0] ) + 6'd2;
  else
  if(IncrementByteCnt & EnableCnt)
    ByteCnt <=  (ByteCnt[5:0] ) + 6'd1;
end


assign ControlEnd = ByteCnt[5:0] == 6'h22;


// Control data generation (goes to the TxEthMAC module)
always @ (ByteCnt or DlyCrcEn or MAC or TxPauseTV or DlyCrcCnt)
begin
  case(ByteCnt)
    6'h0:    if(~DlyCrcEn | DlyCrcEn & (&DlyCrcCnt[1:0]))
               MuxedCtrlData[7:0] = 8'h01;                   // Reserved Multicast Address
             else
						 	 MuxedCtrlData[7:0] = 8'h0;
    6'h2:      MuxedCtrlData[7:0] = 8'h80;
    6'h4:      MuxedCtrlData[7:0] = 8'hC2;
    6'h6:      MuxedCtrlData[7:0] = 8'h00;
    6'h8:      MuxedCtrlData[7:0] = 8'h00;
    6'hA:      MuxedCtrlData[7:0] = 8'h01;
    6'hC:      MuxedCtrlData[7:0] = MAC[47:40];
    6'hE:      MuxedCtrlData[7:0] = MAC[39:32];
    6'h10:     MuxedCtrlData[7:0] = MAC[31:24];
    6'h12:     MuxedCtrlData[7:0] = MAC[23:16];
    6'h14:     MuxedCtrlData[7:0] = MAC[15:8];
    6'h16:     MuxedCtrlData[7:0] = MAC[7:0];
    6'h18:     MuxedCtrlData[7:0] = 8'h88;                   // Type/Length
    6'h1A:     MuxedCtrlData[7:0] = 8'h08;
    6'h1C:     MuxedCtrlData[7:0] = 8'h00;                   // Opcode
    6'h1E:     MuxedCtrlData[7:0] = 8'h01;
    6'h20:     MuxedCtrlData[7:0] = TxPauseTV[15:8];         // Pause timer value
    6'h22:     MuxedCtrlData[7:0] = TxPauseTV[7:0];
    default:   MuxedCtrlData[7:0] = 8'h0;
  endcase
end
// Latched Control data
always @ (posedge MTxClk or posedge TxReset)
begin
  if(TxReset)
    ControlData[7:0] <=  8'h0;
  else
  if(~ByteCnt[0])
    ControlData[7:0] <=  MuxedCtrlData[7:0];
end



endmodule


module eth_L2_Uc_Wrapper  (MTxClk, TxReset, TxDataIn, MAC, DMAC, TxData_wrapped_out, TxAbortIn, 
                            TxStartFrmIn, TxEndFrmOut_uc  ,TxEndFrmIn
                           );


input          MTxClk;
input          TxReset;
input   [7:0]  TxDataIn;
input          TxStartFrmIn;
input  [47:0]  MAC ,DMAC;
input          TxAbortIn;
input          TxEndFrmIn;
output         TxEndFrmOut_uc;
output  [7:0]  TxData_wrapped_out;

wire     [7:0]  TxData_wrapped_out_wire;
reg     [7:0]  TxData_wrapped_out;
reg     [7:0]  ByteCnt;
//reg     [47:0] DMAC;
//reg            TxEndFrmOut_uc;
reg            Divided_2_clk ;
reg            write_fifo;
reg            read_fifo;
reg            clear;
reg      [8:0] PreNib15State;
wire            TxBufferFull;
wire            TxBufferAlmostFull;
wire            TxBufferAlmostEmpty;
wire            TxBufferEmpty;
wire    [4:0]  txfifo_cnt;
reg            StateCount , StateLeftinQ;
initial begin
 //DMAC[47:0] = 48'hFFCCBB440011;
 StateCount = 1'b0;
 read_fifo = 1'b0;
 StateLeftinQ = 1'b0;
 PreNib15State = 1'b0;
 Divided_2_clk=0;
 end
 assign  TxEndFrmOut_uc = TxBufferEmpty & StateLeftinQ;
 
   always @(posedge TxStartFrmIn)
    begin
          Divided_2_clk=1;
        end
   always@ (posedge MTxClk)
   begin
       Divided_2_clk <=  MTxClk^Divided_2_clk;
       //inputs: startFrm,EndFrm,bufferempty
  // TxData_wrapped_out <=  TxDataIn;
  // 0. ZeroState - state zero - before startfrm after staeleft in Q  -  StateCount=0    StateLeftinQ=0    PreNib15State=0
  // 1. PreNib15State - TxStartFrm started and not finished - set the sfd in this case  StateCount=0    StateLeftinQ=0      PreNib15State=1
  // 2. StateCount - between start - end frame - statecount    StateCount=1    StateLeftinQ=0       PreNib15State=0
  // 3. StateLeftinQ - left data in queue - between end frame and que empty  StateCount=0    StateLeftinQ=1   PreNib15State=0
   case ({TxStartFrmIn,TxEndFrmIn})       
       2'b10: if (StateCount==0) StateCount<=1;
       2'b01: if (StateCount==1) StateCount<=0;
   endcase

   case ({TxEndFrmIn,TxBufferEmpty})
       2'b10:  if (StateLeftinQ==0) StateLeftinQ<=1;
       2'b01:  if (StateLeftinQ==1) StateLeftinQ<=0;
   endcase
  
  //  TxEndFrmOut_uc <= TxBufferEmpty & StateLeftinQ;
       
      end // always
  
      always@ (negedge Divided_2_clk)
            begin
            if (StateCount | StateLeftinQ | TxStartFrmIn)
             begin
               case (ByteCnt)
                 //  7'h:  begin    TxData_wrapped_out[7:0] <= TxDataIn; read_fifo<=0;     end
                 //  7'h0:  begin    TxData_wrapped_out[7:0] <= TxDataIn; read_fifo<=0;     end
                 //  7'h:  begin    TxData_wrapped_out[7:0] <= TxDataIn;   read_fifo<=0;     end
                   7'h0:  begin    TxData_wrapped_out[7:0] <= DMAC[47:40]; read_fifo<=0;     end
                   7'h1:  begin    TxData_wrapped_out[7:0] <= DMAC[39:32]; read_fifo<=0;     end
                   7'h2:  begin    TxData_wrapped_out[7:0] <= DMAC[31:24]; read_fifo<=0;     end
                   7'h3:  begin    TxData_wrapped_out[7:0] <= DMAC[23:16]; read_fifo<=0;     end
                   7'h4:  begin    TxData_wrapped_out[7:0] <= DMAC[15:8];  read_fifo<=0;     end
                   7'h5:  begin    TxData_wrapped_out[7:0] <= DMAC[7:0];   read_fifo<=0;     end
                   7'h6:  begin    TxData_wrapped_out[7:0] <= MAC[47:40];  read_fifo<=0;     end
                   7'h7:  begin    TxData_wrapped_out[7:0] <= MAC[39:32];  read_fifo<=0;     end
                   7'h8:  begin    TxData_wrapped_out[7:0] <= MAC[31:24];  read_fifo<=0;     end
                   7'h9:  begin    TxData_wrapped_out[7:0] <= MAC[23:16];  read_fifo<=0;     end
                   7'ha:  begin    TxData_wrapped_out[7:0] <= MAC[15:8];   read_fifo<=0;     end
                   7'hb:  begin    TxData_wrapped_out[7:0] <= MAC[7:0];    read_fifo<=0;     end
                   default: begin                    
                          read_fifo<=1;               //deque      read_fifo & not empty
                          TxData_wrapped_out<=TxData_wrapped_out_wire;                    
                           end
                endcase
             end
             else begin
                          ByteCnt <=0;
                          read_fifo<=0;               //deque      read_fifo & not empty
                          TxData_wrapped_out<=8'h0;
                          PreNib15State <= 9'h0;
                   end

             if (StateCount)
                 begin
                  PreNib15State <=  PreNib15State + 1;
                 end
             if (StateCount & PreNib15State >= 8)
                   begin
                   ByteCnt = ByteCnt+1;
                   write_fifo <= 1;
                   end
                else   begin
                   write_fifo<=0;
             end
            
         end //divided clk always
       
      eth_fifo #(
           .DATA_WIDTH(8),
           .DEPTH(32),
           .CNT_WIDTH(5))
 L2_fifo (
         .clk            (Divided_2_clk),
         .reset          (TxReset),      
         // Inputs
         .data_in        (TxDataIn),
         .write          (write_fifo),
         .read           (read_fifo),
         .clear          (TxFifoClear),
         // Outputs
         .data_out       (TxData_wrapped_out_wire), 
         .full           (TxBufferFull),
         .almost_full    (TxBufferAlmostFull),
         .almost_empty   (TxBufferAlmostEmpty), 
         .empty          (TxBufferEmpty),
         .cnt            (txfifo_cnt)
        );

 
     
    
endmodule

      
