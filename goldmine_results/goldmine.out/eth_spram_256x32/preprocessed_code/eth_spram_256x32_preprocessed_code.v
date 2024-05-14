//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_spram_256x32.v                                          ////
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
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.9  2003/12/05 12:43:06  tadejm
// Corrected address mismatch for xilinx RAMB4_S8 model which has wider address than RAMB4_S16.
//
// Revision 1.8  2003/12/04 14:59:13  simons
// Lapsus fixed (!we -> ~we).
//
// Revision 1.7  2003/11/12 18:24:59  tadejm
// WISHBONE slave changed and tested from only 32-bit accesss to byte access.
//
// Revision 1.6  2003/10/17 07:46:15  markom
// mbist signals updated according to newest convention
//
// Revision 1.5  2003/08/14 16:42:58  simons
// Artisan ram instance added.
//
// Revision 1.4  2002/10/18 17:04:20  tadejm
// Changed BIST scan signals.
//
// Revision 1.3  2002/10/10 16:29:30  mohor
// BIST added.
//
// Revision 1.2  2002/09/23 18:24:31  mohor
// ETH_VIRTUAL_SILICON_RAM supported (for ASIC implementation).
//
// Revision 1.1  2002/07/23 16:36:09  mohor
// ethernet spram added. So far a generic ram and xilinx RAMB4 are used.
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

module eth_spram_256x32(
	// Generic synchronous single-port RAM interface
	clk, rst, ce, we, oe, addr, di, dato











);

   //
   // Generic synchronous single-port RAM interface
   //
   input           clk;  // Clock, rising edge
   input           rst;  // Reset, active high
   input           ce;   // Chip enable input, active high
   input  [3:0]    we;   // Write enable input, active high
   input           oe;   // Output enable input, active high
   input  [7:0]    addr; // address bus inputs
   input  [31:0]   di;   // input data bus
   output [31:0]   dato;   // output data bus











































































   // !ETH_XILINX_RAMB4
 

























   // !ETH_VIRTUAL_SILICON_RAM

  

























   // !ETH_ARTISAN_RAM
   










   // !ETH_ALTERA_ALTSYNCRAM


   //
   // Generic single-port synchronous RAM model
   //

   //
   // Generic RAM's registers and wires
   //
   reg  [ 7: 0] mem0 [255:0]; // RAM content
   reg  [15: 8] mem1 [255:0]; // RAM content
   reg  [23:16] mem2 [255:0]; // RAM content
   reg  [31:24] mem3 [255:0]; // RAM content
   wire [31:0]  q;            // RAM output
   reg   [7:0]   raddr;        // RAM read address
   //
   // Data output drivers
   //
   assign dato = (oe & ce) ? q : {32{1'bz}};

   //
   // RAM read and write
   //

   // read operation
   always@(posedge clk)
     if (ce)
       raddr <=  addr; // read address needs to be registered to read clock

   assign  q = rst ? {32{1'b0}} : {mem3[raddr],
                                   mem2[raddr],
                                   mem1[raddr],
                                   mem0[raddr]};

    // write operation
    always@(posedge clk)
    begin
		if (ce && we[3])
		  mem3[addr] <=  di[31:24];
		if (ce && we[2])
		  mem2[addr] <=  di[23:16];
		if (ce && we[1])
		  mem1[addr] <=  di[15: 8];
		if (ce && we[0])
		  mem0[addr] <=  di[ 7: 0];
	     end

   // Task prints range of memory
   // *** Remember that tasks are non reentrant, don't call this task in parallel for multiple instantiations. 
   task print_ram;
      input [7:0] start;
      input [7:0] finish;
      integer     rnum;
      begin
    	 for (rnum={24'd0,start};rnum<={24'd0,finish};rnum=rnum+1)
           $display("Addr %h = %0h %0h %0h %0h",rnum,mem3[rnum],mem2[rnum],mem1[rnum],mem0[rnum]);
      end
   endtask

     // !ETH_ALTERA_ALTSYNCRAM
    // !ETH_ARTISAN_RAM
   // !ETH_VIRTUAL_SILICON_RAM
  // !ETH_XILINX_RAMB4

endmodule
