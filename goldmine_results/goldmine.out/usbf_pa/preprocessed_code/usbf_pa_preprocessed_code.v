/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Packet Assembler                                           ////
////  Assembles Token and Data USB packets                       ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
////                                                             ////
////  Downloaded from: http://www.opencores.org/cores/usb/       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2003 Rudolf Usselmann                    ////
////                         www.asics.ws                        ////
////                         rudi@asics.ws                       ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
 
//  CVS Log
//
//  $Id: usbf_pa.v,v 1.6 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.6 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.5  2001/11/04 12:22:45  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
//               Revision 1.4  2001/09/24 01:15:28  rudi
//
//               Changed reset to be active high async.
//
//               Revision 1.3  2001/09/19 14:38:57  rudi
//
//               Fixed TxValid handling bug.
//
//               Revision 1.2  2001/08/10 08:48:33  rudi
//
//               - Changed IO names to be more clear.
//               - Uniquifyed define names to be core specific.
//
//               Revision 1.1  2001/08/03 05:30:09  rudi
//
//
//               1) Reorganized directory structure
//
//               Revision 1.0  2001/03/07 09:17:12  rudi
//
//
//               Changed all revisions to revision 1.0. This is because OpenCores CVS
//               interface could not handle the original '0.1' revision ....
//
//               Revision 0.1.0.1  2001/02/28 08:10:54  rudi
//               Initial Release
//
//
 
/////////////////////////////////////////////////////////////////////
////                                                             ////
////  USB function defines file                                  ////
////                                                             ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
////                                                             ////
////  Downloaded from: http://www.opencores.org/cores/usb/       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2003 Rudolf Usselmann                    ////
////                         www.asics.ws                        ////
////                         rudi@asics.ws                       ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
 
//  CVS Log
//
//  $Id: usbf_defines.v,v 1.6 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.6 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.5  2001/11/04 12:22:43  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
//               Revision 1.4  2001/09/23 08:39:33  rudi
//
//               Renamed DEBUG and VERBOSE_DEBUG to USBF_DEBUG and USBF_VERBOSE_DEBUG ...
//
//               Revision 1.3  2001/09/13 13:14:02  rudi
//
//               Fixed a problem that would sometimes prevent the core to come out of
//               reset and immediately be operational ...
//
//               Revision 1.2  2001/08/10 08:48:33  rudi
//
//               - Changed IO names to be more clear.
//               - Uniquifyed define names to be core specific.
//
//               Revision 1.1  2001/08/03 05:30:09  rudi
//
//
//               1) Reorganized directory structure
//
//               Revision 1.2  2001/03/31 13:00:52  rudi
//
//               - Added Core configuration
//               - Added handling of OUT packets less than MAX_PL_SZ in DMA mode
//               - Modified WISHBONE interface and sync logic
//               - Moved SSRAM outside the core (added interface)
//               - Many small bug fixes ...
//
//               Revision 1.0  2001/03/07 09:17:12  rudi
//
//
//               Changed all revisions to revision 1.0. This is because OpenCores CVS
//               interface could not handle the original '0.1' revision ....
//
//               Revision 0.2  2001/03/07 09:08:13  rudi
//
//               Added USB control signaling (Line Status) block. Fixed some minor
//               typos, added resume bit and signal.
//
//               Revision 0.1.0.1  2001/02/28 08:11:35  rudi
//               Initial Release
//
//
 
`timescale 1ns / 10ps
 
// Uncomment the lines below to get various levels of debugging
// verbosity ...

//`define USBF_VERBOSE_DEBUG
 
// Uncomment the line below to run the test bench
// Comment it out to use your own address parameters ...

 
// For each endpoint that should actually be instantiated,
// set the below define value to a one. Uncomment the define
// statement for unused endpoints. The endpoints should be
// sequential, e.q. 1,2,3. I have not tested what happens if
// you select endpoints in a non sequential manner e.g. 1,4,6
// Actual (logical) endpoint IDs are set by the software. There
// is no correlation between the physical endpoint number (below)
// and the actual (logical) endpoint number.

		// Do not modify this section
		// this is to run the test bench
		
		
		


















 
 
// Highest address line number that goes to the USB core
// Typically only A0 through A17 are needed, where A17
// selects between the internal buffer memory and the
// register file.
// Implementations may choose to have a more complex address
// decoding ....
 

		// Do not modify this section
		// this is to run the test bench
		
		
		
		
		//`define USBF_ASYNC_RESET
 












 
 
