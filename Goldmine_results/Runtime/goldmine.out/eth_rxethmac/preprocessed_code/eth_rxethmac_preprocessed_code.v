//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_rxethmac.v                                              ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////      - Novan Hartadi (novan@vlsi.itb.ac.id)                  ////
////      - Mahmud Galela (mgalela@vlsi.itb.ac.id)                ////
////      - Olof Kindgren (olof@opencores.org                     ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2011 Authors                             ////
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
// 2011-07-06 Olof Kindgren <olof@opencores.org>
// Add ByteCntEq0 to rxaddrcheck
//
// CVS Revision History
//
//
// $Log: not supported by cvs2svn $
// Revision 1.12  2004/04/26 15:26:23  igorm
// - Bug connected to the TX_BD_NUM_Wr signal fixed (bug came in with the
//   previous update of the core.
// - TxBDAddress is set to 0 after the TX is enabled in the MODER register.
// - RxBDAddress is set to r_TxBDNum<<1 after the RX is enabled in the MODER
//   register. (thanks to Mathias and Torbjorn)
// - Multicast reception was fixed. Thanks to Ulrich Gries
//
// Revision 1.11  2004/03/17 09:32:15  igorm
// Multicast detection fixed. Only the LSB of the first byte is checked.
//
// Revision 1.10  2002/11/22 01:57:06  mohor
// Rx Flow control fixed. CF flag added to the RX buffer descriptor. RxAbort
// synchronized.
//
// Revision 1.9  2002/11/19 17:35:35  mohor
// AddressMiss status is connecting to the Rx BD. AddressMiss is identifying
// that a frame was received because of the promiscous mode.
//
// Revision 1.8  2002/02/16 07:15:27  mohor
// Testbench fixed, code simplified, unused signals removed.
//
// Revision 1.7  2002/02/15 13:44:28  mohor
// RxAbort is an output. No need to have is declared as wire.
//
// Revision 1.6  2002/02/15 11:17:48  mohor
// File format changed.
//
// Revision 1.5  2002/02/14 20:48:43  billditt
// Addition  of new module eth_addrcheck.v
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
// Revision 1.1  2001/06/27 21:26:19  mohor
// Initial release of the RxEthMAC module.
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
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_crc.v                                                   ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////      - Novan Hartadi (novan@vlsi.itb.ac.id)                  ////
////      - Mahmud Galela (mgalela@vlsi.itb.ac.id)                ////
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
// Revision 1.1  2001/07/30 21:23:42  mohor
// Directory structure changed. Files checked and joind together.
//
// Revision 1.3  2001/06/19 18:16:40  mohor
// TxClk changed to MTxClk (as discribed in the documentation).
// Crc changed so only one file can be used instead of two.
//
// Revision 1.2  2001/06/19 10:38:07  mohor
// Minor changes in header.
//
// Revision 1.1  2001/06/19 10:27:57  mohor
// TxEthMAC initial release.
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

module eth_crc (Clk, Reset, Data, Enable, Initialize, Crc, CrcError);


input Clk;
input Reset;
input [3:0] Data;
input Enable;
input Initialize;

output [31:0] Crc;
output CrcError;

reg  [31:0] Crc;

wire [31:0] CrcNext;


