//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_registers.v                                             ////
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
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.28  2004/04/26 15:26:23  igorm
// - Bug connected to the TX_BD_NUM_Wr signal fixed (bug came in with the
//   previous update of the core.
// - TxBDAddress is set to 0 after the TX is enabled in the MODER register.
// - RxBDAddress is set to r_TxBDNum<<1 after the RX is enabled in the MODER
//   register. (thanks to Mathias and Torbjorn)
// - Multicast reception was fixed. Thanks to Ulrich Gries
//
// Revision 1.27  2004/04/26 11:42:17  igorm
// TX_BD_NUM_Wr error fixed. Error was entered with the last check-in.
//
// Revision 1.26  2003/11/12 18:24:59  tadejm
// WISHBONE slave changed and tested from only 32-bit accesss to byte access.
//
// Revision 1.25  2003/04/18 16:26:25  mohor
// RxBDAddress was updated also when value to r_TxBDNum was written with
// greater value than allowed.
//
// Revision 1.24  2002/11/22 01:57:06  mohor
// Rx Flow control fixed. CF flag added to the RX buffer descriptor. RxAbort
// synchronized.
//
// Revision 1.23  2002/11/19 18:13:49  mohor
// r_MiiMRst is not used for resetting the MIIM module. wb_rst used instead.
//
// Revision 1.22  2002/11/14 18:37:20  mohor
// r_Rst signal does not reset any module any more and is removed from the design.
//
// Revision 1.21  2002/09/10 10:35:23  mohor
// Ethernet debug registers removed.
//
// Revision 1.20  2002/09/04 18:40:25  mohor
// ETH_TXCTRL and ETH_RXCTRL registers added. Interrupts related to
// the control frames connected.
//
// Revision 1.19  2002/08/19 16:01:40  mohor
// Only values smaller or equal to 0x80 can be written to TX_BD_NUM register.
// r_TxEn and r_RxEn depend on the limit values of the TX_BD_NUMOut.
//
// Revision 1.18  2002/08/16 22:28:23  mohor
// Syntax error fixed.
//
// Revision 1.17  2002/08/16 22:23:03  mohor
// Syntax error fixed.
//
// Revision 1.16  2002/08/16 22:14:22  mohor
// Synchronous reset added to all registers. Defines used for width. r_MiiMRst
// changed from bit position 10 to 9.
//
// Revision 1.15  2002/08/14 18:26:37  mohor
// LinkFailRegister is reflecting the status of the PHY's link fail status bit.
//
// Revision 1.14  2002/04/22 14:03:44  mohor
// Interrupts are visible in the ETH_INT_SOURCE regardless if they are enabled
// or not.
//
// Revision 1.13  2002/02/26 16:18:09  mohor
// Reset values are passed to registers through parameters
//
// Revision 1.12  2002/02/17 13:23:42  mohor
// Define missmatch fixed.
//
// Revision 1.11  2002/02/16 14:03:44  mohor
// Registered trimmed. Unused registers removed.
//
// Revision 1.10  2002/02/15 11:08:25  mohor
// File format fixed a bit.
//
// Revision 1.9  2002/02/14 20:19:41  billditt
// Modified for Address Checking,
// addition of eth_addrcheck.v
//
// Revision 1.8  2002/02/12 17:01:19  mohor
// HASH0 and HASH1 registers added. 

// Revision 1.7  2002/01/23 10:28:16  mohor
// Link in the header changed.
//
// Revision 1.6  2001/12/05 15:00:16  mohor
// RX_BD_NUM changed to TX_BD_NUM (holds number of TX descriptors
// instead of the number of RX descriptors).
//
// Revision 1.5  2001/12/05 10:22:19  mohor
// ETH_RX_BD_ADR register deleted. ETH_RX_BD_NUM is used instead.
//
// Revision 1.4  2001/10/19 08:43:51  mohor
// eth_timescale.v changed to timescale.v This is done because of the
// simulation of the few cores in a one joined project.
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
// Revision 1.2  2001/08/02 09:25:31  mohor
// Unconnected signals are now connected.
//
// Revision 1.1  2001/07/30 21:23:42  mohor
// Directory structure changed. Files checked and joind together.
//
//
//
//
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
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_register.v                                              ////
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
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.5  2002/08/16 12:33:27  mohor
// Parameter ResetValue changed to capital letters.
//
// Revision 1.4  2002/02/26 16:18:08  mohor
// Reset values are passed to registers through parameters
//
// Revision 1.3  2002/01/23 10:28:16  mohor
// Link in the header changed.
//
// Revision 1.2  2001/10/19 08:43:51  mohor
// eth_timescale.v changed to timescale.v This is done because of the
// simulation of the few cores in a one joined project.
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
//
//
//
//
//
//

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


module eth_register(DataIn, DataOut, Write, Clk, Reset, SyncReset);

parameter WIDTH = 8; // default parameter of the register width
parameter RESET_VALUE = 0;

input [WIDTH-1:0] DataIn;

