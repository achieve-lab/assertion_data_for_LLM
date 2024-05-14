/////////////////////////////////////////////////////////////////////
////                                                             ////
////  WISHBONE Interface                                         ////
////  This is the external bus interface, that is WISHBONE       ////
////  SoC compliant.                                             ////
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
//  $Id: usbf_wb.v,v 1.4 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.4 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.3  2001/09/24 01:15:28  rudi
//
//               Changed reset to be active high async.
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
//               Revision 0.1.0.1  2001/02/28 08:11:47  rudi
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

 
module usbf_wb(	// WISHBONE Interface
		wb_clk, phy_clk, rst, wb_addr_i, wb_data_i, wb_data_o, 
		wb_ack_o, wb_we_i, wb_stb_i, wb_cyc_i,
 
		// Memory Arbiter Interface
		ma_adr, ma_dout, ma_din, ma_we, ma_req, ma_ack,
 
		// Register File interface
		rf_re, rf_we, rf_din, rf_dout);
 
input		wb_clk, phy_clk;
input		rst;
input	[17:0]	wb_addr_i;
input	[31:0]	wb_data_i;
output	[31:0]	wb_data_o;
output		wb_ack_o;
input		wb_we_i;
input		wb_stb_i;
input		wb_cyc_i;
 
// Memory Arbiter Interface
output	[17:0]	ma_adr;
output	[31:0]	ma_dout;
input	[31:0]	ma_din;
output		ma_we;
output		ma_req;
input		ma_ack;
 
// Register File interface
output		rf_re;
output		rf_we;
input	[31:0]	rf_din;
output	[31:0]	rf_dout;
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
parameter	[5:0]	// synopsys enum state
		IDLE	= 6'b00_0001,
		MA_WR	= 6'b00_0010,
		MA_RD	= 6'b00_0100,
		W0	= 6'b00_1000,
		W1	= 6'b01_0000,
		W2	= 6'b10_0000;
 
reg	[5:0]	/* synopsys enum state */ state, next_state;
// synopsys state_vector state
 
reg		wb_req_s1;
reg		wb_ack_d, wb_ack_s1, wb_ack_s1a, wb_ack_s2;
reg		ma_we;
reg		rf_re, rf_we_d;
reg		ma_req;
reg		wb_ack_o;
reg	[31:0]	wb_data_o;
 
///////////////////////////////////////////////////////////////////
//
// Interface Logic
//
 
assign ma_adr = wb_addr_i;
assign ma_dout = wb_data_i;
assign rf_dout = wb_data_i;
 
always @(posedge wb_clk)
	if( (!wb_addr_i[17]) )	wb_data_o <= rf_din;
	else			wb_data_o <= ma_din;
 
// Sync WISHBONE Request
always @(posedge phy_clk)
	wb_req_s1 <= wb_stb_i & wb_cyc_i;
 
// Sync WISHBONE Ack
always @(posedge wb_clk)
	wb_ack_s1 <= wb_ack_d;
 
always @(posedge wb_clk)
	wb_ack_o <= wb_ack_s1 & !wb_ack_s2 & !wb_ack_o;
 
always @(posedge wb_clk)
	wb_ack_s1a <= wb_ack_s1;
 
always @(posedge wb_clk)
	wb_ack_s2 <= wb_ack_s1a;
 
assign	rf_we = rf_we_d;
 
///////////////////////////////////////////////////////////////////
//
// Interface State Machine
//
 



always @(posedge phy_clk)

	if(!rst)	state <= IDLE;
	else		state <= next_state;
 
always @(state or wb_req_s1 or wb_addr_i or ma_ack or wb_we_i)
   begin
	next_state = state;
	ma_req = 1'b0;
	ma_we = 1'b0;
	wb_ack_d = 1'b0;
	rf_re = 1'b0;
	rf_we_d = 1'b0;
 
	case(state)		// synopsys full_case parallel_case
	   IDLE:
	     begin
		if(wb_req_s1 && (wb_addr_i[17]) && wb_we_i)	
		   begin
			ma_req = 1'b1;
			ma_we = 1'b1;
			next_state = MA_WR;
		   end
		if(wb_req_s1 && (wb_addr_i[17]) && !wb_we_i)
		   begin
			ma_req = 1'b1;
			next_state = MA_RD;
		   end
		if(wb_req_s1 && (!wb_addr_i[17]) && wb_we_i)
		   begin
			rf_we_d = 1'b1;
			next_state = W0;
		   end
		if(wb_req_s1 && (!wb_addr_i[17]) && !wb_we_i)
		   begin
			rf_re = 1'b1;
			next_state = W0;
		   end
	     end
 
	   MA_WR:
	     begin
		if(!ma_ack)
		   begin
			ma_req = 1'b1;
			ma_we = 1'b1;
		   end
		else
		   begin
			wb_ack_d = 1'b1;
			next_state = W1;
		   end
	     end
 
	   MA_RD:
	     begin
		if(!ma_ack)
		   begin
			ma_req = 1'b1;
		   end
		else
		   begin
			wb_ack_d = 1'b1;
			next_state = W1;
		   end
	     end
 
	   W0:
	     begin
			wb_ack_d = 1'b1;
			next_state = W1;
	     end
 
	   W1:
	     begin
			next_state = W2;
	     end
 
	   W2:
	     begin
			next_state = IDLE;
	     end
 
	endcase
   end
 
endmodule
 