assign CrcNext[0] = Enable & (Data[0] ^ Crc[28]); 
assign CrcNext[1] = Enable & (Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29]); 
assign CrcNext[2] = Enable & (Data[2] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[30]); 
assign CrcNext[3] = Enable & (Data[3] ^ Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30] ^ Crc[31]); 
assign CrcNext[4] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[0]; 
assign CrcNext[5] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[1]; 
assign CrcNext[6] = (Enable & (Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30])) ^ Crc[ 2]; 
assign CrcNext[7] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[3]; 
assign CrcNext[8] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[4]; 
assign CrcNext[9] = (Enable & (Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30])) ^ Crc[5]; 
assign CrcNext[10] = (Enable & (Data[3] ^ Data[2] ^ Data[0] ^ Crc[28] ^ Crc[30] ^ Crc[31])) ^ Crc[6]; 
assign CrcNext[11] = (Enable & (Data[3] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[31])) ^ Crc[7]; 
assign CrcNext[12] = (Enable & (Data[2] ^ Data[1] ^ Data[0] ^ Crc[28] ^ Crc[29] ^ Crc[30])) ^ Crc[8]; 
assign CrcNext[13] = (Enable & (Data[3] ^ Data[2] ^ Data[1] ^ Crc[29] ^ Crc[30] ^ Crc[31])) ^ Crc[9]; 
assign CrcNext[14] = (Enable & (Data[3] ^ Data[2] ^ Crc[30] ^ Crc[31])) ^ Crc[10]; 
assign CrcNext[15] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[11]; 
assign CrcNext[16] = (Enable & (Data[0] ^ Crc[28])) ^ Crc[12]; 
assign CrcNext[17] = (Enable & (Data[1] ^ Crc[29])) ^ Crc[13]; 
assign CrcNext[18] = (Enable & (Data[2] ^ Crc[30])) ^ Crc[14]; 
assign CrcNext[19] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[15]; 
assign CrcNext[20] = Crc[16]; 
assign CrcNext[21] = Crc[17]; 
assign CrcNext[22] = (Enable & (Data[0] ^ Crc[28])) ^ Crc[18]; 
assign CrcNext[23] = (Enable & (Data[1] ^ Data[0] ^ Crc[29] ^ Crc[28])) ^ Crc[19]; 
assign CrcNext[24] = (Enable & (Data[2] ^ Data[1] ^ Crc[30] ^ Crc[29])) ^ Crc[20]; 
assign CrcNext[25] = (Enable & (Data[3] ^ Data[2] ^ Crc[31] ^ Crc[30])) ^ Crc[21]; 
assign CrcNext[26] = (Enable & (Data[3] ^ Data[0] ^ Crc[31] ^ Crc[28])) ^ Crc[22]; 
assign CrcNext[27] = (Enable & (Data[1] ^ Crc[29])) ^ Crc[23]; 
assign CrcNext[28] = (Enable & (Data[2] ^ Crc[30])) ^ Crc[24]; 
assign CrcNext[29] = (Enable & (Data[3] ^ Crc[31])) ^ Crc[25]; 
assign CrcNext[30] = Crc[26]; 
assign CrcNext[31] = Crc[27]; 


always @ (posedge Clk or posedge Reset)
begin
  if (Reset)
    Crc <=  32'hffffffff;
  else
  if(Initialize)
    Crc <=  32'hffffffff;
  else
    Crc <=  CrcNext;
end

assign CrcError = Crc[31:0] != 32'hc704dd7b;  // CRC not equal to magic number

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_rxstatem.v                                              ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////      - Novan Hartadi (novan@vlsi.itb.ac.id)                  ////
////      - Mahmud Galela (mgalela@vlsi.itb.ac.id)                ////
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
// Revision 1.5  2002/01/23 10:28:16  mohor
// Link in the header changed.
//
// Revision 1.4  2001/10/19 08:43:51  mohor
// eth_timescale.v changed to timescale.v This is done because of the
// simulation of the few cores in a one joined project.
//
// Revision 1.3  2001/10/18 12:07:11  mohor
// Status signals changed, Adress decoding changed, interrupt controller
// added.
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
// Revision 1.2  2001/07/03 12:55:41  mohor
// Minor changes because of the synthesys warnings.
//
//
// Revision 1.1  2001/06/27 21:26:19  mohor
// Initial release of the RxEthMAC module.
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


module eth_rxstatem (MRxClk, Reset, MRxDV, ByteCntEq0, ByteCntGreat2, Transmitting, MRxDEq5, MRxDEqD, 
                     IFGCounterEq24, ByteCntMaxFrame, StateData, StateIdle, StatePreamble, StateSFD, 
                     StateDrop
                    );

input         MRxClk;
input         Reset;
input         MRxDV;
input         ByteCntEq0;
input         ByteCntGreat2;
input         MRxDEq5;
input         Transmitting;
input         MRxDEqD;
input         IFGCounterEq24;
input         ByteCntMaxFrame;

output [1:0]  StateData;
output        StateIdle;
output        StateDrop;
output        StatePreamble;
output        StateSFD;