input Write;
input Clk;
input Reset;
input SyncReset;

output [WIDTH-1:0] DataOut;
reg    [WIDTH-1:0] DataOut;



always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    DataOut<= RESET_VALUE;
  else
  if(SyncReset)
    DataOut<= RESET_VALUE;
  else
  if(Write)                         // write
    DataOut<= DataIn;
end



endmodule   // Register

module eth_registers( DataIn, Address, Rw, Cs, Clk, Reset, DataOut, 
                      r_RecSmall, r_Pad, r_HugEn, r_CrcEn, r_DlyCrcEn, 
                      r_FullD, r_ExDfrEn, r_NoBckof, r_LoopBck, r_IFG, 
                      r_Pro, r_Iam, r_Bro, r_NoPre, r_TxEn, r_RxEn, 
                      TxB_IRQ, TxE_IRQ, RxB_IRQ, RxE_IRQ, Busy_IRQ, 
                      r_IPGT, r_IPGR1, r_IPGR2, r_MinFL, r_MaxFL, r_MaxRet, 
                      r_CollValid, r_TxFlow, r_RxFlow, r_PassAll, 
                      r_MiiNoPre, r_ClkDiv, r_WCtrlData, r_RStat, r_ScanStat, 
                      r_RGAD, r_FIAD, r_CtrlData, NValid_stat, Busy_stat, 
                      LinkFail, r_MAC, r_DMAC, WCtrlDataStart, RStatStart,
                      UpdateMIIRX_DATAReg, Prsd, r_TxBDNum, int_o,
                      r_HASH0, r_HASH1, r_TxPauseTV, r_TxPauseRq, RstTxPauseRq, TxCtrlEndFrm,
                      dbg_dat,
                      StartTxDone, TxClk, RxClk, SetPauseTimer
                    );

input [31:0] DataIn;
input [7:0] Address;

input Rw;
input [3:0] Cs;
input Clk;
input Reset;

input WCtrlDataStart;
input RStatStart;

input UpdateMIIRX_DATAReg;
input [15:0] Prsd;

output [31:0] DataOut;
reg    [31:0] DataOut;

output r_RecSmall;
output r_Pad;
output r_HugEn;
output r_CrcEn;
output r_DlyCrcEn;
output r_FullD;
output r_ExDfrEn;
output r_NoBckof;
output r_LoopBck;
output r_IFG;
output r_Pro;
output r_Iam;
output r_Bro;
output r_NoPre;
output r_TxEn;
output r_RxEn;
output [31:0] r_HASH0;
output [31:0] r_HASH1;

input TxB_IRQ;
input TxE_IRQ;
input RxB_IRQ;
input RxE_IRQ;
input Busy_IRQ;

output [6:0] r_IPGT;

output [6:0] r_IPGR1;

output [6:0] r_IPGR2;

output [15:0] r_MinFL;
output [15:0] r_MaxFL;

output [3:0] r_MaxRet;
output [5:0] r_CollValid;

output r_TxFlow;
output r_RxFlow;
output r_PassAll;

output r_MiiNoPre;
output [7:0] r_ClkDiv;

output r_WCtrlData;
output r_RStat;
output r_ScanStat;

output [4:0] r_RGAD;
output [4:0] r_FIAD;

output [15:0]r_CtrlData;


input NValid_stat;
input Busy_stat;
input LinkFail;

output [47:0] r_MAC , r_DMAC;
output [7:0] r_TxBDNum;
output       int_o;
output [15:0]r_TxPauseTV;
output       r_TxPauseRq;
input        RstTxPauseRq;
input        TxCtrlEndFrm;
input        StartTxDone;
input        TxClk;
input        RxClk;
input        SetPauseTimer;

input [31:0] dbg_dat; // debug data input

reg          irq_txb;
reg          irq_txe;
reg          irq_rxb;
reg          irq_rxe;
reg          irq_busy;
reg          irq_txc;
reg          irq_rxc;

reg SetTxCIrq_txclk;
reg SetTxCIrq_sync1, SetTxCIrq_sync2, SetTxCIrq_sync3;
reg SetTxCIrq;
reg ResetTxCIrq_sync1, ResetTxCIrq_sync2;

reg SetRxCIrq_rxclk;
reg SetRxCIrq_sync1, SetRxCIrq_sync2, SetRxCIrq_sync3;
reg SetRxCIrq;
reg ResetRxCIrq_sync1;
reg ResetRxCIrq_sync2;
reg ResetRxCIrq_sync3;

wire [3:0] Write =   Cs  & {4{Rw}};
wire       Read  = (|Cs) &   ~Rw;