/////////////////////////////////////////////////////////////////////
//
// Items below this point should NOT be modified by the end user
// UNLESS you know exactly what you are doing !
// Modify at you own risk !!!
//
/////////////////////////////////////////////////////////////////////
 
// PID Encodings

















 
// The HMS_DEL is a constant for the "Half Micro Second"
// Clock pulse generator. This constant specifies how many
// Phy clocks there are between two hms_clock pulses. This
// constant plus 2 represents the actual delay.
// Example: For a 60 Mhz (16.667 nS period) Phy Clock, the
// delay must be 30 phy clocks: 500ns / 16.667nS = 30 clocks

 
// After sending Data in response to an IN token from host, the
// host must reply with an ack. The host has 622nS in Full Speed
// mode and 400nS in High Speed mode to reply. RX_ACK_TO_VAL_FS
// and RX_ACK_TO_VAL_HS are the numbers of UTMI clock cycles
// minus 2 for Full and High Speed modes.


 
 
// After sending an OUT token the host must send a data packet.
// The host has 622nS in Full Speed mode and 400nS in High Speed
// mode to send the data packet.
// TX_DATA_TO_VAL_FS and TX_DATA_TO_VAL_HS are is the numbers of
// UTMI clock cycles minus 2.


 
 
// --------------------------------------------------
// USB Line state & Speed Negotiation Time Values
 
 
// Prescaler Clear value.
// The prescaler generates a 0.25uS pulse, from a nominal PHY clock of
// 60 Mhz. 250nS/16.667ns=15. The prescaler has to be cleared every 15
// cycles. Due to the pipeline, subtract 2 from 15, resulting in 13 cycles.
// !!! This is the only place that needs to be changed if a PHY with different
// !!! clock output is used.

 
// uS counter representation of 2.5uS (2.5/0.25=10)

 
// uS counter clear value
// The uS counter counts the time in 0.25uS intervals. It also generates
// a count enable to the mS counter, every 62.5 uS.
// The clear value is 62.5uS/0.25uS=250 cycles.

 
// mS counter representation of 3.0mS (3.0/0.0625=48)

 
// mS counter representation of 3.125mS (3.125/0.0625=50)

 
// mS counter representation of 5mS (5/0.0625=80)

 
// Multi purpose Counter Prescaler, generate 2.5 uS period
// 2500/16.667ns=150 (minus 2 for pipeline)

 
// Generate 0.5mS period from the 2.5 uS clock
// 500/2.5 = 200

 
// Indicate when internal wakeup has completed
// me_cnt counts 0.5 mS intervals. E.g.: 5.0mS are (5/0.5) 10 ticks
// Must be 0 =< 10 mS

 
// Indicate when 100uS have passed
// me_ps2 counts 2.5uS intervals. 100uS are (100/2.5) 40 ticks

 
// Indicate when 1.0 mS have passed
// me_cnt counts 0.5 mS intervals. 1.0mS are (1/0.5) 2 ticks

 
// Indicate when 1.2 mS have passed
// me_cnt counts 0.5 mS intervals. 1.2mS are (1.2/0.5) 2 ticks

 
// Indicate when 100 mS have passed
// me_cnt counts 0.5 mS intervals. 100mS are (100/0.5) 200 ticks

/////////////////////////////////////////////////////////////////////
////                                                             ////
////  USB CRC5 and CRC16 Modules                                 ////
////                                                             ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
////                                                             ////
////  Downloaded from: http://www.opencores.org/cores/usb/       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2003 Rudolf Usselmann                    ////
////                         www.asics.ws                        ////
////                         rudi@asics.ws                       ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
 
//  CVS Log
//
//  $Id: usbf_crc16.v,v 1.2 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.2 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.1  2001/08/03 05:30:09  rudi
//
//
//               1) Reorganized directory structure
//
//               Revision 1.0  2001/03/07 09:17:12  rudi
//
//
//               Changed all revisions to revision 1.0. This is because OpenCores CVS
//               interface could not handle the original '0.1' revision ....
//
//               Revision 0.1.0.1  2001/02/28 08:10:42  rudi
//               Initial Release
//
//                            
 