reg           StateData0;
reg           StateData1;
reg           StateIdle;
reg           StateDrop;
reg           StatePreamble;
reg           StateSFD;

wire          StartIdle;
wire          StartDrop;
wire          StartData0;
wire          StartData1;
wire          StartPreamble;
wire          StartSFD;


// Defining the next state
assign StartIdle = ~MRxDV & (StateDrop | StatePreamble | StateSFD | (|StateData));

assign StartPreamble = MRxDV & ~MRxDEq5 & (StateIdle & ~Transmitting);

assign StartSFD = MRxDV & MRxDEq5 & (StateIdle & ~Transmitting | StatePreamble);

assign StartData0 = MRxDV & (StateSFD & MRxDEqD & IFGCounterEq24 | StateData1);

assign StartData1 = MRxDV & StateData0 & (~ByteCntMaxFrame);

assign StartDrop = MRxDV & (StateIdle & Transmitting | StateSFD & ~IFGCounterEq24 &
                   MRxDEqD |  StateData0 &  ByteCntMaxFrame);

// Rx State Machine
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      StateIdle     <=  1'b0;
      StateDrop     <=  1'b1;
      StatePreamble <=  1'b0;
      StateSFD      <=  1'b0;
      StateData0    <=  1'b0;
      StateData1    <=  1'b0;
    end
  else
    begin
      if(StartPreamble | StartSFD | StartDrop)
        StateIdle <=  1'b0;
      else
      if(StartIdle)
        StateIdle <=  1'b1;

      if(StartIdle)
        StateDrop <=  1'b0;
      else
      if(StartDrop)
        StateDrop <=  1'b1;

      if(StartSFD | StartIdle | StartDrop)
        StatePreamble <=  1'b0;
      else
      if(StartPreamble)
        StatePreamble <=  1'b1;

      if(StartPreamble | StartIdle | StartData0 | StartDrop)
        StateSFD <=  1'b0;
      else
      if(StartSFD)
        StateSFD <=  1'b1;

      if(StartIdle | StartData1 | StartDrop)
        StateData0 <=  1'b0;
      else
      if(StartData0)
        StateData0 <=  1'b1;

      if(StartIdle | StartData0 | StartDrop)
        StateData1 <=  1'b0;
      else
      if(StartData1)
        StateData1 <=  1'b1;
    end
end

assign StateData[1:0] = {StateData1, StateData0};

endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_rxcounters.v                                            ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Igor Mohor (igorM@opencores.org)                      ////
////      - Novan Hartadi (novan@vlsi.itb.ac.id)                  ////
////      - Mahmud Galela (mgalela@vlsi.itb.ac.id)                ////
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
// Revision 1.5  2002/02/15 11:13:29  mohor
// Format of the file changed a bit.
//
// Revision 1.4  2002/02/14 20:19:41  billditt
// Modified for Address Checking,
// addition of eth_addrcheck.v
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
// Revision 1.1  2001/07/30 21:23:42  mohor
// Directory structure changed. Files checked and joind together.
//
// Revision 1.1  2001/06/27 21:26:19  mohor
// Initial release of the RxEthMAC module.
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


module eth_rxcounters 
  (
   MRxClk, Reset, MRxDV, StateIdle, StateSFD, StateData, StateDrop, StatePreamble, 
   MRxDEqD, DlyCrcEn, DlyCrcCnt, Transmitting, MaxFL, r_IFG, HugEn, IFGCounterEq24, 
   ByteCntEq0, ByteCntEq1, ByteCntEq2,ByteCntEq3,ByteCntEq4,ByteCntEq5, ByteCntEq6,
   ByteCntEq7, ByteCntGreat2, ByteCntSmall7, ByteCntMaxFrame, ByteCntOut
   );

input         MRxClk;
input         Reset;
input         MRxDV;
input         StateSFD;
input [1:0]   StateData;
input         MRxDEqD;
input         StateIdle;
input         StateDrop;
input         DlyCrcEn;
input         StatePreamble;
input         Transmitting;
input         HugEn;
input [15:0]  MaxFL;
input         r_IFG;