wire MODER_Sel      = (Address == 8'h0       );
wire INT_SOURCE_Sel = (Address == 8'h1  );
wire INT_MASK_Sel   = (Address == 8'h2    );
wire IPGT_Sel       = (Address == 8'h3        );
wire IPGR1_Sel      = (Address == 8'h4       );
wire IPGR2_Sel      = (Address == 8'h5       );
wire PACKETLEN_Sel  = (Address == 8'h6   );
wire COLLCONF_Sel   = (Address == 8'h7    );
     
wire CTRLMODER_Sel  = (Address == 8'h9   );
wire MIIMODER_Sel   = (Address == 8'hA    );
wire MIICOMMAND_Sel = (Address == 8'hB  );
wire MIIADDRESS_Sel = (Address == 8'hC  );
wire MIITX_DATA_Sel = (Address == 8'hD  );
wire MAC_ADDR0_Sel  = (Address == 8'h10   );
wire MAC_ADDR1_Sel  = (Address == 8'h11   );
wire DMAC_ADDR0_Sel = (Address == 8'h18   );
wire DMAC_ADDR1_Sel = (Address == 8'h19   );
wire HASH0_Sel      = (Address == 8'h12       );
wire HASH1_Sel      = (Address == 8'h13       );
wire TXCTRL_Sel     = (Address == 8'h14     );
wire RXCTRL_Sel     = (Address == 8'h15     );
wire DBG_REG_Sel    = (Address == 8'h16         );
wire TX_BD_NUM_Sel  = (Address == 8'h8   );
wire IPv4_L1_Sel    = (Address == 8'h17     );  //add to ethmac_defines.v

wire [2:0] MODER_Wr;
wire [0:0] INT_SOURCE_Wr;
wire [0:0] INT_MASK_Wr;
wire [0:0] IPGT_Wr;
wire [0:0] IPGR1_Wr;
wire [0:0] IPGR2_Wr;
wire [3:0] PACKETLEN_Wr;
wire [2:0] COLLCONF_Wr;
wire [0:0] CTRLMODER_Wr;
wire [1:0] MIIMODER_Wr;
wire [0:0] MIICOMMAND_Wr;
wire [1:0] MIIADDRESS_Wr;
wire [1:0] MIITX_DATA_Wr;
wire       MIIRX_DATA_Wr;
wire [3:0] MAC_ADDR0_Wr;
wire [1:0] MAC_ADDR1_Wr;
wire [3:0] DMAC_ADDR0_Wr;
wire [1:0] DMAC_ADDR1_Wr;
wire [3:0] HASH0_Wr;
wire [3:0] HASH1_Wr;
wire [2:0] TXCTRL_Wr;
wire [0:0] TX_BD_NUM_Wr;
wire [3:0] IPv4_L1_Wr;

assign MODER_Wr[0]       = Write[0]  & MODER_Sel; 
assign MODER_Wr[1]       = Write[1]  & MODER_Sel; 
assign MODER_Wr[2]       = Write[2]  & MODER_Sel; 
assign INT_SOURCE_Wr[0]  = Write[0]  & INT_SOURCE_Sel; 
assign INT_MASK_Wr[0]    = Write[0]  & INT_MASK_Sel; 
assign IPGT_Wr[0]        = Write[0]  & IPGT_Sel; 
assign IPGR1_Wr[0]       = Write[0]  & IPGR1_Sel; 
assign IPGR2_Wr[0]       = Write[0]  & IPGR2_Sel; 
assign PACKETLEN_Wr[0]   = Write[0]  & PACKETLEN_Sel; 
assign PACKETLEN_Wr[1]   = Write[1]  & PACKETLEN_Sel; 
assign PACKETLEN_Wr[2]   = Write[2]  & PACKETLEN_Sel; 
assign PACKETLEN_Wr[3]   = Write[3]  & PACKETLEN_Sel; 
assign COLLCONF_Wr[0]    = Write[0]  & COLLCONF_Sel; 
assign COLLCONF_Wr[1]    = 1'b0;  // Not used
assign COLLCONF_Wr[2]    = Write[2]  & COLLCONF_Sel; 
     
assign CTRLMODER_Wr[0]   = Write[0]  & CTRLMODER_Sel; 
assign MIIMODER_Wr[0]    = Write[0]  & MIIMODER_Sel; 
assign MIIMODER_Wr[1]    = Write[1]  & MIIMODER_Sel; 
assign MIICOMMAND_Wr[0]  = Write[0]  & MIICOMMAND_Sel; 
assign MIIADDRESS_Wr[0]  = Write[0]  & MIIADDRESS_Sel; 
assign MIIADDRESS_Wr[1]  = Write[1]  & MIIADDRESS_Sel; 
assign MIITX_DATA_Wr[0]  = Write[0]  & MIITX_DATA_Sel; 
assign MIITX_DATA_Wr[1]  = Write[1]  & MIITX_DATA_Sel; 
assign MIIRX_DATA_Wr     = UpdateMIIRX_DATAReg;     
assign MAC_ADDR0_Wr[0]   = Write[0]  & MAC_ADDR0_Sel; 
assign MAC_ADDR0_Wr[1]   = Write[1]  & MAC_ADDR0_Sel; 
assign MAC_ADDR0_Wr[2]   = Write[2]  & MAC_ADDR0_Sel; 
assign MAC_ADDR0_Wr[3]   = Write[3]  & MAC_ADDR0_Sel; 
assign MAC_ADDR1_Wr[0]   = Write[0]  & MAC_ADDR1_Sel; 
assign MAC_ADDR1_Wr[1]   = Write[1]  & MAC_ADDR1_Sel; 
assign DMAC_ADDR0_Wr[0]  = Write[0]  & DMAC_ADDR0_Sel; 
assign DMAC_ADDR0_Wr[1]  = Write[1]  & DMAC_ADDR0_Sel; 
assign DMAC_ADDR0_Wr[2]  = Write[2]  & DMAC_ADDR0_Sel; 
assign DMAC_ADDR0_Wr[3]  = Write[3]  & DMAC_ADDR0_Sel; 
assign DMAC_ADDR1_Wr[0]  = Write[0]  & DMAC_ADDR1_Sel; 
assign DMAC_ADDR1_Wr[1]  = Write[1]  & DMAC_ADDR1_Sel; 
assign HASH0_Wr[0]       = Write[0]  & HASH0_Sel; 
assign HASH0_Wr[1]       = Write[1]  & HASH0_Sel; 
assign HASH0_Wr[2]       = Write[2]  & HASH0_Sel; 
assign HASH0_Wr[3]       = Write[3]  & HASH0_Sel; 
assign HASH1_Wr[0]       = Write[0]  & HASH1_Sel; 
assign HASH1_Wr[1]       = Write[1]  & HASH1_Sel; 
assign HASH1_Wr[2]       = Write[2]  & HASH1_Sel; 
assign HASH1_Wr[3]       = Write[3]  & HASH1_Sel; 
assign TXCTRL_Wr[0]      = Write[0]  & TXCTRL_Sel; 
assign TXCTRL_Wr[1]      = Write[1]  & TXCTRL_Sel; 
assign TXCTRL_Wr[2]      = Write[2]  & TXCTRL_Sel; 
assign TX_BD_NUM_Wr[0]   = Write[0]  & TX_BD_NUM_Sel & (DataIn<='h80); 
assign IPv4_L1_Wr[0]     = Write[0]  & IPv4_L1_Sel; 
assign IPv4_L1_Wr[1]     = Write[1]  & IPv4_L1_Sel; 
assign IPv4_L1_Wr[2]     = Write[2]  & IPv4_L1_Sel; 
assign IPv4_L1_Wr[3]     = Write[3]  & IPv4_L1_Sel;

wire [31:0] MODEROut;
wire [31:0] INT_SOURCEOut;
wire [31:0] INT_MASKOut;
wire [31:0] IPGTOut;
wire [31:0] IPGR1Out;
wire [31:0] IPGR2Out;
wire [31:0] PACKETLENOut;
wire [31:0] COLLCONFOut;
wire [31:0] CTRLMODEROut;
wire [31:0] MIIMODEROut;
wire [31:0] MIICOMMANDOut;
wire [31:0] MIIADDRESSOut;
wire [31:0] MIITX_DATAOut;
wire [31:0] MIIRX_DATAOut;
wire [31:0] MIISTATUSOut;
wire [31:0] MAC_ADDR0Out;
wire [31:0] DMAC_ADDR1Out;
wire [31:0] DMAC_ADDR0Out;
wire [31:0] MAC_ADDR1Out;
wire [31:0] TX_BD_NUMOut;
wire [31:0] HASH0Out;
wire [31:0] HASH1Out;
wire [31:0] TXCTRLOut;
wire [31:0] DBGOut;
wire [31:0] IPv4_L1_out;
// MODER Register
eth_register #(8, 8'h00)        MODER_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (MODEROut[8 - 1:0]),
   .Write     (MODER_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'hA0)        MODER_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (MODEROut[8 + 7:8]),
   .Write     (MODER_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(1, 1'h0)        MODER_2
  (
   .DataIn    (DataIn[1 + 15:16]),
   .DataOut   (MODEROut[1 + 15:16]),
   .Write     (MODER_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MODEROut[31:1 + 16] = 0;

// INT_MASK Register
eth_register #(7, 7'h0)  INT_MASK_0
  (
   .DataIn    (DataIn[7 - 1:0]),  
   .DataOut   (INT_MASKOut[7 - 1:0]),
   .Write     (INT_MASK_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign INT_MASKOut[31:7] = 0;

// IPGT Register
eth_register #(7, 7'h12)          IPGT_0
  (
   .DataIn    (DataIn[7 - 1:0]),
   .DataOut   (IPGTOut[7 - 1:0]),
   .Write     (IPGT_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign IPGTOut[31:7] = 0;

// IPGR1 Register
eth_register #(7, 7'h0C)        IPGR1_0
  (
   .DataIn    (DataIn[7 - 1:0]),
   .DataOut   (IPGR1Out[7 - 1:0]),
   .Write     (IPGR1_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign IPGR1Out[31:7] = 0;

// IPGR2 Register
eth_register #(7, 7'h12)        IPGR2_0
  (
   .DataIn    (DataIn[7 - 1:0]),
   .DataOut   (IPGR2Out[7 - 1:0]),
   .Write     (IPGR2_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign IPGR2Out[31:7] = 0;

// PACKETLEN Register
eth_register #(8, 8'h00) PACKETLEN_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (PACKETLENOut[8 - 1:0]),
   .Write     (PACKETLEN_Wr[0]),
   .Clk       (Clk), 
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h06) PACKETLEN_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (PACKETLENOut[8 + 7:8]),
   .Write     (PACKETLEN_Wr[1]),
   .Clk       (Clk), 
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h40) PACKETLEN_2
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (PACKETLENOut[8 + 15:16]),
   .Write     (PACKETLEN_Wr[2]),
   .Clk       (Clk), 
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00) PACKETLEN_3
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (PACKETLENOut[8 + 23:24]),
   .Write     (PACKETLEN_Wr[3]),
   .Clk       (Clk), 
   .Reset     (Reset),
   .SyncReset (1'b0)
  );

// COLLCONF Register
eth_register #(6, 6'h3f)   COLLCONF_0
  (
   .DataIn    (DataIn[6 - 1:0]),
   .DataOut   (COLLCONFOut[6 - 1:0]),
   .Write     (COLLCONF_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(4, 4'hF)   COLLCONF_2
  (
   .DataIn    (DataIn[4 + 15:16]),
   .DataOut   (COLLCONFOut[4 + 15:16]),
   .Write     (COLLCONF_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign COLLCONFOut[15:6] = 0;
assign COLLCONFOut[31:4 + 16] = 0;

// TX_BD_NUM Register
eth_register #(8, 8'h40) TX_BD_NUM_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (TX_BD_NUMOut[8 - 1:0]),
   .Write     (TX_BD_NUM_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign TX_BD_NUMOut[31:8] = 0;

// CTRLMODER Register
eth_register #(3, 3'h0)  CTRLMODER_0
  (
   .DataIn    (DataIn[3 - 1:0]),
   .DataOut   (CTRLMODEROut[3 - 1:0]),
   .Write     (CTRLMODER_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign CTRLMODEROut[31:3] = 0;

// MIIMODER Register
eth_register #(8, 8'h64)    MIIMODER_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (MIIMODEROut[8 - 1:0]),
   .Write     (MIIMODER_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(1, 1'h0)    MIIMODER_1
  (
   .DataIn    (DataIn[1 + 7:8]),
   .DataOut   (MIIMODEROut[1 + 7:8]),
   .Write     (MIIMODER_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MIIMODEROut[31:1 + 8] = 0;

// MIICOMMAND Register
eth_register #(1, 0)                                      MIICOMMAND0
  (
   .DataIn    (DataIn[0]),
   .DataOut   (MIICOMMANDOut[0]),
   .Write     (MIICOMMAND_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(1, 0)                                      MIICOMMAND1
  (
   .DataIn    (DataIn[1]),
   .DataOut   (MIICOMMANDOut[1]),
   .Write     (MIICOMMAND_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (RStatStart)
  );
eth_register #(1, 0)                                      MIICOMMAND2
  (
   .DataIn    (DataIn[2]),
   .DataOut   (MIICOMMANDOut[2]),
   .Write     (MIICOMMAND_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (WCtrlDataStart)
  );
assign MIICOMMANDOut[31:3] = 29'h0;

// MIIADDRESSRegister
eth_register #(5, 5'h00) MIIADDRESS_0
  (
   .DataIn    (DataIn[5 - 1:0]),
   .DataOut   (MIIADDRESSOut[5 - 1:0]),
   .Write     (MIIADDRESS_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(5, 5'h00) MIIADDRESS_1
  (
   .DataIn    (DataIn[5 + 7:8]),
   .DataOut   (MIIADDRESSOut[5 + 7:8]),
   .Write     (MIIADDRESS_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MIIADDRESSOut[7:5] = 0;
assign MIIADDRESSOut[31:5 + 8] = 0;

// MIITX_DATA Register
eth_register #(8, 8'h00) MIITX_DATA_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (MIITX_DATAOut[8 - 1:0]), 
   .Write     (MIITX_DATA_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00) MIITX_DATA_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (MIITX_DATAOut[8 + 7:8]), 
   .Write     (MIITX_DATA_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MIITX_DATAOut[31:8 + 8] = 0;

// MIIRX_DATA Register
eth_register #(16, 16'h0000) MIIRX_DATA
  (
   .DataIn    (Prsd[16-1:0]),
   .DataOut   (MIIRX_DATAOut[16-1:0]),
   .Write     (MIIRX_DATA_Wr), // not written from WB
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MIIRX_DATAOut[31:16] = 0;

// MAC_ADDR0 Register
eth_register #(8, 8'h00)  MAC_ADDR0_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (MAC_ADDR0Out[8 - 1:0]),
   .Write     (MAC_ADDR0_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  MAC_ADDR0_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (MAC_ADDR0Out[8 + 7:8]),
   .Write     (MAC_ADDR0_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  MAC_ADDR0_2
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (MAC_ADDR0Out[8 + 15:16]),
   .Write     (MAC_ADDR0_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  MAC_ADDR0_3
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (MAC_ADDR0Out[8 + 23:24]),
   .Write     (MAC_ADDR0_Wr[3]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );

// MAC_ADDR1 Register
eth_register #(8, 8'h00)  MAC_ADDR1_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (MAC_ADDR1Out[8 - 1:0]),
   .Write     (MAC_ADDR1_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  MAC_ADDR1_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (MAC_ADDR1Out[8 + 7:8]),
   .Write     (MAC_ADDR1_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign MAC_ADDR1Out[31:8 + 8] = 0;

// DMAC_ADDR0 Register
eth_register #(8, 8'h00)  DMAC_ADDR0_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (DMAC_ADDR0Out[8 - 1:0]),
   .Write     (DMAC_ADDR0_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  DMAC_ADDR0_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (DMAC_ADDR0Out[8 + 7:8]),
   .Write     (DMAC_ADDR0_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  DMAC_ADDR0_2
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (DMAC_ADDR0Out[8 + 15:16]),
   .Write     (DMAC_ADDR0_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  DMAC_ADDR0_3
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (DMAC_ADDR0Out[8 + 23:24]),
   .Write     (DMAC_ADDR0_Wr[3]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );

// DMAC_ADDR1 Register
eth_register #(8, 8'h00)  DMAC_ADDR1_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (DMAC_ADDR1Out[8 - 1:0]),
   .Write     (DMAC_ADDR1_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  DMAC_ADDR1_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (DMAC_ADDR1Out[8 + 7:8]),
   .Write     (DMAC_ADDR1_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
assign DMAC_ADDR1Out[31:8 + 8] = 0;


// RXHASH0 Register
eth_register #(8, 8'h00)          RXHASH0_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (HASH0Out[8 - 1:0]),
   .Write     (HASH0_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH0_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (HASH0Out[8 + 7:8]),
   .Write     (HASH0_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH0_2
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (HASH0Out[8 + 15:16]),
   .Write     (HASH0_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH0_3
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (HASH0Out[8 + 23:24]),
   .Write     (HASH0_Wr[3]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );

// RXHASH1 Register
eth_register #(8, 8'h00)          RXHASH1_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (HASH1Out[8 - 1:0]),
   .Write     (HASH1_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH1_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (HASH1Out[8 + 7:8]),
   .Write     (HASH1_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH1_2
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (HASH1Out[8 + 15:16]),
   .Write     (HASH1_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)          RXHASH1_3
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (HASH1Out[8 + 23:24]),
   .Write     (HASH1_Wr[3]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );

// TXCTRL Register
eth_register #(8, 8'h00)  TXCTRL_0
  (
   .DataIn    (DataIn[8 - 1:0]),
   .DataOut   (TXCTRLOut[8 - 1:0]),
   .Write     (TXCTRL_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h00)  TXCTRL_1
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (TXCTRLOut[8 + 7:8]),
   .Write     (TXCTRL_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(1, 1'h0)  TXCTRL_2 // Request bit is synchronously reset
  (
   .DataIn    (DataIn[1 + 15:16]),
   .DataOut   (TXCTRLOut[1 + 15:16]),
   .Write     (TXCTRL_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (RstTxPauseRq)
  );
  
assign TXCTRLOut[31:1 + 16] = 0;
   
eth_register #(8, 8'h0)  IPv4_L1_0 
  (
   .DataIn    (DataIn[8 -1:0]),
   .DataOut   (IPv4_L1_out[8 -1:0]),
   .Write     (IPv4_L1_Wr[0]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  ); 
eth_register #(8, 8'h0)  IPv4_L1_1 
  (
   .DataIn    (DataIn[8 + 7:8]),
   .DataOut   (IPv4_L1_out[8 + 7:8]),
   .Write     (IPv4_L1_Wr[1]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h2)  IPv4_L1_2 
  (
   .DataIn    (DataIn[8 + 15:16]),
   .DataOut   (IPv4_L1_out[8 + 15:16]),
   .Write     (IPv4_L1_Wr[2]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
eth_register #(8, 8'h45)  IPv4_L1_3 
  (
   .DataIn    (DataIn[8 + 23:24]),
   .DataOut   (IPv4_L1_out[8 + 23:24]),
   .Write     (IPv4_L1_Wr[3]),
   .Clk       (Clk),
   .Reset     (Reset),
   .SyncReset (1'b0)
  );
  

// Reading data from registers
always @ (Address       or Read           or MODEROut       or INT_SOURCEOut  or
          INT_MASKOut   or IPGTOut        or IPGR1Out       or IPGR2Out       or
          PACKETLENOut  or COLLCONFOut    or CTRLMODEROut   or MIIMODEROut    or
          MIICOMMANDOut or MIIADDRESSOut  or MIITX_DATAOut  or MIIRX_DATAOut  or 
          MIISTATUSOut  or MAC_ADDR0Out   or MAC_ADDR1Out   or TX_BD_NUMOut   or
          HASH0Out      or HASH1Out       or TXCTRLOut      or IPv4_L1_out 
         )
begin
  if(Read)  // read
    begin
      case(Address)
        8'h0        :  DataOut=MODEROut;
        8'h1   :  DataOut=INT_SOURCEOut;
        8'h2     :  DataOut=INT_MASKOut;
        8'h3         :  DataOut=IPGTOut;
        8'h4        :  DataOut=IPGR1Out;
        8'h5        :  DataOut=IPGR2Out;
        8'h6    :  DataOut=PACKETLENOut;
        8'h7     :  DataOut=COLLCONFOut;
        8'h9    :  DataOut=CTRLMODEROut;
        8'hA     :  DataOut=MIIMODEROut;
        8'hB   :  DataOut=MIICOMMANDOut;
        8'hC   :  DataOut=MIIADDRESSOut;
        8'hD   :  DataOut=MIITX_DATAOut;
        8'hE   :  DataOut=MIIRX_DATAOut;
        8'hF    :  DataOut=MIISTATUSOut;
        8'h10    :  DataOut=MAC_ADDR0Out;
        8'h11    :  DataOut=MAC_ADDR1Out;
        8'h8    :  DataOut=TX_BD_NUMOut;
        8'h12        :  DataOut=HASH0Out;
        8'h13        :  DataOut=HASH1Out;
        8'h14      :  DataOut=TXCTRLOut;
        8'h16          :  DataOut=dbg_dat;
        8'h17      :  DataOut=IPv4_L1_out;
        default:             DataOut=32'h0;
      endcase
    end
  else
    DataOut=32'h0;
end


assign r_RecSmall         = MODEROut[16];
assign r_Pad              = MODEROut[15];
assign r_HugEn            = MODEROut[14];
assign r_CrcEn            = MODEROut[13];
assign r_DlyCrcEn         = MODEROut[12];
// assign r_Rst           = MODEROut[11];   This signal is not used any more
assign r_FullD            = MODEROut[10];
assign r_ExDfrEn          = MODEROut[9];
assign r_NoBckof          = MODEROut[8];
assign r_LoopBck          = MODEROut[7];
assign r_IFG              = MODEROut[6];
assign r_Pro              = MODEROut[5];
assign r_Iam              = MODEROut[4];
assign r_Bro              = MODEROut[3];
assign r_NoPre            = MODEROut[2];
assign r_TxEn             = MODEROut[1] & (TX_BD_NUMOut>0);     // Transmission is enabled when there is at least one TxBD.
assign r_RxEn             = MODEROut[0] & (TX_BD_NUMOut<'h80);  // Reception is enabled when there is  at least one RxBD.

assign r_IPGT[6:0]        = IPGTOut[6:0];

assign r_IPGR1[6:0]       = IPGR1Out[6:0];

assign r_IPGR2[6:0]       = IPGR2Out[6:0];

assign r_MinFL[15:0]      = PACKETLENOut[31:16];
assign r_MaxFL[15:0]      = PACKETLENOut[15:0];

assign r_MaxRet[3:0]      = COLLCONFOut[19:16];
assign r_CollValid[5:0]   = COLLCONFOut[5:0];

assign r_TxFlow           = CTRLMODEROut[2];
assign r_RxFlow           = CTRLMODEROut[1];
assign r_PassAll          = CTRLMODEROut[0];

assign r_MiiNoPre         = MIIMODEROut[8];
assign r_ClkDiv[7:0]      = MIIMODEROut[7:0];

assign r_WCtrlData        = MIICOMMANDOut[2];
assign r_RStat            = MIICOMMANDOut[1];
assign r_ScanStat         = MIICOMMANDOut[0];

assign r_RGAD[4:0]        = MIIADDRESSOut[12:8];
assign r_FIAD[4:0]        = MIIADDRESSOut[4:0];

assign r_CtrlData[15:0]   = MIITX_DATAOut[15:0];

assign MIISTATUSOut[31:3] = 0; 
assign MIISTATUSOut[2]    = NValid_stat         ; 
assign MIISTATUSOut[1]    = Busy_stat           ; 
assign MIISTATUSOut[0]    = LinkFail            ; 

assign r_MAC[31:0]        = MAC_ADDR0Out[31:0];
assign r_MAC[47:32]       = MAC_ADDR1Out[15:0];
assign r_DMAC[31:0]       = DMAC_ADDR0Out[31:0];
assign r_DMAC[47:32]      = DMAC_ADDR1Out[15:0];

assign r_HASH1[31:0]      = HASH1Out;
assign r_HASH0[31:0]      = HASH0Out;

assign r_TxBDNum[7:0]     = TX_BD_NUMOut[7:0];

assign r_TxPauseTV[15:0]  = TXCTRLOut[15:0];
assign r_TxPauseRq        = TXCTRLOut[16];


// Synchronizing TxC Interrupt
always @ (posedge TxClk or posedge Reset)
begin
  if(Reset)
    SetTxCIrq_txclk <= 1'b0;
  else
  if(TxCtrlEndFrm & StartTxDone & r_TxFlow)
    SetTxCIrq_txclk <= 1'b1;
  else
  if(ResetTxCIrq_sync2)
    SetTxCIrq_txclk <= 1'b0;
end


always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetTxCIrq_sync1 <= 1'b0;
  else
    SetTxCIrq_sync1 <= SetTxCIrq_txclk;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetTxCIrq_sync2 <= 1'b0;
  else
    SetTxCIrq_sync2 <= SetTxCIrq_sync1;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetTxCIrq_sync3 <= 1'b0;
  else
    SetTxCIrq_sync3 <= SetTxCIrq_sync2;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetTxCIrq <= 1'b0;
  else
    SetTxCIrq <= SetTxCIrq_sync2 & ~SetTxCIrq_sync3;
end

always @ (posedge TxClk or posedge Reset)
begin
  if(Reset)
    ResetTxCIrq_sync1 <= 1'b0;
  else
    ResetTxCIrq_sync1 <= SetTxCIrq_sync2;
end

always @ (posedge TxClk or posedge Reset)
begin
  if(Reset)
    ResetTxCIrq_sync2 <= 1'b0;
  else
    ResetTxCIrq_sync2 <= SetTxCIrq_sync1;
end


// Synchronizing RxC Interrupt
always @ (posedge RxClk or posedge Reset)
begin
  if(Reset)
    SetRxCIrq_rxclk <= 1'b0;
  else
  if(SetPauseTimer & r_RxFlow)
    SetRxCIrq_rxclk <= 1'b1;
  else
  if(ResetRxCIrq_sync2 & (~ResetRxCIrq_sync3))
    SetRxCIrq_rxclk <= 1'b0;
end


always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetRxCIrq_sync1 <= 1'b0;
  else
    SetRxCIrq_sync1 <= SetRxCIrq_rxclk;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetRxCIrq_sync2 <= 1'b0;
  else
    SetRxCIrq_sync2 <= SetRxCIrq_sync1;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetRxCIrq_sync3 <= 1'b0;
  else
    SetRxCIrq_sync3 <= SetRxCIrq_sync2;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    SetRxCIrq <= 1'b0;
  else
    SetRxCIrq <= SetRxCIrq_sync2 & ~SetRxCIrq_sync3;
end

always @ (posedge RxClk or posedge Reset)
begin
  if(Reset)
    ResetRxCIrq_sync1 <= 1'b0;
  else
    ResetRxCIrq_sync1 <= SetRxCIrq_sync2;
end

always @ (posedge RxClk or posedge Reset)
begin
  if(Reset)
    ResetRxCIrq_sync2 <= 1'b0;
  else
    ResetRxCIrq_sync2 <= ResetRxCIrq_sync1;
end

always @ (posedge RxClk or posedge Reset)
begin
  if(Reset)
    ResetRxCIrq_sync3 <= 1'b0;
  else
    ResetRxCIrq_sync3 <= ResetRxCIrq_sync2;
end



// Interrupt generation
always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_txb <= 1'b0;
  else
  if(TxB_IRQ)
    irq_txb <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[0])
    irq_txb <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_txe <= 1'b0;
  else
  if(TxE_IRQ)
    irq_txe <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[1])
    irq_txe <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_rxb <= 1'b0;
  else
  if(RxB_IRQ)
    irq_rxb <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[2])
    irq_rxb <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_rxe <= 1'b0;
  else
  if(RxE_IRQ)
    irq_rxe <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[3])
    irq_rxe <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_busy <= 1'b0;
  else
  if(Busy_IRQ)
    irq_busy <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[4])
    irq_busy <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_txc <= 1'b0;
  else
  if(SetTxCIrq)
    irq_txc <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[5])
    irq_txc <=  1'b0;
end

always @ (posedge Clk or posedge Reset)
begin
  if(Reset)
    irq_rxc <= 1'b0;
  else
  if(SetRxCIrq)
    irq_rxc <=  1'b1;
  else
  if(INT_SOURCE_Wr[0] & DataIn[6])
    irq_rxc <=  1'b0;
end

// Generating interrupt signal
assign int_o = irq_txb  & INT_MASKOut[0] | 
               irq_txe  & INT_MASKOut[1] | 
               irq_rxb  & INT_MASKOut[2] | 
               irq_rxe  & INT_MASKOut[3] | 
               irq_busy & INT_MASKOut[4] | 
               irq_txc  & INT_MASKOut[5] | 
               irq_rxc  & INT_MASKOut[6] ;

// For reading interrupt status
assign INT_SOURCEOut = {{(32-7){1'b0}}, irq_rxc, irq_txc, irq_busy, irq_rxe, irq_rxb, irq_txe, irq_txb};



endmodule