/////////////////////////////////////////////////////////////////////
////                                                             ////
////  USB function defines file                                  ////
////                                                             ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
////                                                             ////
////  Downloaded from: http://www.opencores.org/cores/usb/       ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2003 Rudolf Usselmann                    ////
////                         www.asics.ws                        ////
////                         rudi@asics.ws                       ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
 
//  CVS Log
//
//  $Id: usbf_defines.v,v 1.6 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.6 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.5  2001/11/04 12:22:43  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
//               Revision 1.4  2001/09/23 08:39:33  rudi
//
//               Renamed DEBUG and VERBOSE_DEBUG to USBF_DEBUG and USBF_VERBOSE_DEBUG ...
//
//               Revision 1.3  2001/09/13 13:14:02  rudi
//
//               Fixed a problem that would sometimes prevent the core to come out of
//               reset and immediately be operational ...
//
//               Revision 1.2  2001/08/10 08:48:33  rudi
//
//               - Changed IO names to be more clear.
//               - Uniquifyed define names to be core specific.
//
//               Revision 1.1  2001/08/03 05:30:09  rudi
//
//
//               1) Reorganized directory structure
//
//               Revision 1.2  2001/03/31 13:00:52  rudi
//
//               - Added Core configuration
//               - Added handling of OUT packets less than MAX_PL_SZ in DMA mode
//               - Modified WISHBONE interface and sync logic
//               - Moved SSRAM outside the core (added interface)
//               - Many small bug fixes ...
//
//               Revision 1.0  2001/03/07 09:17:12  rudi
//
//
//               Changed all revisions to revision 1.0. This is because OpenCores CVS
//               interface could not handle the original '0.1' revision ....
//
//               Revision 0.2  2001/03/07 09:08:13  rudi
//
//               Added USB control signaling (Line Status) block. Fixed some minor
//               typos, added resume bit and signal.
//
//               Revision 0.1.0.1  2001/02/28 08:11:35  rudi
//               Initial Release
//
//
 
`timescale 1ns / 10ps
 
// Uncomment the lines below to get various levels of debugging
// verbosity ...

//`define USBF_VERBOSE_DEBUG
 
// Uncomment the line below to run the test bench
// Comment it out to use your own address parameters ...

 
// For each endpoint that should actually be instantiated,
// set the below define value to a one. Uncomment the define
// statement for unused endpoints. The endpoints should be
// sequential, e.q. 1,2,3. I have not tested what happens if
// you select endpoints in a non sequential manner e.g. 1,4,6
// Actual (logical) endpoint IDs are set by the software. There
// is no correlation between the physical endpoint number (below)
// and the actual (logical) endpoint number.

		// Do not modify this section
		// this is to run the test bench
		
		
		


















 
 
// Highest address line number that goes to the USB core
// Typically only A0 through A17 are needed, where A17
// selects between the internal buffer memory and the
// register file.
// Implementations may choose to have a more complex address
// decoding ....
 

		// Do not modify this section
		// this is to run the test bench
		
		
		
		
		//`define USBF_ASYNC_RESET
 












 
 
/////////////////////////////////////////////////////////////////////
//
// Items below this point should NOT be modified by the end user
// UNLESS you know exactly what you are doing !
// Modify at you own risk !!!
//
/////////////////////////////////////////////////////////////////////
 
// PID Encodings

















 
// The HMS_DEL is a constant for the "Half Micro Second"
// Clock pulse generator. This constant specifies how many
// Phy clocks there are between two hms_clock pulses. This
// constant plus 2 represents the actual delay.
// Example: For a 60 Mhz (16.667 nS period) Phy Clock, the
// delay must be 30 phy clocks: 500ns / 16.667nS = 30 clocks

 
// After sending Data in response to an IN token from host, the
// host must reply with an ack. The host has 622nS in Full Speed
// mode and 400nS in High Speed mode to reply. RX_ACK_TO_VAL_FS
// and RX_ACK_TO_VAL_HS are the numbers of UTMI clock cycles
// minus 2 for Full and High Speed modes.


 
 
// After sending an OUT token the host must send a data packet.
// The host has 622nS in Full Speed mode and 400nS in High Speed
// mode to send the data packet.
// TX_DATA_TO_VAL_FS and TX_DATA_TO_VAL_HS are is the numbers of
// UTMI clock cycles minus 2.


 
 