output        IFGCounterEq24;           // IFG counter reaches 9600 ns (960 ns)
output [3:0]  DlyCrcCnt;                // Delayed CRC counter
output        ByteCntEq0;               // Byte counter = 0
output        ByteCntEq1;               // Byte counter = 1
output        ByteCntEq2;               // Byte counter = 2  
output        ByteCntEq3;               // Byte counter = 3  
output        ByteCntEq4;               // Byte counter = 4  
output        ByteCntEq5;               // Byte counter = 5  
output        ByteCntEq6;               // Byte counter = 6
output        ByteCntEq7;               // Byte counter = 7
output        ByteCntGreat2;            // Byte counter > 2
output        ByteCntSmall7;            // Byte counter < 7
output        ByteCntMaxFrame;          // Byte counter = MaxFL
output [15:0] ByteCntOut;               // Byte counter

wire          ResetByteCounter;
wire          IncrementByteCounter;
wire          ResetIFGCounter;
wire          IncrementIFGCounter;
wire          ByteCntMax;

reg   [15:0]  ByteCnt;
reg   [3:0]   DlyCrcCnt;
reg   [4:0]   IFGCounter;

wire  [15:0]  ByteCntDelayed;



assign ResetByteCounter = MRxDV & (StateSFD & MRxDEqD | StateData[0] & ByteCntMaxFrame);

assign IncrementByteCounter = ~ResetByteCounter & MRxDV & 
                              (StatePreamble | StateSFD | StateIdle & ~Transmitting |
                               StateData[1] & ~ByteCntMax & ~(DlyCrcEn & |DlyCrcCnt)
                              );


always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    ByteCnt[15:0] <=  16'd0;
  else
    begin
      if(ResetByteCounter)
        ByteCnt[15:0] <=  16'd0;
      else
      if(IncrementByteCounter)
        ByteCnt[15:0] <=  ByteCnt[15:0] + 16'd1;
     end
end

assign ByteCntDelayed = ByteCnt + 16'd4;
assign ByteCntOut = DlyCrcEn ? ByteCntDelayed : ByteCnt;

assign ByteCntEq0       = ByteCnt == 16'd0;
assign ByteCntEq1       = ByteCnt == 16'd1;
assign ByteCntEq2       = ByteCnt == 16'd2; 
assign ByteCntEq3       = ByteCnt == 16'd3; 
assign ByteCntEq4       = ByteCnt == 16'd4; 
assign ByteCntEq5       = ByteCnt == 16'd5; 
assign ByteCntEq6       = ByteCnt == 16'd6;
assign ByteCntEq7       = ByteCnt == 16'd7;
assign ByteCntGreat2    = ByteCnt >  16'd2;
assign ByteCntSmall7    = ByteCnt <  16'd7;
assign ByteCntMax       = ByteCnt == 16'hffff;
assign ByteCntMaxFrame  = ByteCnt == MaxFL[15:0] & ~HugEn;


assign ResetIFGCounter = StateSFD  &  MRxDV & MRxDEqD | StateDrop;

assign IncrementIFGCounter = ~ResetIFGCounter & (StateDrop | StateIdle | StatePreamble | StateSFD) & ~IFGCounterEq24;

always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    IFGCounter[4:0] <=  5'h0;
  else
    begin
      if(ResetIFGCounter)
        IFGCounter[4:0] <=  5'h0;
      else
      if(IncrementIFGCounter)
        IFGCounter[4:0] <=  IFGCounter[4:0] + 5'd1; 
    end
end



