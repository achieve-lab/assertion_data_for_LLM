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
`define CAN_MBIST_CTRL_WIDTH 3