// --------------------------------------------------
// USB Line state & Speed Negotiation Time Values
 
 
// Prescaler Clear value.
// The prescaler generates a 0.25uS pulse, from a nominal PHY clock of
// 60 Mhz. 250nS/16.667ns=15. The prescaler has to be cleared every 15
// cycles. Due to the pipeline, subtract 2 from 15, resulting in 13 cycles.
// !!! This is the only place that needs to be changed if a PHY with different
// !!! clock output is used.

 
// uS counter representation of 2.5uS (2.5/0.25=10)

 
// uS counter clear value
// The uS counter counts the time in 0.25uS intervals. It also generates
// a count enable to the mS counter, every 62.5 uS.
// The clear value is 62.5uS/0.25uS=250 cycles.

 
// mS counter representation of 3.0mS (3.0/0.0625=48)

 
// mS counter representation of 3.125mS (3.125/0.0625=50)

 
// mS counter representation of 5mS (5/0.0625=80)

 
// Multi purpose Counter Prescaler, generate 2.5 uS period
// 2500/16.667ns=150 (minus 2 for pipeline)

 
// Generate 0.5mS period from the 2.5 uS clock
// 500/2.5 = 200

 
// Indicate when internal wakeup has completed
// me_cnt counts 0.5 mS intervals. E.g.: 5.0mS are (5/0.5) 10 ticks
// Must be 0 =< 10 mS

 
// Indicate when 100uS have passed
// me_ps2 counts 2.5uS intervals. 100uS are (100/2.5) 40 ticks

 
// Indicate when 1.0 mS have passed
// me_cnt counts 0.5 mS intervals. 1.0mS are (1/0.5) 2 ticks

 
// Indicate when 1.2 mS have passed
// me_cnt counts 0.5 mS intervals. 1.2mS are (1.2/0.5) 2 ticks

 
// Indicate when 100 mS have passed
// me_cnt counts 0.5 mS intervals. 100mS are (100/0.5) 200 ticks

 
///////////////////////////////////////////////////////////////////
//
// CRC16
//
///////////////////////////////////////////////////////////////////
 
module usbf_crc16(crc_in, din, crc_out);
input	[15:0]	crc_in;
input	[7:0]	din;
output	[15:0]	crc_out;
 
assign crc_out[0] =	din[7] ^ din[6] ^ din[5] ^ din[4] ^ din[3] ^
			din[2] ^ din[1] ^ din[0] ^ crc_in[8] ^ crc_in[9] ^
			crc_in[10] ^ crc_in[11] ^ crc_in[12] ^ crc_in[13] ^
			crc_in[14] ^ crc_in[15];
assign crc_out[1] =	din[7] ^ din[6] ^ din[5] ^ din[4] ^ din[3] ^ din[2] ^
			din[1] ^ crc_in[9] ^ crc_in[10] ^ crc_in[11] ^
			crc_in[12] ^ crc_in[13] ^ crc_in[14] ^ crc_in[15];
assign crc_out[2] =	din[1] ^ din[0] ^ crc_in[8] ^ crc_in[9];
assign crc_out[3] =	din[2] ^ din[1] ^ crc_in[9] ^ crc_in[10];
assign crc_out[4] =	din[3] ^ din[2] ^ crc_in[10] ^ crc_in[11];
assign crc_out[5] =	din[4] ^ din[3] ^ crc_in[11] ^ crc_in[12];
assign crc_out[6] =	din[5] ^ din[4] ^ crc_in[12] ^ crc_in[13];
assign crc_out[7] =	din[6] ^ din[5] ^ crc_in[13] ^ crc_in[14];
assign crc_out[8] =	din[7] ^ din[6] ^ crc_in[0] ^ crc_in[14] ^ crc_in[15];
assign crc_out[9] =	din[7] ^ crc_in[1] ^ crc_in[15];
assign crc_out[10] =	crc_in[2];
assign crc_out[11] =	crc_in[3];
assign crc_out[12] =	crc_in[4];
assign crc_out[13] =	crc_in[5];
assign crc_out[14] =	crc_in[6];
assign crc_out[15] =	din[7] ^ din[6] ^ din[5] ^ din[4] ^ din[3] ^ din[2] ^
			din[1] ^ din[0] ^ crc_in[7] ^ crc_in[8] ^ crc_in[9] ^
			crc_in[10] ^ crc_in[11] ^ crc_in[12] ^ crc_in[13] ^
			crc_in[14] ^ crc_in[15];
 