assign IFGCounterEq24 = (IFGCounter[4:0] == 5'h18) | r_IFG; // 24*400 = 9600 ns or r_IFG is set to 1


always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    DlyCrcCnt[3:0] <=  4'h0;
  else
    begin
      if(DlyCrcCnt[3:0] == 4'h9)
        DlyCrcCnt[3:0] <=  4'h0;
      else
      if(DlyCrcEn & StateSFD)
        DlyCrcCnt[3:0] <=  4'h1;
      else
      if(DlyCrcEn & (|DlyCrcCnt[3:0]))
        DlyCrcCnt[3:0] <=  DlyCrcCnt[3:0] + 4'd1;
    end
end


endmodule
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  eth_rxaddrcheck.v                                           ////
////                                                              ////
////  This file is part of the Ethernet IP core project           ////
////  http://www.opencores.org/project,ethmac/                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Bill Dittenhofer (billditt@aol.com)                   ////
////      - Olof Kindgren    (olof@opencores.org)                 ////
////                                                              ////
////  All additional information is avaliable in the Readme.txt   ////
////  file.                                                       ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2001, 2011 Authors                             ////
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
// 2011-07-06 Olof Kindgren <olof@opencores.org>
// Reset AdressMiss when a new frame arrives. Otherwise it will report
// the last value when a frame is less than seven bytes
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.8  2002/11/19 17:34:52  mohor
// AddressMiss status is connecting to the Rx BD. AddressMiss is identifying
// that a frame was received because of the promiscous mode.
//
// Revision 1.7  2002/09/04 18:41:06  mohor
// Bug when last byte of destination address was not checked fixed.
//
// Revision 1.6  2002/03/20 15:14:11  mohor
// When in promiscous mode some frames were not received correctly. Fixed.
//
// Revision 1.5  2002/03/02 21:06:32  mohor
// Log info was missing.
//
//
// Revision 1.1  2002/02/08 12:51:54  ditt
// Initial release of the ethernet addresscheck module.
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


module eth_rxaddrcheck(MRxClk,  Reset, RxData, Broadcast ,r_Bro ,r_Pro,
                       ByteCntEq2, ByteCntEq3, ByteCntEq4, ByteCntEq5,
                       ByteCntEq6, ByteCntEq7, HASH0, HASH1, ByteCntEq0,
                       CrcHash,    CrcHashGood, StateData, RxEndFrm,
                       Multicast, MAC, RxAbort, AddressMiss, PassAll,
                       ControlFrmAddressOK
                      );


  input        MRxClk; 
  input        Reset; 
  input [7:0]  RxData; 
  input        Broadcast; 
  input        r_Bro; 
  input        r_Pro; 
  input        ByteCntEq0;
  input        ByteCntEq2;
  input        ByteCntEq3;
  input        ByteCntEq4;
  input        ByteCntEq5;
  input        ByteCntEq6;
  input        ByteCntEq7;
  input [31:0] HASH0; 
  input [31:0] HASH1; 
  input [5:0]  CrcHash; 
  input        CrcHashGood; 
  input        Multicast; 
  input [47:0] MAC;
  input [1:0]  StateData;
  input        RxEndFrm;
  input        PassAll;
  input        ControlFrmAddressOK;
  
  output       RxAbort;
  output       AddressMiss;

 wire BroadcastOK;
 wire ByteCntEq2;
 wire ByteCntEq3;
 wire ByteCntEq4; 
 wire ByteCntEq5;
 wire RxAddressInvalid;
 wire RxCheckEn;
 wire HashBit;
 wire [31:0] IntHash;
 reg [7:0]  ByteHash;
 reg MulticastOK;
 reg UnicastOK;
 reg RxAbort;
 reg AddressMiss;
 
assign RxAddressInvalid = ~(UnicastOK | BroadcastOK | MulticastOK | r_Pro);
 
assign BroadcastOK = Broadcast & ~r_Bro;
 
assign RxCheckEn   = | StateData;
 
 // Address Error Reported at end of address cycle
 // RxAbort clears after one cycle
 
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    RxAbort <=  1'b0;
  else if(RxAddressInvalid & ByteCntEq7 & RxCheckEn)
    RxAbort <=  1'b1;
  else
    RxAbort <=  1'b0;
end
 

// This ff holds the "Address Miss" information that is written to the RX BD status.
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    AddressMiss <=  1'b0;
  else if(ByteCntEq0)
    AddressMiss <=  1'b0;
  else if(ByteCntEq7 & RxCheckEn)
    AddressMiss <=  (~(UnicastOK | BroadcastOK | MulticastOK | (PassAll & ControlFrmAddressOK)));
end


// Hash Address Check, Multicast
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    MulticastOK <=  1'b0;
  else if(RxEndFrm | RxAbort)
    MulticastOK <=  1'b0;
  else if(CrcHashGood & Multicast)
    MulticastOK <=  HashBit;
end
 
 
// Address Detection (unicast)
// start with ByteCntEq2 due to delay of addres from RxData
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    UnicastOK <=  1'b0;
  else
  if(RxCheckEn & ByteCntEq2)
    UnicastOK <=    RxData[7:0] == MAC[47:40];
  else
  if(RxCheckEn & ByteCntEq3)
    UnicastOK <=  ( RxData[7:0] == MAC[39:32]) & UnicastOK;
  else
  if(RxCheckEn & ByteCntEq4)
    UnicastOK <=  ( RxData[7:0] == MAC[31:24]) & UnicastOK;
  else
  if(RxCheckEn & ByteCntEq5)
    UnicastOK <=  ( RxData[7:0] == MAC[23:16]) & UnicastOK;
  else
  if(RxCheckEn & ByteCntEq6)
    UnicastOK <=  ( RxData[7:0] == MAC[15:8])  & UnicastOK;
  else
  if(RxCheckEn & ByteCntEq7)
    UnicastOK <=  ( RxData[7:0] == MAC[7:0])   & UnicastOK;
  else
  if(RxEndFrm | RxAbort)
    UnicastOK <=  1'b0;
end
   
assign IntHash = (CrcHash[5])? HASH1 : HASH0;
  
always@(CrcHash or IntHash)
begin
  case(CrcHash[4:3])
    2'b00: ByteHash = IntHash[7:0];
    2'b01: ByteHash = IntHash[15:8];
    2'b10: ByteHash = IntHash[23:16];
    2'b11: ByteHash = IntHash[31:24];
  endcase
end
      
assign HashBit = ByteHash[CrcHash[2:0]];


endmodule

//`include "eth_l3_checksum.v"

module eth_rxethmac (MRxClk, MRxDV, MRxD, Reset, Transmitting, MaxFL, r_IFG,
                     HugEn, DlyCrcEn, RxData, RxValid, RxStartFrm, RxEndFrm,
                     ByteCnt, ByteCntEq0, ByteCntGreat2, ByteCntMaxFrame,
                     CrcError, StateIdle, StatePreamble, StateSFD, StateData,
                     MAC, r_Pro, r_Bro,r_HASH0, r_HASH1, RxAbort, AddressMiss,
                     PassAll, ControlFrmAddressOK
                    );

input         MRxClk;
input         MRxDV;
input   [3:0] MRxD;
input         Transmitting;
input         HugEn;
input         DlyCrcEn;
input  [15:0] MaxFL;
input         r_IFG;
input         Reset;
input  [47:0] MAC;     //  Station Address  
input         r_Bro;   //  broadcast disable
input         r_Pro;   //  promiscuous enable 
input [31:0]  r_HASH0; //  lower 4 bytes Hash Table
input [31:0]  r_HASH1; //  upper 4 bytes Hash Table
input         PassAll;
input         ControlFrmAddressOK;

output  [7:0] RxData;
output        RxValid;
output        RxStartFrm;
output        RxEndFrm;
output [15:0] ByteCnt;
output        ByteCntEq0;
output        ByteCntGreat2;
output        ByteCntMaxFrame;
output        CrcError;
output        StateIdle;
output        StatePreamble;
output        StateSFD;
output  [1:0] StateData;
output        RxAbort;
output        AddressMiss;

reg     [7:0] RxData;
reg           RxValid;
reg           RxStartFrm;
reg           RxEndFrm;
reg           Broadcast;
reg           Multicast;
reg     [5:0] CrcHash;
reg           CrcHashGood;
reg           DelayData;
reg     [7:0] LatchedByte;
reg     [7:0] RxData_d;
reg           RxValid_d;
reg           RxStartFrm_d;
reg           RxEndFrm_d;

wire          MRxDEqD;
wire          MRxDEq5;
wire          StateDrop;
wire          ByteCntEq1;
wire          ByteCntEq2;
wire          ByteCntEq3;
wire          ByteCntEq4;
wire          ByteCntEq5;
wire          ByteCntEq6;
wire          ByteCntEq7;
wire          ByteCntSmall7;
wire   [31:0] Crc;
wire          Enable_Crc;
wire          Initialize_Crc;
wire    [3:0] Data_Crc;
wire          GenerateRxValid;
wire          GenerateRxStartFrm;
wire          GenerateRxEndFrm;
wire          DribbleRxEndFrm;
wire    [3:0] DlyCrcCnt;
wire          IFGCounterEq24;
wire    [15:0] CheckSum;
wire           CSready;
assign MRxDEqD = MRxD == 4'hd;
assign MRxDEq5 = MRxD == 4'h5;

  initial begin 
       RxData=0;
       RxData_d=0;
       RxStartFrm=0;
       RxEndFrm=0;
       RxStartFrm_d=0;
       RxEndFrm_d=0;  
       end
// Rx State Machine module
eth_rxstatem rxstatem1
  (.MRxClk(MRxClk),
   .Reset(Reset),
   .MRxDV(MRxDV),
   .ByteCntEq0(ByteCntEq0),
   .ByteCntGreat2(ByteCntGreat2),
   .Transmitting(Transmitting),
   .MRxDEq5(MRxDEq5),
   .MRxDEqD(MRxDEqD),
   .IFGCounterEq24(IFGCounterEq24),
   .ByteCntMaxFrame(ByteCntMaxFrame),
   .StateData(StateData),
   .StateIdle(StateIdle),
   .StatePreamble(StatePreamble),
   .StateSFD(StateSFD),
   .StateDrop(StateDrop)
   );


// Rx Counters module
eth_rxcounters rxcounters1
  (.MRxClk(MRxClk),
   .Reset(Reset),
   .MRxDV(MRxDV),
   .StateIdle(StateIdle),
   .StateSFD(StateSFD),
   .StateData(StateData),
   .StateDrop(StateDrop),
   .StatePreamble(StatePreamble),
   .MRxDEqD(MRxDEqD),
   .DlyCrcEn(DlyCrcEn),
   .DlyCrcCnt(DlyCrcCnt),
   .Transmitting(Transmitting),
   .MaxFL(MaxFL),
   .r_IFG(r_IFG),
   .HugEn(HugEn),
   .IFGCounterEq24(IFGCounterEq24),
   .ByteCntEq0(ByteCntEq0),
   .ByteCntEq1(ByteCntEq1),
   .ByteCntEq2(ByteCntEq2),
   .ByteCntEq3(ByteCntEq3),
   .ByteCntEq4(ByteCntEq4),
   .ByteCntEq5(ByteCntEq5),
   .ByteCntEq6(ByteCntEq6),
   .ByteCntEq7(ByteCntEq7),
   .ByteCntGreat2(ByteCntGreat2),
   .ByteCntSmall7(ByteCntSmall7),
   .ByteCntMaxFrame(ByteCntMaxFrame),
   .ByteCntOut(ByteCnt)
   );

// Rx Address Check

eth_rxaddrcheck rxaddrcheck1
  (.MRxClk(MRxClk),
   .Reset( Reset),
   .RxData(RxData),
   .Broadcast (Broadcast),
   .r_Bro (r_Bro),
   .r_Pro(r_Pro),
   .ByteCntEq6(ByteCntEq6),
   .ByteCntEq7(ByteCntEq7),
   .ByteCntEq2(ByteCntEq2),
   .ByteCntEq3(ByteCntEq3),
   .ByteCntEq4(ByteCntEq4),
   .ByteCntEq5(ByteCntEq5),
   .HASH0(r_HASH0),
   .HASH1(r_HASH1),
   .ByteCntEq0(ByteCntEq0),
   .CrcHash(CrcHash),
   .CrcHashGood(CrcHashGood),
   .StateData(StateData),
   .Multicast(Multicast),
   .MAC(MAC),
   .RxAbort(RxAbort),
   .RxEndFrm(RxEndFrm),
   .AddressMiss(AddressMiss),
   .PassAll(PassAll),
   .ControlFrmAddressOK(ControlFrmAddressOK)
   );


assign Enable_Crc = MRxDV & (|StateData & ~ByteCntMaxFrame);
assign Initialize_Crc = StateSFD | DlyCrcEn & (|DlyCrcCnt[3:0]) &
                        DlyCrcCnt[3:0] < 4'h9;

assign Data_Crc[0] = MRxD[3];
assign Data_Crc[1] = MRxD[2];
assign Data_Crc[2] = MRxD[1];
assign Data_Crc[3] = MRxD[0];


// Connecting module Crc
eth_crc crcrx
  (.Clk(MRxClk),
   .Reset(Reset),
   .Data(Data_Crc),
   .Enable(Enable_Crc),
   .Initialize(Initialize_Crc), 
   .Crc(Crc),
   .CrcError(CrcError)
   );

 eth_l3_checksum checkSumcalc
 (
   .MRxClk(MRxClk),
   .Reset(Reset),
   .RxData(RxData),
   .ByteCnt(ByteCnt),
   .CheckSum(CheckSum), 
   .CSready(CSready)
 );

// Latching CRC for use in the hash table
always @ (posedge MRxClk)
begin
  CrcHashGood <=  StateData[0] & ByteCntEq6;
end

always @ (posedge MRxClk)
begin
  if(Reset | StateIdle)
    CrcHash[5:0] <=  6'h0;
  else
  if(StateData[0] & ByteCntEq6)
    CrcHash[5:0] <=  Crc[31:26];
end

// Output byte stream
always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      RxData_d[7:0]      <=  8'h0;
      DelayData          <=  1'b0;
      LatchedByte[7:0]   <=  8'h0;
      RxData[7:0]        <=  8'h0;
    end
  else
    begin
      // Latched byte
      LatchedByte[7:0]   <=  {MRxD[3:0], LatchedByte[7:4]};
      DelayData          <=  StateData[0];

      if(GenerateRxValid)
        // Data goes through only in data state 
        RxData_d[7:0] <=  LatchedByte[7:0] & {8{|StateData}};
      else
      if(~DelayData)
        // Delaying data to be valid for two cycles.
        // Zero when not active.
        RxData_d[7:0] <=  8'h0;

      RxData[7:0] <=  RxData_d[7:0];          // Output data byte
    end
end



always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    Broadcast <=  1'b0;
  else
    begin      
      if(StateData[0] & ~(&LatchedByte[7:0]) & ByteCntSmall7)
        Broadcast <=  1'b0;
      else
      if(StateData[0] & (&LatchedByte[7:0]) & ByteCntEq1)
        Broadcast <=  1'b1;
      else
      if(RxAbort | RxEndFrm)
        Broadcast <=  1'b0;
    end
end


always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    Multicast <=  1'b0;
  else
    begin      
      if(StateData[0] & ByteCntEq1 & LatchedByte[0])
        Multicast <=  1'b1;
      else if(RxAbort | RxEndFrm)
      Multicast <=  1'b0;
    end
end


assign GenerateRxValid = StateData[0] & (~ByteCntEq0 | DlyCrcCnt >= 4'h3);

always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      RxValid_d <=  1'b0;
      RxValid   <=  1'b0;
    end
  else
    begin
      RxValid_d <=  GenerateRxValid;
      RxValid   <=  RxValid_d;
    end
end


assign GenerateRxStartFrm = StateData[0] &
                            ((ByteCntEq1 & ~DlyCrcEn) |
                            ((DlyCrcCnt == 4'h3) & DlyCrcEn));

always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      RxStartFrm_d <=  1'b0;
      RxStartFrm   <=  1'b0;
    end
  else
    begin
      RxStartFrm_d <=  GenerateRxStartFrm;
      RxStartFrm   <=  RxStartFrm_d;
    end
end


assign GenerateRxEndFrm = StateData[0] &
                          (~MRxDV & ByteCntGreat2 | ByteCntMaxFrame);
assign DribbleRxEndFrm  = StateData[1] &  ~MRxDV & ByteCntGreat2;


always @ (posedge MRxClk or posedge Reset)
begin
  if(Reset)
    begin
      RxEndFrm_d <=  1'b0;
      RxEndFrm   <=  1'b0;
    end
  else
    begin
      RxEndFrm_d <=  GenerateRxEndFrm;
      RxEndFrm   <=  RxEndFrm_d | DribbleRxEndFrm;
    end
end


endmodule

   
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

          