endmodule
 
module usbf_pa(	clk, rst,
 
		// UTMI TX I/F
		tx_data, tx_valid, tx_valid_last, tx_ready,
		tx_first,
 
		// Protocol Engine Interface
		send_token, token_pid_sel,
		send_data, data_pid_sel,
		send_zero_length,
 
		// IDMA Interface
		tx_data_st, rd_next
		);
 
input		clk, rst;
 
// UTMI TX Interface
output	[7:0]	tx_data;
output		tx_valid;
output		tx_valid_last;
input		tx_ready;
output		tx_first;
 
// Protocol Engine Interface
input		send_token;
input	[1:0]	token_pid_sel;
input		send_data;
input	[1:0]	data_pid_sel;
input		send_zero_length;
 
// IDMA Interface
input	[7:0]	tx_data_st;
output		rd_next;
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
parameter	[4:0]	// synopsys enum state
		IDLE   = 5'b00001,
		DATA   = 5'b00010,
		CRC1   = 5'b00100,
		CRC2   = 5'b01000,
		WAIT   = 5'b10000;
 
reg	[4:0]	/* synopsys enum state */ state, next_state;
// synopsys state_vector state
 
reg		last;
reg		rd_next;
 
reg	[7:0]	token_pid, data_pid;	// PIDs from selectors
reg	[7:0]	tx_data_d;
reg	[7:0]	tx_data_data;
reg		dsel;
reg		tx_valid_d;
reg		send_token_r;
reg	[7:0]	tx_spec_data;
reg		crc_sel1, crc_sel2;
reg		tx_first_r;
reg		send_data_r;
wire		crc16_clr;
reg	[15:0]	crc16;
wire	[15:0]	crc16_next;
wire	[15:0]	crc16_rev;
wire		crc16_add;
reg		send_data_r2;
reg		tx_valid_r;
reg		tx_valid_r1;
reg		zero_length_r;
reg		send_zero_length_r;
 
///////////////////////////////////////////////////////////////////
//
// Misc Logic
//
 
always @(posedge clk)
	send_zero_length_r <= send_zero_length;
 



always @(posedge clk)

	if(!rst)	zero_length_r <= 1'b0;
	else
	if(last)	zero_length_r <= 1'b0;
	else
	if(crc16_clr)	zero_length_r <= send_zero_length_r;
 
always @(posedge clk)
	tx_valid_r1 <= tx_valid;
 
always @(posedge clk)
	tx_valid_r <= tx_valid_r1;
 



always @(posedge clk)

	if(!rst)	send_token_r <= 1'b0;
	else
	if(send_token)	send_token_r <= 1'b1;
	else
	if(tx_ready)	send_token_r <= 1'b0;
 
// PID Select
always @(token_pid_sel)
	case(token_pid_sel)		// synopsys full_case parallel_case
	   2'd0: token_pid = {  ~4'b0010,   4'b0010};
	   2'd1: token_pid = { ~4'b1010,  4'b1010};
	   2'd2: token_pid = {~4'b1110, 4'b1110};
	   2'd3: token_pid = { ~4'b0110,  4'b0110};
	endcase
 
always @(data_pid_sel)
	case(data_pid_sel)		// synopsys full_case parallel_case
	   2'd0: data_pid = { ~4'b0011, 4'b0011};
	   2'd1: data_pid = { ~4'b1011, 4'b1011};
	   2'd2: data_pid = { ~4'b0111, 4'b0111};
	   2'd3: data_pid = { ~4'b1111, 4'b1111};
	endcase
 
// Data path Muxes
 
always @(send_token or send_token_r or token_pid or tx_data_data)
	if(send_token || send_token_r)	tx_data_d = token_pid;
	else				tx_data_d = tx_data_data;
 
always @(dsel or tx_data_st or tx_spec_data)
	if(dsel)	tx_data_data = tx_spec_data;
	else		tx_data_data = tx_data_st;
 
always @(crc_sel1 or crc_sel2 or data_pid or crc16_rev)
	if(!crc_sel1 && !crc_sel2)	tx_spec_data = data_pid;
	else
	if(crc_sel1)			tx_spec_data = crc16_rev[15:8];	// CRC 1
	else				tx_spec_data = crc16_rev[7:0];	// CRC 2
 
assign tx_data = tx_data_d;
 
// TX Valid assignment
assign tx_valid_last = send_token | last;
assign tx_valid = tx_valid_d;
 
always @(posedge clk)
	tx_first_r <= send_token | send_data;
 
assign tx_first = (send_token | send_data) & ! tx_first_r;
 
// CRC Logic
always @(posedge clk)
	send_data_r <= send_data;
 
always @(posedge clk)
	send_data_r2 <= send_data_r;
 
assign crc16_clr = send_data & !send_data_r;
 
assign crc16_add =  !zero_length_r & (send_data_r & !send_data_r2) | (rd_next & !crc_sel1); 
 
always @(posedge clk)
	if(crc16_clr)		crc16 <= 16'hffff;
	else
	if(crc16_add)		crc16 <= crc16_next;
 
 
usbf_crc16 u1(
	.crc_in(	crc16		),
	.din(	{tx_data_st[0], tx_data_st[1],
		tx_data_st[2], tx_data_st[3],
		tx_data_st[4], tx_data_st[5],
		tx_data_st[6], tx_data_st[7]}	),
	.crc_out(	crc16_next		) );
 
assign crc16_rev[15] = ~crc16[8];
assign crc16_rev[14] = ~crc16[9];
assign crc16_rev[13] = ~crc16[10];
assign crc16_rev[12] = ~crc16[11];
assign crc16_rev[11] = ~crc16[12];
assign crc16_rev[10] = ~crc16[13];
assign crc16_rev[9]  = ~crc16[14];
assign crc16_rev[8]  = ~crc16[15];
assign crc16_rev[7]  = ~crc16[0];
assign crc16_rev[6]  = ~crc16[1];
assign crc16_rev[5]  = ~crc16[2];
assign crc16_rev[4]  = ~crc16[3];
assign crc16_rev[3]  = ~crc16[4];
assign crc16_rev[2]  = ~crc16[5];
assign crc16_rev[1]  = ~crc16[6];
assign crc16_rev[0]  = ~crc16[7];
 
///////////////////////////////////////////////////////////////////
//
// Transmit/Encode state machine
//
 



always @(posedge clk)

	if(!rst)	state <= IDLE;
	else		state <= next_state;
 
always @(state or send_data or tx_ready or tx_valid_r or send_zero_length_r)
   begin
	next_state = state;	// Default don't change current state
	tx_valid_d = 1'b0;
	dsel = 1'b0;
	rd_next = 1'b0;
	last = 1'b0;
	crc_sel1 = 1'b0;
	crc_sel2 = 1'b0;
	case(state)		// synopsys full_case parallel_case
	   IDLE:
		   begin
			if(send_zero_length_r && send_data)
			   begin
				tx_valid_d = 1'b1;
				next_state = WAIT;
				dsel = 1'b1;
			   end
			else
			if(send_data)			// Send DATA packet
			   begin
				tx_valid_d = 1'b1;
				next_state = DATA;
				dsel = 1'b1;
			   end
		   end
	   DATA:
		   begin
			if(tx_ready && tx_valid_r)
				rd_next = 1'b1;
 
			tx_valid_d = 1'b1;
			if(!send_data && tx_ready && tx_valid_r)
			   begin
				dsel = 1'b1;
				crc_sel1 = 1'b1;
				next_state = CRC1;
			   end
		   end
	   WAIT:		// In case of early tx_ready ...
		   begin
			crc_sel1 = 1'b1;
			dsel = 1'b1;
			tx_valid_d = 1'b1;
			next_state = CRC1;
		   end
	   CRC1:
		   begin
			dsel = 1'b1;
			tx_valid_d = 1'b1;
			if(tx_ready)
			   begin
				last = 1'b1;
				crc_sel2 = 1'b1;
				next_state = CRC2;
			   end
			else
			   begin
				tx_valid_d = 1'b1;
				crc_sel1 = 1'b1;
			   end
 
		   end
	   CRC2:
		   begin
			dsel = 1'b1;
			crc_sel2 = 1'b1;
			if(tx_ready)
			   begin
				next_state = IDLE;
			   end
			else
			   begin
				last = 1'b1;
			   end
 
		   end
	endcase
   end
 
endmodule
 
 
