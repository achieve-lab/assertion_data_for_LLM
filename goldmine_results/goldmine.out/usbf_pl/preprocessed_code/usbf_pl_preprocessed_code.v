/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Protocol Layer                                             ////
////  This block is typically referred to as the SEI in USB      ////
////  Specification. It encapsulates the Packet Assembler,       ////
////  disassembler, protocol engine and internal DMA             ////
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
//  $Id: usbf_pl.v,v 1.5 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.5 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.4  2001/11/04 12:22:45  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
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
//               Revision 0.1.0.1  2001/02/28 08:11:11  rudi
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
////  Packet Disassembler                                        ////
////  Disassembles Token and Data USB packets                    ////
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
//  $Id: usbf_pd.v,v 1.7 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.7 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.5  2001/11/03 03:26:22  rudi
//
//               - Fixed several interrupt and error condition reporting bugs
//
//               Revision 1.4  2001/09/24 01:15:28  rudi
//
//               Changed reset to be active high async.
//
//               Revision 1.3  2001/09/10 15:54:20  rudi
//
//               Fixed crc5 checking.
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
//               Revision 1.2  2001/03/31 13:00:51  rudi
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
//               Revision 0.1.0.1  2001/02/28 08:10:59  rudi
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
//  $Id: usbf_crc5.v,v 1.2 2003-10-17 02:36:57 rudi Exp $
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
// CRC5
//
///////////////////////////////////////////////////////////////////
 
module usbf_crc5(crc_in, din, crc_out);
input	[4:0]	crc_in;
input	[10:0]	din;
output	[4:0]	crc_out;
 
assign crc_out[0] =	din[10] ^ din[9] ^ din[6] ^ din[5] ^ din[3] ^
			din[0] ^ crc_in[0] ^ crc_in[3] ^ crc_in[4];
 
assign crc_out[1] =	din[10] ^ din[7] ^ din[6] ^ din[4] ^ din[1] ^
			crc_in[0] ^ crc_in[1] ^ crc_in[4];
 
assign crc_out[2] =	din[10] ^ din[9] ^ din[8] ^ din[7] ^ din[6] ^
			din[3] ^ din[2] ^ din[0] ^ crc_in[0] ^ crc_in[1] ^
			crc_in[2] ^ crc_in[3] ^ crc_in[4];
 
assign crc_out[3] =	din[10] ^ din[9] ^ din[8] ^ din[7] ^ din[4] ^ din[3] ^
			din[1] ^ crc_in[1] ^ crc_in[2] ^ crc_in[3] ^ crc_in[4];
 
assign crc_out[4] =	din[10] ^ din[9] ^ din[8] ^ din[5] ^ din[4] ^ din[2] ^
			crc_in[2] ^ crc_in[3] ^ crc_in[4];
 
endmodule
 
module usbf_pd(	clk, rst,
 
		// UTMI RX I/F
		rx_data, rx_valid, rx_active, rx_err,
 
		// PID Information
		pid_OUT, pid_IN, pid_SOF, pid_SETUP,
		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA,
		pid_ACK, pid_NACK, pid_STALL, pid_NYET,
		pid_PRE, pid_ERR, pid_SPLIT, pid_PING,
		pid_cks_err,
 
		// Token Information
		token_fadr, token_endp, token_valid, crc5_err,
		frame_no,
 
		// Receive Data Output
		rx_data_st, rx_data_valid, rx_data_done, crc16_err,
 
		// Misc.
		seq_err
		);
 
input		clk, rst;
 
		//UTMI RX Interface
input	[7:0]	rx_data;
input		rx_valid, rx_active, rx_err;
 
		// Decoded PIDs (used when token_valid is asserted)
output		pid_OUT, pid_IN, pid_SOF, pid_SETUP;
output		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA;
output		pid_ACK, pid_NACK, pid_STALL, pid_NYET;
output		pid_PRE, pid_ERR, pid_SPLIT, pid_PING;
output		pid_cks_err;		// Indicates a PID checksum error
 
 
output	[6:0]	token_fadr;		// Function address from token
output	[3:0]	token_endp;		// Endpoint number from token
output		token_valid;		// Token is valid
output		crc5_err;		// Token crc5 error
output	[10:0]	frame_no;		// Frame number for SOF tokens
 
output	[7:0]	rx_data_st;		// Data to memory store unit
output		rx_data_valid;		// Data on rx_data_st is valid
output		rx_data_done;		// Indicates end of a transfer
output		crc16_err;		// Data packet CRC 16 error
 
output		seq_err;		// State Machine Sequence Error
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
parameter	[3:0]	// synopsys enum state
		IDLE   = 4'b0001,
		ACTIVE = 4'b0010,
		TOKEN  = 4'b0100,
		DATA   = 4'b1000;
 
reg	[3:0]	/* synopsys enum state */ state, next_state;
// synopsys state_vector state
 
reg	[7:0]	pid;			// Packet PDI
reg		pid_le_sm;		// PID Load enable from State Machine
wire		pid_ld_en;		// Enable loading of PID (all conditions)
wire		pid_cks_err;		// Indicates a pid checksum err
 
		// Decoded PID values
wire		pid_OUT, pid_IN, pid_SOF, pid_SETUP;
wire		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA;
wire		pid_ACK, pid_NACK, pid_STALL, pid_NYET;
wire		pid_PRE, pid_ERR, pid_SPLIT, pid_PING, pid_RES;
wire		pid_TOKEN;		// All TOKEN packet that we recognize
wire		pid_DATA;		// All DATA packets that we recognize
 
reg	[7:0]	token0, token1;		// Token Registers
reg		token_le_1, token_le_2;	// Latch enables for token storage registers
wire	[4:0]	token_crc5;
 
reg	[7:0]	d0, d1, d2;		// Data path delay line (used to filter out crcs)
reg		data_valid_d;		// Data Valid output from State Machine
reg		data_done;		// Data cycle complete output from State Machine
reg		data_valid0; 		// Data valid delay line
reg		rxv1;
reg		rxv2;
 
reg		seq_err;		// State machine sequence error
 
reg		got_pid_ack;
 
reg		token_valid_r1;
reg		token_valid_str1;
 
reg		rx_active_r;
 
wire	[4:0]	crc5_out;
wire	[4:0]	crc5_out2;
wire		crc16_clr;
reg	[15:0]	crc16_sum;
wire	[15:0]	crc16_out;
 
///////////////////////////////////////////////////////////////////
//
// Misc Logic
//
 
// PID Decoding Logic
assign pid_ld_en = pid_le_sm & rx_active & rx_valid;
 



always @(posedge clk)

	if(!rst)		pid <= 8'hf0;
	else
	if(pid_ld_en)		pid <= rx_data;
 
assign	pid_cks_err = (pid[3:0] != ~pid[7:4]);
 
assign	pid_OUT   = pid[3:0] == 4'b0001;
assign	pid_IN    = pid[3:0] == 4'b1001;
assign	pid_SOF   = pid[3:0] == 4'b0101;
assign	pid_SETUP = pid[3:0] == 4'b1101;
assign	pid_DATA0 = pid[3:0] == 4'b0011;
assign	pid_DATA1 = pid[3:0] == 4'b1011;
assign	pid_DATA2 = pid[3:0] == 4'b0111;
assign	pid_MDATA = pid[3:0] == 4'b1111;
assign	pid_ACK   = pid[3:0] == 4'b0010;
assign	pid_NACK  = pid[3:0] == 4'b1010;
assign	pid_STALL = pid[3:0] == 4'b1110;
assign	pid_NYET  = pid[3:0] == 4'b0110;
assign	pid_PRE   = pid[3:0] == 4'b1100;
assign	pid_ERR   = pid[3:0] == 4'b1100;
assign	pid_SPLIT = pid[3:0] == 4'b1000;
assign	pid_PING  = pid[3:0] == 4'b0100;
assign	pid_RES   = pid[3:0] == 4'b0000;
 
assign	pid_TOKEN = pid_OUT | pid_IN | pid_SOF | pid_SETUP | pid_PING;
assign	pid_DATA = pid_DATA0 | pid_DATA1 | pid_DATA2 | pid_MDATA;
 
// Token Decoding LOGIC
always @(posedge clk)
	if(token_le_1)	token0 <= rx_data;
 
always @(posedge clk)
	if(token_le_2)	token1 <= rx_data;
 
always @(posedge clk)
	token_valid_r1 <= token_le_2;
 
always @(posedge clk)
	token_valid_str1 <= token_valid_r1 | got_pid_ack;
 
assign token_valid = token_valid_str1;
 
// CRC 5 should perform the check in one cycle (flow through logic)
// 11 bits and crc5 input, 1 bit output
assign crc5_err = token_valid & (crc5_out2 != token_crc5);
 
usbf_crc5 u0(
	.crc_in(	5'h1f			),
	.din(	{	token_fadr[0],
			token_fadr[1],
			token_fadr[2],
			token_fadr[3],
			token_fadr[4],
			token_fadr[5],
			token_fadr[6],
			token_endp[0],
			token_endp[1],
			token_endp[2],
			token_endp[3]   }	),
	.crc_out(	crc5_out		) );
 
// Invert and reverse result bits
assign	crc5_out2 = ~{crc5_out[0], crc5_out[1], crc5_out[2], crc5_out[3],
			crc5_out[4]};
 
assign frame_no = { token1[2:0], token0};
assign token_fadr = token0[6:0];
assign token_endp = {token1[2:0], token0[7]};
assign token_crc5 = token1[7:3];
 
// Data receiving logic
// build a delay line and stop when we are about to get crc



always @(posedge clk)

	if(!rst)		rxv1 <= 1'b0;
	else
	if(data_valid_d)	rxv1 <= 1'b1;
	else
	if(data_done)		rxv1 <= 1'b0;
 



always @(posedge clk)

	if(!rst)		rxv2 <= 1'b0;
	else
	if(rxv1 && data_valid_d)rxv2 <= 1'b1;
	else
	if(data_done)		rxv2 <= 1'b0;
 
always @(posedge clk)
	data_valid0 <= rxv2 & data_valid_d;
 
always @(posedge clk)
   begin
	if(data_valid_d)	d0 <= rx_data;
	if(data_valid_d)	d1 <= d0;
	if(data_valid_d)	d2 <= d1;
   end
 
assign rx_data_st = d2;
assign rx_data_valid = data_valid0;
assign rx_data_done = data_done;
 
// crc16 accumulates rx_data as long as data_valid_d is asserted.
// when data_done is asserted, crc16 reports status, and resets itself
// next cycle.
always @(posedge clk)
	rx_active_r <= rx_active;
 
assign crc16_clr = rx_active & !rx_active_r;
 
always @(posedge clk)
	if(crc16_clr)		crc16_sum <= 16'hffff;
	else
	if(data_valid_d)	crc16_sum <= crc16_out;
 
usbf_crc16 u1(
	.crc_in(	crc16_sum		),
	.din(	{rx_data[0], rx_data[1], rx_data[2], rx_data[3],
		rx_data[4], rx_data[5], rx_data[6], rx_data[7]}	),
	.crc_out(	crc16_out		) );
 
// Verify against polynomial 
assign crc16_err = data_done & (crc16_sum != 16'h800d);
 
///////////////////////////////////////////////////////////////////
//
// Receive/Decode State machine
//
 



always @(posedge clk)

	if(!rst)	state <= IDLE;
	else		state <= next_state;
 
always @(state or rx_valid or rx_active or rx_err or pid_ACK or pid_TOKEN
	or pid_DATA)
   begin
	next_state = state;	// Default don't change current state
	pid_le_sm = 1'b0;
	token_le_1 = 1'b0;
	token_le_2 = 1'b0;
	data_valid_d = 1'b0;
	data_done = 1'b0;
	seq_err = 1'b0;
	got_pid_ack = 1'b0;
	case(state)		// synopsys full_case parallel_case
	   IDLE:
		   begin
			pid_le_sm = 1'b1;
			if(rx_valid && rx_active)	next_state = ACTIVE;
		   end
	   ACTIVE:
		   begin
			// Received a ACK from Host
			if(pid_ACK && !rx_err)
			   begin
				got_pid_ack = 1'b1;
				if(!rx_active)	next_state = IDLE;
			   end
			else
			// Receiving a TOKEN
			if(pid_TOKEN && rx_valid && rx_active && !rx_err)
			   begin
				token_le_1 = 1'b1;
				next_state = TOKEN;
			   end
			else
			// Receiving DATA
			if(pid_DATA && rx_valid && rx_active && !rx_err)
			   begin
				data_valid_d = 1'b1;
				next_state = DATA;
			   end
			else
			if(	!rx_active || rx_err ||
				(rx_valid && !(pid_TOKEN || pid_DATA)) )
			   begin
				seq_err = !rx_err;
				if(!rx_active)	next_state = IDLE;
			   end
		   end
	   TOKEN:
		   begin
			if(rx_valid && rx_active && !rx_err)
			   begin
				token_le_2 = 1'b1;
				next_state = IDLE;
			   end
			else
			if(!rx_active || rx_err)
			   begin
				seq_err = !rx_err;
				if(!rx_active)	next_state = IDLE;
			   end
		   end
	   DATA:
		   begin
			if(rx_valid && rx_active && !rx_err)	data_valid_d = 1'b1;
			if(!rx_active || rx_err)
			   begin
				data_done = 1'b1;
				if(!rx_active)	next_state = IDLE;
			   end
		   end
 
	endcase
   end
 
endmodule
/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Protocol Engine                                            ////
////  Performs automatic protocol functions                      ////
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
//  $Id: usbf_pe.v,v 1.8 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.8 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.7  2001/11/04 12:22:45  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
//               Revision 1.6  2001/11/03 03:26:22  rudi
//
//               - Fixed several interrupt and error condition reporting bugs
//
//               Revision 1.5  2001/09/24 01:15:28  rudi
//
//               Changed reset to be active high async.
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
//               Revision 1.2  2001/03/31 13:00:51  rudi
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
//               Revision 0.1.0.1  2001/02/28 08:11:07  rudi
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

 
module usbf_pe(	clk, rst,
 
		// UTMI Interfaces
		tx_valid, rx_active,
 
		// PID Information
		pid_OUT, pid_IN, pid_SOF, pid_SETUP,
		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA,
		pid_ACK, pid_NACK, pid_STALL, pid_NYET,
		pid_PRE, pid_ERR, pid_SPLIT, pid_PING,
 
		// Speed Mode
		mode_hs,
 
		// Token Information
		token_valid, crc5_err,
 
		// Receive Data Output
		rx_data_valid, rx_data_done, crc16_err,
 
		// Packet Assembler Interface
		send_token, token_pid_sel,
		data_pid_sel, send_zero_length,
 
		// IDMA Interface
		rx_dma_en, tx_dma_en,
		abort, idma_done,
		adr, size, buf_size,
		sizu_c, dma_en,
 
		// Register File Interface
		fsel, idin,
		dma_in_buf_sz1, dma_out_buf_avail,
		ep_sel, match, nse_err,
		buf0_rl, buf0_set, buf1_set,
		uc_bsel_set, uc_dpd_set,
 
		int_buf1_set, int_buf0_set, int_upid_set,
		int_crc16_set, int_to_set, int_seqerr_set,
		out_to_small,
 
		csr, buf0, buf1
 
		);
 
parameter	SSRAM_HADR = 14;
 
input		clk, rst;
input		tx_valid, rx_active;
 
// Packet Disassembler Interface
		// Decoded PIDs (used when token_valid is asserted)
input		pid_OUT, pid_IN, pid_SOF, pid_SETUP;
input		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA;
input		pid_ACK, pid_NACK, pid_STALL, pid_NYET;
input		pid_PRE, pid_ERR, pid_SPLIT, pid_PING;
 
input		mode_hs;
input		token_valid;		// Token is valid
input		crc5_err;		// Token crc5 error
 
input		rx_data_valid;		// Data on rx_data_st is valid
input		rx_data_done;		// Indicates end of a transfer
input		crc16_err;		// Data packet CRC 16 error
 
// Packet Assembler Interface
output		send_token;
output	[1:0]	token_pid_sel;
output	[1:0]	data_pid_sel;
output		send_zero_length;
 
// IDMA Interface
output		rx_dma_en;	// Allows the data to be stored
output		tx_dma_en;	// Allows for data to be retrieved
output		abort;		// Abort Transfer (time_out, crc_err or rx_error)
input		idma_done;	// DMA is done indicator
output	[SSRAM_HADR + 2:0]	adr;		// Byte Address
output	[13:0]	size;		// Size in bytes
output	[13:0]	buf_size;	// Actual buffer size
input	[10:0]	sizu_c;		// Up and Down counting size registers, used to update
output		dma_en;		// USB external DMA mode enabled
 
// Register File interface
input		fsel;		// This function is selected
output	[31:0]	idin;		// Data Output
input	[3:0]	ep_sel;		// Endpoint Number Input
input		match;		// Endpoint Matched
output		nse_err;	// no such endpoint error
input		dma_in_buf_sz1, dma_out_buf_avail;
 
output		buf0_rl;	// Reload Buf 0 with original values
output		buf0_set;	// Write to buf 0
output		buf1_set;	// Write to buf 1
output		uc_bsel_set;	// Write to the uc_bsel field
output		uc_dpd_set;	// Write to the uc_dpd field
output		int_buf1_set;	// Set buf1 full/empty interrupt
output		int_buf0_set;	// Set buf0 full/empty interrupt
output		int_upid_set;	// Set unsupported PID interrupt
output		int_crc16_set;	// Set CRC16 error interrupt
output		int_to_set;	// Set time out interrupt
output		int_seqerr_set;	// Set PID sequence error interrupt
output		out_to_small;	// OUT packet was to small for DMA operation
 
input	[31:0]	csr;		// Internal CSR Output
input	[31:0]	buf0;		// Internal Buf 0 Output
input	[31:0]	buf1;		// Internal Buf 1 Output
 
 
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
// tx token decoding
parameter	ACK   = 0,
		NACK  = 1,
		STALL = 2,
		NYET  = 3;
 
// State decoding
parameter	[9:0]	// synopsys enum state
		IDLE	= 10'b000000_0001,
		TOKEN	= 10'b000000_0010,
		IN	= 10'b000000_0100,
		IN2	= 10'b000000_1000,
		OUT	= 10'b000001_0000,
		OUT2A	= 10'b000010_0000,
		OUT2B	= 10'b000100_0000,
		UPDATEW	= 10'b001000_0000,
		UPDATE	= 10'b010000_0000,
		UPDATE2	= 10'b100000_0000;
 
reg	[1:0]	token_pid_sel;
reg	[1:0]	token_pid_sel_d;
reg		send_token;
reg		send_token_d;
reg		rx_dma_en, tx_dma_en;
reg		int_seqerr_set_d;
reg		int_seqerr_set;
reg		int_upid_set;
 
reg		match_r;
 
// Endpoint Decoding
wire		IN_ep, OUT_ep, CTRL_ep;		// Endpoint Types
wire		txfr_iso, txfr_bulk;		// Transfer Types
wire		ep_disabled, ep_stall;		// Endpoint forced conditions
 
wire		lrg_ok, sml_ok;		// Packet size acceptance
wire	[1:0]	tr_fr;			// Number of transfers per micro-frame
wire	[10:0]	max_pl_sz;		// Max payload size
 
wire	[1:0]	uc_dpd, uc_bsel;
 
// Buffer checks
wire		buf_sel;
reg		buf0_na, buf1_na;
wire	[SSRAM_HADR + 2:0]	buf0_adr, buf1_adr;
wire	[13:0]	buf0_sz, buf1_sz;
reg	[9:0]	/* synopsys enum state */ state, next_state;
// synopsys state_vector state
 
// PID next and current decoders
reg	[1:0]	next_dpid;
reg	[1:0]	this_dpid;
reg		pid_seq_err;
wire	[1:0]	tr_fr_d;
 
wire	[13:0]	size_next;
wire		buf_smaller;
 
reg	[SSRAM_HADR + 2:0]	adr;
reg	[13:0]	new_size;
reg	[13:0]	new_sizeb;
reg		buffer_full;
reg		buffer_empty;
wire	[SSRAM_HADR + 2:0]	new_adr;
reg		buffer_done;
 
reg		no_bufs0, no_bufs1;
wire		no_bufs;
 
// After sending Data in response to an IN token from host, the
// host must reply with an ack. The host has XXXnS to reply.
// "rx_ack_to" indicates when this time has expired.
// rx_ack_to_clr, clears the timer
reg		rx_ack_to_clr;
reg		rx_ack_to_clr_d;
reg		rx_ack_to;
reg	[7:0]	rx_ack_to_cnt;
 
// After sending a OUT token the host must send a data packet.
// The host has XX nS to send the packet. "tx_data_to" indicates
// when this time has expired.
// tx_data_to_clr, clears the timer
wire		tx_data_to_clr;
reg		tx_data_to;
reg	[7:0]	tx_data_to_cnt;
 
wire	[7:0]	rx_ack_to_val, tx_data_to_val;
 
reg		int_set_en;
 
wire	[1:0]	next_bsel;
reg		buf_set_d;
reg		uc_stat_set_d;
reg	[31:0]	idin;
reg		buf0_set, buf1_set;
reg		uc_bsel_set;
reg		uc_dpd_set;
reg		buf0_rl_d;
reg		buf0_rl;
wire		no_buf0_dma;
reg		buf0_st_max;
reg		buf1_st_max;
 
reg	[SSRAM_HADR + 2:0]	adr_r;
reg	[13:0]	size_next_r;
 
reg		in_token;
reg		out_token;
reg		setup_token;
 
wire		in_op, out_op;	// Indicate a IN or OUT operation
reg		to_small;	// Indicates a "to small packer" error
reg		to_large;	// Indicates a "to large packer" error
 
reg		buffer_overflow;
reg	[1:0]	allow_pid;
 
reg		nse_err;
reg		out_to_small, out_to_small_r;
reg		abort;
 
reg		buf0_not_aloc, buf1_not_aloc;
 
reg		send_zero_length;
 
///////////////////////////////////////////////////////////////////
//
// Misc Logic
//
 
// Endpoint/CSR Decoding
assign IN_ep   = csr[27:26]==2'b01;
assign OUT_ep  = csr[27:26]==2'b10;
assign CTRL_ep = csr[27:26]==2'b00;
 
assign txfr_iso  = csr[25:24]==2'b01;
assign txfr_bulk = csr[25:24]==2'b10;
 
assign ep_disabled = csr[23:22]==2'b01;
assign ep_stall    = csr[23:22]==2'b10;
 
assign lrg_ok = csr[17];
assign sml_ok = csr[16];
assign dma_en = csr[15] & !CTRL_ep;
 
assign tr_fr = csr[12:11];
assign max_pl_sz = csr[10:0];
 
assign uc_dpd = csr[29:28];
assign uc_bsel = csr[31:30];
 
// Buffer decoding and allocation checks
assign buf0_adr = buf0[SSRAM_HADR + 2:0];
assign buf1_adr = buf1[SSRAM_HADR + 2:0];
assign buf0_sz  = buf0[30:17];
assign buf1_sz  = buf1[30:17];
 
// Buffers Not Available
always @(posedge clk)
	buf0_na <= buf0[31] | ( &buf0_adr );
 
always @(posedge clk)
	buf1_na <= buf1[31] | ( &buf1_adr );
 
// Buffer Not Allocated
always @(posedge clk)
	buf0_not_aloc <= &buf0_adr;
 
always @(posedge clk)
	buf1_not_aloc <= &buf1_adr;
 
always @(posedge clk)
	match_r <= match;
 
// No Such Endpoint Indicator
always @(posedge clk)
	nse_err <= token_valid & (pid_OUT | pid_IN | pid_SETUP) & !match;
 
always @(posedge clk)
	send_token <= send_token_d;
 
always @(posedge clk)
	token_pid_sel <= token_pid_sel_d;
 
///////////////////////////////////////////////////////////////////
//
// Data Pid Sequencer
//
 
assign tr_fr_d = mode_hs ? tr_fr : 2'h0;
 
always @(posedge clk)	// tr/mf:ep/type:tr/type:last dpd
	casex({tr_fr_d,csr[27:26],csr[25:24],uc_dpd})	// synopsys full_case parallel_case
	   8'b0?_01_01_??: next_dpid <= 2'b00;	// ISO txfr. IN, 1 tr/mf
 
	   8'b10_01_01_?0: next_dpid <= 2'b01;	// ISO txfr. IN, 2 tr/mf
	   8'b10_01_01_?1: next_dpid <= 2'b00;	// ISO txfr. IN, 2 tr/mf
 
	   8'b11_01_01_00: next_dpid <= 2'b01;	// ISO txfr. IN, 3 tr/mf
	   8'b11_01_01_01: next_dpid <= 2'b10;	// ISO txfr. IN, 3 tr/mf
	   8'b11_01_01_10: next_dpid <= 2'b00;	// ISO txfr. IN, 3 tr/mf
 
	   8'b0?_10_01_??: next_dpid <= 2'b00;	// ISO txfr. OUT, 1 tr/mf
 
	   8'b10_10_01_??: 				// ISO txfr. OUT, 2 tr/mf
			   begin	// Resynchronize in case of PID error
				case({pid_MDATA, pid_DATA1})	// synopsys full_case parallel_case
				  2'b10: next_dpid <= 2'b01;
				  2'b01: next_dpid <= 2'b00;
				endcase
			   end
 
	   8'b11_10_01_00: 				// ISO txfr. OUT, 3 tr/mf
			   begin	// Resynchronize in case of PID error
				case({pid_MDATA, pid_DATA2})	// synopsys full_case parallel_case
				  2'b10: next_dpid <= 2'b01;
				  2'b01: next_dpid <= 2'b00;
				endcase
			   end
	   8'b11_10_01_01: 				// ISO txfr. OUT, 3 tr/mf
			   begin	// Resynchronize in case of PID error
				case({pid_MDATA, pid_DATA2})	// synopsys full_case parallel_case
				  2'b10: next_dpid <= 2'b10;
				  2'b01: next_dpid <= 2'b00;
				endcase
			   end
	   8'b11_10_01_10: 				// ISO txfr. OUT, 3 tr/mf
			   begin	// Resynchronize in case of PID error
				case({pid_MDATA, pid_DATA2})	// synopsys full_case parallel_case
				  2'b10: next_dpid <= 2'b01;
				  2'b01: next_dpid <= 2'b00;
				endcase
			   end
 
	   8'b??_01_00_?0,				// IN/OUT endpoint only
	   8'b??_10_00_?0: next_dpid <= 2'b01;	// INT transfers
 
	   8'b??_01_00_?1,				// IN/OUT endpoint only
	   8'b??_10_00_?1: next_dpid <= 2'b00;	// INT transfers
 
	   8'b??_01_10_?0,				// IN/OUT endpoint only
	   8'b??_10_10_?0: next_dpid <= 2'b01;	// BULK transfers
 
	   8'b??_01_10_?1,				// IN/OUT endpoint only
	   8'b??_10_10_?1: next_dpid <= 2'b00;	// BULK transfers
 
	   8'b??_00_??_??:				// CTRL Endpoint
		casex({setup_token, in_op, out_op, uc_dpd})	// synopsys full_case parallel_case
		   5'b1_??_??: next_dpid <= 2'b11;	// SETUP operation
		   5'b0_10_0?: next_dpid <= 2'b11;	// IN operation
		   5'b0_10_1?: next_dpid <= 2'b01;	// IN operation
		   5'b0_01_?0: next_dpid <= 2'b11;	// OUT operation
		   5'b0_01_?1: next_dpid <= 2'b10;	// OUT operation
		endcase
 
	endcase
 
// Current PID decoder
 
// Allow any PID for ISO. transfers when mode full speed or tr_fr is zero
always @(pid_DATA0 or pid_DATA1 or pid_DATA2 or pid_MDATA)
	case({pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA} ) // synopsys full_case parallel_case
	   4'b1000: allow_pid = 2'b00;
	   4'b0100: allow_pid = 2'b01;
	   4'b0010: allow_pid = 2'b10;
	   4'b0001: allow_pid = 2'b11;
	endcase
 
always @(posedge clk)	// tf/mf:ep/type:tr/type:last dpd
	casex({tr_fr_d,csr[27:26],csr[25:24],uc_dpd})	// synopsys full_case parallel_case
	   8'b0?_01_01_??: this_dpid <= 2'b00;	// ISO txfr. IN, 1 tr/mf
 
	   8'b10_01_01_?0: this_dpid <= 2'b01;	// ISO txfr. IN, 2 tr/mf
	   8'b10_01_01_?1: this_dpid <= 2'b00;	// ISO txfr. IN, 2 tr/mf
 
	   8'b11_01_01_00: this_dpid <= 2'b10;	// ISO txfr. IN, 3 tr/mf
	   8'b11_01_01_01: this_dpid <= 2'b01;	// ISO txfr. IN, 3 tr/mf
	   8'b11_01_01_10: this_dpid <= 2'b00;	// ISO txfr. IN, 3 tr/mf
 
	   8'b00_10_01_??: this_dpid <= allow_pid;	// ISO txfr. OUT, 0 tr/mf
	   8'b01_10_01_??: this_dpid <= 2'b00;	// ISO txfr. OUT, 1 tr/mf
 
	   8'b10_10_01_?0: this_dpid <= 2'b11;	// ISO txfr. OUT, 2 tr/mf
	   8'b10_10_01_?1: this_dpid <= 2'b01;	// ISO txfr. OUT, 2 tr/mf
 
	   8'b11_10_01_00: this_dpid <= 2'b11;	// ISO txfr. OUT, 3 tr/mf
	   8'b11_10_01_01: this_dpid <= 2'b11;	// ISO txfr. OUT, 3 tr/mf
	   8'b11_10_01_10: this_dpid <= 2'b10;	// ISO txfr. OUT, 3 tr/mf
 
	   8'b??_01_00_?0,				// IN/OUT endpoint only
	   8'b??_10_00_?0: this_dpid <= 2'b00;	// INT transfers
	   8'b??_01_00_?1,				// IN/OUT endpoint only
	   8'b??_10_00_?1: this_dpid <= 2'b01;	// INT transfers
 
	   8'b??_01_10_?0,				// IN/OUT endpoint only
	   8'b??_10_10_?0: this_dpid <= 2'b00;	// BULK transfers
	   8'b??_01_10_?1,				// IN/OUT endpoint only
	   8'b??_10_10_?1: this_dpid <= 2'b01;	// BULK transfers
 
	   8'b??_00_??_??:				// CTRL Endpoint
		casex({setup_token,in_op, out_op, uc_dpd})	// synopsys full_case parallel_case
		   5'b1_??_??: this_dpid <= 2'b00;	// SETUP operation
		   5'b0_10_0?: this_dpid <= 2'b00;	// IN operation
		   5'b0_10_1?: this_dpid <= 2'b01;	// IN operation
		   5'b0_01_?0: this_dpid <= 2'b00;	// OUT operation
		   5'b0_01_?1: this_dpid <= 2'b01;	// OUT operation
		endcase
	endcase
 
// Assign PID for outgoing packets
assign data_pid_sel = this_dpid;
 
// Verify PID for incoming data packets
always @(posedge clk)
	pid_seq_err <= !(	(this_dpid==2'b00 & pid_DATA0) |
				(this_dpid==2'b01 & pid_DATA1) |
				(this_dpid==2'b10 & pid_DATA2) |
				(this_dpid==2'b11 & pid_MDATA)	);
 
///////////////////////////////////////////////////////////////////
//
// IDMA Setup & src/dst buffer select
//
 
// For Control endpoints things are different:
// buffer0 is used for OUT (incoming) data packets
// buffer1 is used for IN (outgoing) data packets
 
// Keep track of last token for control endpoints



always @(posedge clk)

	if(!rst)			in_token <= 1'b0;
	else
	if(pid_IN)			in_token <= 1'b1;
	else
	if(pid_OUT || pid_SETUP)	in_token <= 1'b0;
 



always @(posedge clk)

	if(!rst)			out_token <= 1'b0;
	else
	if(pid_OUT || pid_SETUP)	out_token <= 1'b1;
	else
	if(pid_IN)			out_token <= 1'b0;
 



always @(posedge clk)

	if(!rst)			setup_token <= 1'b0;
	else
	if(pid_SETUP)			setup_token <= 1'b1;
	else
	if(pid_OUT || pid_IN)		setup_token <= 1'b0;
 
// Indicates if we are performing an IN operation
assign	in_op = IN_ep | (CTRL_ep & in_token);
 
// Indicates if we are performing an OUT operation
assign	out_op = OUT_ep | (CTRL_ep & out_token);
 
// Select buffer: buf_sel==0 buffer0; buf_sel==1 buffer1
assign buf_sel =  dma_en ? 1'b0 : CTRL_ep ? in_token : ((uc_bsel[0] | buf0_na) & !buf1_na);
 
// Select Address for IDMA
always @(posedge clk)
	adr <= buf_sel ? buf1_adr : buf0_adr;
 
// Size from Buffer
assign buf_size = buf_sel ? buf1_sz  : buf0_sz;
 
// Determine which is smaller: buffer or max_pl_sz
assign buf_smaller = buf_size < {3'h0, max_pl_sz};
 
// Determine actual size for this transfer (for IDMA) IN endpoint only
// (OUT endpoint uses sizeu_c from IDMA)
assign size_next = buf_smaller ? buf_size : max_pl_sz;
assign size = size_next;	// "size" is an output for IDMA
 
// Buffer Full (only for OUT endpoints)
// Indicates that there is not enough space in the buffer for one
// more max_pl_sz packet
always @(posedge clk)
	buffer_full <= new_size < {3'h0, max_pl_sz};
 
// Buffer Empty (only for IN endpoints)
// Indicates that there are zero bytes left in the buffer
always @(posedge clk)
	buffer_empty <= (new_size == 14'h0);
 
// Joint buffer full/empty flag This is the "USED" flag
always @(posedge clk)
	buffer_done <= in_op ? buffer_empty : buffer_full;
 
// No More buffer space at all (For high speed out - issue NYET)
assign no_buf0_dma = dma_en &
		((IN_ep & !dma_in_buf_sz1) | (OUT_ep & !dma_out_buf_avail));
 
always @(posedge clk)
	buf0_st_max <= (buf0_sz < {3'h0, max_pl_sz});
 
always @(posedge clk)
	buf1_st_max <= (buf1_sz < {3'h0, max_pl_sz});
 
always @(posedge clk)
	no_bufs0 <= buf0_na | no_buf0_dma |
			(buf_sel ? buf0_st_max : (buffer_full & !dma_en));
 
always @(posedge clk)
	no_bufs1 <= buf1_na | (buf_sel ? buffer_full : buf1_st_max);
 
assign no_bufs = no_bufs0 & no_bufs1;
 
// New Size (to be written to register file)
always @(posedge clk)
	new_sizeb <= (out_op && dma_en) ? max_pl_sz : (in_op ? size_next : sizu_c);
 
always @(posedge clk)
	new_size <= buf_size - new_sizeb;
 
 
// New Buffer Address (to be written to register file)
always @(posedge clk)
	adr_r <= adr;
 
always @(posedge clk)
	size_next_r <= size_next;
 
assign new_adr = adr_r[SSRAM_HADR + 2:0] +
		((out_op && dma_en) ? {{SSRAM_HADR + 2-10{1'b0}}, max_pl_sz[10:0]} :
		(in_op ? {{SSRAM_HADR + 2-13{1'b0}}, size_next_r[13:0] } :
		{ {SSRAM_HADR + 2-10{1'b0}}, sizu_c[10:0]}));
 
// Buffer Overflow
always @(posedge clk)
	buffer_overflow <= ( {3'h0, sizu_c} > buf_size) & rx_data_valid;
 
 
// OUT packet smaller than MAX_PL_SZ in DMA operation
always @(posedge clk)
	out_to_small_r <= uc_stat_set_d & out_op & dma_en & (sizu_c != max_pl_sz);
 
always @(posedge clk)
	out_to_small <= out_to_small_r;
 
///////////////////////////////////////////////////////////////////
//
// Determine if packet is to small or to large
// This is used to NACK and ignore packet for OUT endpoints
//
 
always @(posedge clk)
	to_small <= !sml_ok & (sizu_c < max_pl_sz);
 
always @(posedge clk)
	to_large <= !lrg_ok & (sizu_c > max_pl_sz);
 
///////////////////////////////////////////////////////////////////
//
// Register File Update Logic
//
 
assign next_bsel = dma_en ? 2'h0 : buffer_done ? uc_bsel + 2'h1 : uc_bsel;	// FIX_ME
 
always @(posedge clk)
	idin[31:17] <= out_to_small_r ? {4'h0,sizu_c} : {buffer_done,new_size};
 
always @(posedge clk)
	idin[SSRAM_HADR + 2:4] <= out_to_small_r ?	buf0_adr[SSRAM_HADR + 2:4] :
							new_adr[SSRAM_HADR + 2:4];
 
always @(posedge clk)
	if(buf_set_d)			idin[3:0] <= new_adr[3:0];
	else
	if(out_to_small_r)		idin[3:0] <= buf0_adr[3:0];
	else				idin[3:0] <= {next_dpid, next_bsel};
 
always @(posedge clk)
	buf0_set <= !buf_sel & buf_set_d;
 
always @(posedge clk)
	buf1_set <= buf_sel & buf_set_d;
 
always @(posedge clk)
	uc_bsel_set <= uc_stat_set_d;
 
always @(posedge clk)
	uc_dpd_set <= uc_stat_set_d;
 
always @(posedge clk)
	buf0_rl <= buf0_rl_d;
 
// Abort signal
always @(posedge clk)
	abort <= buffer_overflow | (match & (state != IDLE) ) | (match_r & to_large);
 
///////////////////////////////////////////////////////////////////
//
// TIME OUT TIMERS
//
 
// After sending Data in response to an IN token from host, the
// host must reply with an ack. The host has 622nS in Full Speed
// mode and 400nS in High Speed mode to reply.
// "rx_ack_to" indicates when this time has expired.
// rx_ack_to_clr, clears the timer
 
always @(posedge clk)
	rx_ack_to_clr <= tx_valid | rx_ack_to_clr_d;
 
always @(posedge clk)
	if(rx_ack_to_clr)	rx_ack_to_cnt <= 8'h0;
	else			rx_ack_to_cnt <= rx_ack_to_cnt + 8'h1;
 
always @(posedge clk)
	rx_ack_to <= (rx_ack_to_cnt == rx_ack_to_val);
 
assign rx_ack_to_val = mode_hs ? 8'd22 : 8'd36;
 
// After sending a OUT token the host must send a data packet.
// The host has 622nS in Full Speed mode and 400nS in High Speed
// mode to send the data packet.
// "tx_data_to" indicates when this time has expired.
// "tx_data_to_clr" clears the timer
 
assign	tx_data_to_clr = rx_active;
 
always @(posedge clk)
	if(tx_data_to_clr)	tx_data_to_cnt <= 8'h0;
	else			tx_data_to_cnt <= tx_data_to_cnt + 8'h1;
 
always @(posedge clk)
	tx_data_to <= (tx_data_to_cnt == tx_data_to_val);
 
assign tx_data_to_val = mode_hs ? 8'd22 : 8'd36;
 
///////////////////////////////////////////////////////////////////
//
// Interrupts
//
reg	pid_OUT_r, pid_IN_r, pid_PING_r, pid_SETUP_r;
 
assign int_buf1_set = !buf_sel & buffer_done & int_set_en & !buf1_not_aloc;
assign int_buf0_set =  buf_sel & buffer_done & int_set_en & !buf0_not_aloc;
 
always @(posedge clk)
	pid_OUT_r <= pid_OUT;
 
always @(posedge clk)
	pid_IN_r <= pid_IN;
 
always @(posedge clk)
	pid_PING_r <= pid_PING;
 
always @(posedge clk)
	pid_SETUP_r <= pid_SETUP;
 
always @(posedge clk)
	int_upid_set <= match_r & !pid_SOF & (
				( OUT_ep & !(pid_OUT_r | pid_PING_r))		|
				(  IN_ep &  !pid_IN_r)				|
				(CTRL_ep & !(pid_IN_r | pid_OUT_r | pid_PING_r | pid_SETUP_r))
					);
 
assign int_to_set  = ((state == IN2) & rx_ack_to) | ((state == OUT) & tx_data_to);
 
assign int_crc16_set = rx_data_done & crc16_err;
 
always @(posedge clk)
	int_seqerr_set <= int_seqerr_set_d;
 
///////////////////////////////////////////////////////////////////
//
// Main Protocol State Machine
//
 



always @(posedge clk)

	if(!rst)	state <= IDLE;
	else
	if(match)	state <= IDLE;
	else		state <= next_state;
 
always @(state or ep_stall or buf0_na or buf1_na or
	pid_seq_err or idma_done or token_valid or pid_ACK or rx_data_done or
	tx_data_to or crc16_err or ep_disabled or no_bufs or mode_hs
	or dma_en or rx_ack_to or pid_PING or txfr_iso or to_small or to_large or
	CTRL_ep or pid_IN or pid_OUT or IN_ep or OUT_ep or pid_SETUP or pid_SOF
	or match_r or abort or buffer_done or no_buf0_dma or max_pl_sz)
   begin
	next_state = state;
	token_pid_sel_d = ACK;
	send_token_d = 1'b0;
	rx_dma_en = 1'b0;
	tx_dma_en = 1'b0;
	buf_set_d = 1'b0;
	uc_stat_set_d = 1'b0;
	buf0_rl_d = 1'b0;
	int_set_en = 1'b0;
	rx_ack_to_clr_d = 1'b1;
	int_seqerr_set_d = 1'b0;
	send_zero_length = 1'b0;
 
	case(state)	// synopsys full_case parallel_case
	   IDLE:
		   begin
// synopsys translate_off




		if(rst && match_r && !ep_disabled && !pid_SOF)
		begin
		if(match_r === 1'bx)	$display("ERROR: IDLE: match_r is unknown. (%t)", $time);
		if(ep_disabled === 1'bx)$display("ERROR: IDLE: ep_disabled is unknown. (%t)", $time);
		if(pid_SOF === 1'bx)	$display("ERROR: IDLE: pid_SOF is unknown. (%t)", $time);
		if(ep_stall === 1'bx)	$display("ERROR: IDLE: ep_stall is unknown. (%t)", $time);
		if(buf0_na === 1'bx)	$display("ERROR: IDLE: buf0_na is unknown. (%t)", $time);
		if(buf1_na === 1'bx)	$display("ERROR: IDLE: buf1_na is unknown. (%t)", $time);
		if(no_buf0_dma === 1'bx)$display("ERROR: IDLE: no_buf0_dma is unknown. (%t)", $time);
		if(CTRL_ep === 1'bx)	$display("ERROR: IDLE: CTRL_ep is unknown. (%t)", $time);
		if(pid_IN === 1'bx)	$display("ERROR: IDLE: pid_IN is unknown. (%t)", $time);
		if(pid_OUT === 1'bx)	$display("ERROR: IDLE: pid_OUT is unknown. (%t)", $time);
		if(pid_SETUP === 1'bx)	$display("ERROR: IDLE: pid_SETUP is unknown. (%t)", $time);
		if(pid_PING === 1'bx)	$display("ERROR: IDLE: pid_PING is unknown. (%t)", $time);
		if(mode_hs === 1'bx)	$display("ERROR: IDLE: mode_hs is unknown. (%t)", $time);
		if(IN_ep === 1'bx)	$display("ERROR: IDLE: IN_ep is unknown. (%t)", $time);
		if(OUT_ep === 1'bx)	$display("ERROR: IDLE: OUT_ep is unknown. (%t)", $time);
		end

// synopsys translate_on
 
			if(match_r && !ep_disabled && !pid_SOF)
			   begin
				if(ep_stall)		// Halt Forced send STALL
				   begin
					token_pid_sel_d = STALL;
					send_token_d = 1'b1;
					next_state = TOKEN;
				   end
				else
				if(	(buf0_na && buf1_na) || no_buf0_dma ||
					(CTRL_ep && pid_IN   && buf1_na) ||
					(CTRL_ep && pid_OUT  && buf0_na) 
					)
				   begin		// No buffers send NAK
					token_pid_sel_d = NACK;
					send_token_d = 1'b1;
					next_state = TOKEN;
				   end
				else
				if(pid_PING && mode_hs)
				   begin
					token_pid_sel_d = ACK;
					send_token_d = 1'b1;
					next_state = TOKEN;
				   end
				else
				if(IN_ep || (CTRL_ep && pid_IN))
				   begin
					if(max_pl_sz == 11'h0)	send_zero_length = 1'b1;
					tx_dma_en = 1'b1;
					next_state = IN;
				   end
				else
				if(OUT_ep || (CTRL_ep && (pid_OUT || pid_SETUP)))
				   begin
					rx_dma_en = 1'b1;
					next_state = OUT;
				   end
			   end
		   end
 
	   TOKEN:
		   begin
// synopsys translate_off



// synopsys translate_on
			next_state = IDLE;
		   end
 
	   IN:
		   begin
// synopsys translate_off




		if(idma_done === 1'bx)	$display("ERROR: IN: idma_done is unknown. (%t)", $time);
		if(txfr_iso === 1'bx)	$display("ERROR: IN: txfr_iso is unknown. (%t)", $time);

// synopsys translate_on
			rx_ack_to_clr_d = 1'b0;
			if(idma_done)
			   begin
				if(txfr_iso)	next_state = UPDATE;
				else		next_state = IN2;
			   end
 
		   end
	   IN2:
		   begin
// synopsys translate_off




		if(rx_ack_to === 1'bx)	$display("ERROR: IN2: rx_ack_to is unknown. (%t)", $time);
		if(token_valid === 1'bx)$display("ERROR: IN2: token_valid is unknown. (%t)", $time);
		if(pid_ACK === 1'bx)	$display("ERROR: IN2: pid_ACK is unknown. (%t)", $time);

// synopsys translate_on
			rx_ack_to_clr_d = 1'b0;
			// Wait for ACK from HOST or Timeout
			if(rx_ack_to)	next_state = IDLE;
			else
			if(token_valid && pid_ACK)
			   begin
				next_state = UPDATE;
			   end
		   end
 
	   OUT:
		   begin
// synopsys translate_off




		if(tx_data_to === 1'bx)	$display("ERROR: OUT: tx_data_to is unknown. (%t)", $time);
		if(crc16_err === 1'bx)	$display("ERROR: OUT: crc16_err is unknown. (%t)", $time);
		if(abort === 1'bx)	$display("ERROR: OUT: abort is unknown. (%t)", $time);
		if(rx_data_done === 1'bx)$display("ERROR: OUT: rx_data_done is unknown. (%t)", $time);
		if(txfr_iso === 1'bx)	$display("ERROR: OUT: txfr_iso is unknown. (%t)", $time);
		if(pid_seq_err === 1'bx)$display("ERROR: OUT: rx_data_done is unknown. (%t)", $time);

// synopsys translate_on
			if(tx_data_to || crc16_err || abort )
				next_state = IDLE;
			else
			if(rx_data_done)
			   begin		// Send Ack
				if(txfr_iso)
				   begin
					if(pid_seq_err)		int_seqerr_set_d = 1'b1;
					next_state = UPDATEW;
				   end
				else		next_state = OUT2A;
			   end
		   end
 
	   OUT2A:
		   begin	// This is a delay State to NACK to small or to
				// large packets. this state could be skipped
// synopsys translate_off




		if(abort === 1'bx)	$display("ERROR: OUT2A: abort is unknown. (%t)", $time);

// synopsys translate_on
			if(abort)	next_state = IDLE;
			else		next_state = OUT2B;
		   end
	   OUT2B:
		   begin	// Send ACK/NACK/NYET
// synopsys translate_off




		if(abort === 1'bx)	$display("ERROR: OUT2B: abort is unknown. (%t)", $time);
		if(to_small === 1'bx)	$display("ERROR: OUT2B: to_small is unknown. (%t)", $time);
		if(to_large === 1'bx)	$display("ERROR: OUT2B: to_large is unknown. (%t)", $time);
		if(pid_seq_err === 1'bx)$display("ERROR: OUT2B: rx_data_done is unknown. (%t)", $time);
		if(mode_hs === 1'bx)	$display("ERROR: OUT2B: mode_hs is unknown. (%t)", $time);
		if(no_bufs === 1'bx)	$display("ERROR: OUT2B: no_bufs is unknown. (%t)", $time);

// synopsys translate_on
			if(abort)	next_state = IDLE;
			else
			if(to_small || to_large)
			   begin
				token_pid_sel_d = NACK;
				next_state = IDLE;
			   end
			else
			if(pid_seq_err)	
			   begin
				token_pid_sel_d = ACK;
				send_token_d = 1'b1;
				next_state = IDLE;
			   end
			else
			   begin
				if(mode_hs && no_bufs)	token_pid_sel_d = NYET;
				else			token_pid_sel_d = ACK;
				send_token_d = 1'b1;
				next_state = UPDATE;
			   end
		   end
 
	   UPDATEW:
		   begin
// synopsys translate_off



// synopsys translate_on
			next_state = UPDATE;
		   end
	   UPDATE:
		   begin
// synopsys translate_off




		if(buffer_done === 1'bx)	$display("ERROR: UPDATE: buffer_done is unknown. (%t)", $time);
		if(dma_en === 1'bx)	$display("ERROR: UPDATE: dma_en is unknown. (%t)", $time);

// synopsys translate_on
			// Interrupts
			int_set_en = 1'b1;
			// Buffer (used, size, adr) set or reload
			if(buffer_done && dma_en)
			   begin
				buf0_rl_d = 1'b1;
			   end
			else
			   begin
				buf_set_d = 1'b1;
			   end
			next_state = UPDATE2;
		   end
	   UPDATE2:	// Update Register File & state
		   begin
// synopsys translate_off



// synopsys translate_on
			// pid sequence & buffer usage
			uc_stat_set_d = 1'b1;
			next_state = IDLE;
		   end
	endcase
   end
 
endmodule
/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Internal DMA Engine                                        ////
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
//  $Id: usbf_idma.v,v 1.8 2003-10-17 02:36:57 rudi Exp $
//
//  $Date: 2003-10-17 02:36:57 $
//  $Revision: 1.8 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//               Revision 1.7  2001/11/04 12:22:45  rudi
//
//               - Fixed previous fix (brocke something else ...)
//               - Majore Synthesis cleanup
//
//               Revision 1.6  2001/11/03 03:26:22  rudi
//
//               - Fixed several interrupt and error condition reporting bugs
//
//               Revision 1.5  2001/09/24 01:15:28  rudi
//
//               Changed reset to be active high async.
//
//               Revision 1.4  2001/09/23 08:39:33  rudi
//
//               Renamed DEBUG and VERBOSE_DEBUG to USBF_DEBUG and USBF_VERBOSE_DEBUG ...
//
//               Revision 1.3  2001/09/19 14:38:57  rudi
//
//               Fixed TxValid handling bug.
//
//               Revision 1.2  2001/09/13 13:14:02  rudi
//
//               Fixed a problem that would sometimes prevent the core to come out of
//               reset and immediately be operational ...
//
//               Revision 1.1  2001/08/03 05:30:09  rudi
//
//
//               1) Reorganized directory structure
//
//               Revision 1.2  2001/03/31 13:00:51  rudi
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
//               Revision 0.1.0.1  2001/02/28 08:10:50  rudi
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

 
module usbf_idma(	clk, rst,
 
		// Packet Disassembler/Assembler interface
		rx_data_st, rx_data_valid, rx_data_done, 
		send_data, tx_data_st, rd_next,
 
		// Protocol Engine
		rx_dma_en, tx_dma_en,
		abort, idma_done,
		buf_size, dma_en,
		send_zero_length,
 
		// Register File Manager Interface
		adr, size, sizu_c,
 
		// Memory Arb interface
		madr, mdout, mdin, mwe, mreq, mack
		);
 
parameter	SSRAM_HADR = 14;
 
// Packet Disassembler/Assembler interface
input		clk, rst;
input	[7:0]	rx_data_st;
input		rx_data_valid;
input		rx_data_done;
output		send_data;
output	[7:0]	tx_data_st;
input		rd_next;
 
// Protocol Engine
input		rx_dma_en;	// Allows the data to be stored
input		tx_dma_en;	// Allows for data to be retrieved
input		abort;		// Abort Transfer (time_out, crc_err or rx_error)
output		idma_done;	// DMA is done
input	[13:0]	buf_size;	// Actual buffer size
input		dma_en;		// External DMA enabled
input		send_zero_length;
 
// Register File Manager Interface
input	[SSRAM_HADR + 2:0]	adr;	// Byte Address
input	[13:0]	size;		// Size in bytes
output	[10:0]	sizu_c;		// Up and Down counting size registers, used to update
 
// Memory Arb interface
output	[SSRAM_HADR:0]	madr;	// word address
output	[31:0]	mdout;
input	[31:0]	mdin;
output		mwe;
output		mreq;
input		mack;
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
parameter	[7:0]	// synopsys enum state
		IDLE		= 8'b00000001,
		WAIT_MRD	= 8'b00000010,
		MEM_WR		= 8'b00000100,
		MEM_WR1		= 8'b00001000,
		MEM_WR2		= 8'b00010000,
		MEM_RD1		= 8'b00100000,
		MEM_RD2		= 8'b01000000,
		MEM_RD3		= 8'b10000000;
 
reg	[7:0]	/* synopsys enum state */ state, next_state;
// synopsys state_vector state
 
reg		tx_dma_en_r, rx_dma_en_r;
 
reg	[SSRAM_HADR:0]	adr_cw;		// Internal word address counter
reg	[2:0]	adr_cb;			// Internal byte address counter
reg	[SSRAM_HADR:0]	adrw_next;	// next address
reg	[SSRAM_HADR:0]	adrw_next1;	// next address (after overrun check)
reg	[SSRAM_HADR:0]	last_buf_adr;	// Last Buffer Address
reg	[2:0]	adrb_next;		// next byte address
reg	[13:0]	sizd_c;			// Internal size counter
reg	[10:0]	sizu_c;			// Internal size counter
wire		adr_incw;
wire		adr_incb;
wire		siz_dec;
wire		siz_inc;
 
reg		word_done;		// Indicates that a word has been
					// assembled
reg		mreq_d;			// Memory request from State Machine
reg	[31:0]	dtmp_r;			// Temp data assembly register
reg	[31:0]	dout_r;			// Data output register
reg		mwe_d;			// Memory Write enable
reg		dtmp_sel;		// Selects tmp data register for pre-fetch
 
reg		sizd_is_zero;		// Indicates when all bytes have been
					// transferred
wire		sizd_is_zero_d;
 
reg	[7:0]	tx_data_st;		// Data output to packet assembler
reg	[31:0]	rd_buf0, rd_buf1;	// Mem Rd. buffers for TX
reg		rd_first;		// Indicates initial fill of buffers
 
reg		idma_done;		// DMA transfer is done
 
reg		mack_r;
wire		send_data;		// Enable UTMI Transmitter
reg		send_data_r;
 
reg		word_done_r;
reg		wr_last;
reg		wr_last_en;
reg		wr_done;
reg		wr_done_r;
reg		dtmp_sel_r;
reg		mwe;
reg		rx_data_done_r2;
wire		fill_buf0, fill_buf1;
wire		adrb_is_3;
 
reg		rx_data_done_r;
reg		rx_data_valid_r;
reg	[7:0]	rx_data_st_r;
 
reg		send_zero_length_r;
 
///////////////////////////////////////////////////////////////////
//
// Memory Arb interface
//
 
// Memory Request
assign mreq = (mreq_d & !mack_r) | word_done_r;
 
// Output Data
assign mdout = dout_r;
 
// Memory Address
assign madr = adr_cw;
 
always @(posedge clk)
	mwe <= mwe_d;
 
always @(posedge clk)
	mack_r <= mreq & mack;
 
///////////////////////////////////////////////////////////////////
//
// Misc Logic
//
 
always @(posedge clk)
	rx_data_valid_r <= rx_data_valid;
 
always @(posedge clk)
	rx_data_st_r <= rx_data_st;
 
always @(posedge clk)
	rx_data_done_r <= rx_data_done;
 
always @(posedge clk)
	rx_data_done_r2 <= rx_data_done_r;
 
// Generate one cycle pulses for tx and rx dma enable
always @(posedge clk)
	tx_dma_en_r <= tx_dma_en;
 
always @(posedge clk)
	rx_dma_en_r <= rx_dma_en;
 
always @(posedge clk)
	send_zero_length_r <= send_zero_length;
 
// address counter
always @(posedge clk)
	if(rx_dma_en_r || tx_dma_en_r)	adr_cw <= adr[SSRAM_HADR + 2:2];
	else				adr_cw <= adrw_next1;
 
always @(posedge clk)
	last_buf_adr <= adr + { {SSRAM_HADR+2-13{1'b0}}, buf_size };
 
always @(dma_en or adrw_next or last_buf_adr)
	if(adrw_next == last_buf_adr && dma_en)	adrw_next1 = {SSRAM_HADR+1{1'b0}};
	else					adrw_next1 = adrw_next;
 
always @(adr_incw or adr_cw)
	if(adr_incw)	adrw_next = adr_cw + {{SSRAM_HADR{1'b0}}, 1'b1};
	else		adrw_next = adr_cw;
 



always @(posedge clk)

	if(!rst)			adr_cb <= 3'h0;
	else
	if(rx_dma_en_r || tx_dma_en_r)	adr_cb <= adr[2:0];
	else				adr_cb <= adrb_next;
 
always @(adr_incb or adr_cb)
	if(adr_incb)	adrb_next = adr_cb + 3'h1;
	else		adrb_next = adr_cb;
 
assign adr_incb = rx_data_valid_r | rd_next;
assign adr_incw = !dtmp_sel_r & mack_r;
 
// Size Counter (counting backward from input size)



always @(posedge clk)

	if(!rst)			sizd_c <= 14'h3fff;
	else
	if(tx_dma_en || tx_dma_en_r)	sizd_c <= size;
	else
	if(siz_dec)			sizd_c <= sizd_c - 14'h1;
 
assign siz_dec = (rd_first & mack_r) | (rd_next & (sizd_c != 14'h0));
 
assign sizd_is_zero_d = sizd_c == 14'h0;
 
always @(posedge clk)
	sizd_is_zero <= sizd_is_zero_d;
 
// Size Counter (counting up from zero)



always @(posedge clk)

	if(!rst)		sizu_c <= 11'h0;
	else
	// Do I need to add "abort" in the next line ???
	if(rx_dma_en_r)		sizu_c <= 11'h0;
	else
	if(siz_inc)		sizu_c <= sizu_c + 11'h1;
 
assign siz_inc = rx_data_valid_r;
 
// DMA Done Indicator
always @(posedge clk)
	idma_done <= (rx_data_done_r | sizd_is_zero_d); // & !tx_dma_en;
 
///////////////////////////////////////////////////////////////////
//
// RX Logic
//
 
always @(posedge clk)
	dtmp_sel_r <= dtmp_sel;
 
// Memory data input
always @(posedge clk)
	if(dtmp_sel_r)			dtmp_r <= mdin;
	else
	if(rx_data_valid_r)
	   begin
		if(adr_cb[1:0] == 2'h0)	dtmp_r[07:00] <= rx_data_st_r;
		if(adr_cb[1:0] == 2'h1)	dtmp_r[15:08] <= rx_data_st_r;
		if(adr_cb[1:0] == 2'h2)	dtmp_r[23:16] <= rx_data_st_r;
		if(adr_cb[1:0] == 2'h3)	dtmp_r[31:24] <= rx_data_st_r;
	   end
 
always @(posedge clk)
	word_done <= ((adr_cb[1:0] == 2'h3) & rx_data_valid_r) | wr_last;
 
always @(posedge clk)
	word_done_r <= word_done & !word_done_r;
 
// Store output data and address when we got a word
always @(posedge clk)
	if(word_done)	dout_r <= dtmp_r;
 
always @(posedge clk)
	wr_last <= (adr_cb[1:0] != 2'h0) & !rx_data_valid_r & wr_last_en;
 
always @(posedge clk)
	wr_done_r <= rx_data_done_r;
 
always @(posedge clk)
	wr_done <= wr_done_r;
 
///////////////////////////////////////////////////////////////////
//
// TX Logic
//
 
// Fill TX Buffers
always @(posedge clk)
	if(fill_buf0)	rd_buf0 <= mdin;
 
always @(posedge clk)
	if(fill_buf1)	rd_buf1 <= mdin;
 
always @(adrb_next or rd_buf0 or rd_buf1)
	case(adrb_next[2:0])	// synopsys full_case parallel_case
	   3'h0: tx_data_st = rd_buf0[07:00];
	   3'h1: tx_data_st = rd_buf0[15:08];
	   3'h2: tx_data_st = rd_buf0[23:16];
	   3'h3: tx_data_st = rd_buf0[31:24];
	   3'h4: tx_data_st = rd_buf1[07:00];
	   3'h5: tx_data_st = rd_buf1[15:08];
	   3'h6: tx_data_st = rd_buf1[23:16];
	   3'h7: tx_data_st = rd_buf1[31:24];
	endcase
 
assign fill_buf0 = !adr_cw[0] & mack_r;
assign fill_buf1 =  adr_cw[0] & mack_r;
 
assign	adrb_is_3 = adr_cb[1:0] == 2'h3;
 



always @(posedge clk)

	if(!rst)		send_data_r <= 1'b0;
	else
	if(rd_first)		send_data_r <= 1'b1;
	else
	if(((sizd_c==14'h1) && rd_next) || sizd_is_zero_d)	send_data_r <= 1'b0;
 
assign send_data = send_data_r | send_zero_length_r;
 
///////////////////////////////////////////////////////////////////
//
// IDMA Load/Store State Machine
//
 
// store incoming data to memory until rx_data done
// First pre-fetch data from memory, so that bytes can be stuffed properly
 



always @(posedge clk)

	if(!rst)	state <= IDLE;
	else		state <= next_state;
 
always @(state or mack_r or abort or rx_dma_en_r or tx_dma_en_r or 
	sizd_is_zero or wr_last or wr_done or rx_data_done_r2 or 
	rd_next or adrb_is_3 or send_zero_length_r)
   begin
	next_state = state;	// Default do not change state
	mreq_d = 1'b0;
	mwe_d = 1'b0;
	rd_first = 1'b0;
	dtmp_sel = 1'b0;
	wr_last_en = 1'b0;
 
	case(state)	// synopsys full_case parallel_case
	   IDLE:
		   begin
 
// synopsys translate_off




if(rst)
begin
if(rx_dma_en_r === 1'bx)	$display("ERROR: IDMA: IDLE: rx_dma_en_r is unknown. (%t)", $time);
if(tx_dma_en_r === 1'bx)	$display("ERROR: IDMA: IDLE: tx_dma_en_r is unknown. (%t)", $time);
if(abort === 1'bx)		$display("ERROR: IDMA: IDLE: abort is unknown. (%t)", $time);
end

// synopsys translate_on
 
			if(rx_dma_en_r && !abort)
			   begin
				next_state = WAIT_MRD;
			   end
			if(tx_dma_en_r && !abort && !send_zero_length_r)
			   begin
				next_state = MEM_RD1;
			   end
		   end
 
	   WAIT_MRD:	// Pre-fetch a word from memory
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: WAIT_MRD: abort is unknown. (%t)", $time);
if(mack_r === 1'bx)	$display("ERROR: IDMA: WAIT_MRD: mack_r is unknown. (%t)", $time);

// synopsys translate_on
 
			if(abort)	next_state = IDLE;
			else
			if(mack_r)	next_state = MEM_WR;
			else
			   begin
				dtmp_sel = 1'b1;
				mreq_d = 1'b1;
			   end
		   end
 
	   MEM_WR:
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: MEM_WR: abort is unknown. (%t)", $time);
if(rx_data_done_r2 === 1'bx)	$display("ERROR: IDMA: MEM_WR: rx_data_done_r2 is unknown. (%t)", $time);

// synopsys translate_on
 
			mwe_d = 1'b1;
			if(abort)			next_state = IDLE;
			else
			if(rx_data_done_r2)	
			   begin
				wr_last_en = 1'b1;
				next_state = MEM_WR1;
			   end
 
		   end
	   MEM_WR1:
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: MEM_WR1: abort is unknown. (%t)", $time);
if(wr_last === 1'bx)	$display("ERROR: IDMA: MEM_WR1: wr_last is unknown. (%t)", $time);
if(wr_done === 1'bx)	$display("ERROR: IDMA: MEM_WR1: wr_done is unknown. (%t)", $time);

// synopsys translate_on
 
			mwe_d = 1'b1;
			wr_last_en = 1'b1;
			if(abort)			next_state = IDLE;
			else
			if(wr_last)			next_state = MEM_WR2;
			else
			if(wr_done)			next_state = IDLE;
		   end
 
	   MEM_WR2:
		   begin
 
// synopsys translate_off




if(mack_r === 1'bx)	$display("ERROR: IDMA: MEM_WR2: mack_r is unknown. (%t)", $time);

// synopsys translate_on
 
			mwe_d = 1'b1;
			if(mack_r)			next_state = IDLE;
		   end
 
	   MEM_RD1:
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: MEM_RD1: abort is unknown. (%t)", $time);
if(mack_r === 1'bx)	$display("ERROR: IDMA: MEM_RD1: mack_r is unknown. (%t)", $time);

// synopsys translate_on
 
			mreq_d = 1'b1;
			if(mack_r)		rd_first = 1'b1;
			if(abort)		next_state = IDLE;
			else
			if(mack_r)		next_state = MEM_RD2;
		   end
	   MEM_RD2:
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: MEM_RD2: abort is unknown. (%t)", $time);
if(mack_r === 1'bx)	$display("ERROR: IDMA: MEM_RD2: mack_r is unknown. (%t)", $time);

// synopsys translate_on
 
			mreq_d = 1'b1;
			if(abort)		next_state = IDLE;
			else
			if(mack_r)		next_state = MEM_RD3;
		   end
	   MEM_RD3:
		   begin
 
// synopsys translate_off




if(abort === 1'bx)	$display("ERROR: IDMA: MEM_RD3: abort is unknown. (%t)", $time);
if(sizd_is_zero===1'bx) $display("ERROR: IDMA: MEM_RD3: sizd_is_zero is unknown. (%t)", $time);
if(adrb_is_3 === 1'bx)	$display("ERROR: IDMA: MEM_RD3: adrb_is_3 is unknown. (%t)", $time);
if(rd_next === 1'bx)	$display("ERROR: IDMA: MEM_RD3: rd_next is unknown. (%t)", $time);

// synopsys translate_on
 
			if(sizd_is_zero || abort)	next_state = IDLE;
			else
			if(adrb_is_3 && rd_next)	next_state = MEM_RD2;
		   end
	endcase
 
   end
 
endmodule/////////////////////////////////////////////////////////////////////
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
 
 
 
module usbf_pl(	clk, rst,
 
		// UTMI Interface
		rx_data, rx_valid, rx_active, rx_err,
		tx_data, tx_valid, tx_valid_last, tx_ready,
		tx_first, tx_valid_out,
		mode_hs, usb_reset, usb_suspend, usb_attached,
 
		// memory interface
		madr, mdout, mdin, mwe, mreq, mack,
 
		// Register File Interface
		fa, idin,
		ep_sel, match,
		dma_in_buf_sz1, dma_out_buf_avail,
		buf0_rl, buf0_set, buf1_set,
		uc_bsel_set, uc_dpd_set,
 
		int_buf1_set, int_buf0_set, int_upid_set,
		int_crc16_set, int_to_set, int_seqerr_set,
		out_to_small, csr, buf0, buf1,
 
		// Misc
		frm_nat,
		pid_cs_err, nse_err,
		crc5_err
		);
 
parameter	SSRAM_HADR = 14;
 
// UTMI Interface
input		clk, rst;
input	[7:0]	rx_data;
input		rx_valid, rx_active, rx_err;
output	[7:0]	tx_data;
output		tx_valid;
output		tx_valid_last;
input		tx_ready;
output		tx_first;
input		tx_valid_out;
input		mode_hs;	// High Speed Mode
input		usb_reset;	// USB Reset
input		usb_suspend;	// USB Suspend
input		usb_attached;	// Attached to USB
 
// Memory Arbiter Interface
output	[SSRAM_HADR:0]	madr;		// word address
output	[31:0]	mdout;
input	[31:0]	mdin;
output		mwe;
output		mreq;
input		mack;
 
// Register File interface
input	[6:0]	fa;		// Function Address (as set by the controller)
output	[31:0]	idin;		// Data Input
output	[3:0]	ep_sel;		// Endpoint Number Input
input		match;		// Endpoint Matched
input		dma_in_buf_sz1;
input		dma_out_buf_avail;
output		nse_err;	// no such endpoint error
 
output		buf0_rl;	// Reload Buf 0 with original values
output		buf0_set;	// Write to buf 0
output		buf1_set;	// Write to buf 1
output		uc_bsel_set;	// Write to the uc_bsel field
output		uc_dpd_set;	// Write to the uc_dpd field
output		int_buf1_set;	// Set buf1 full/empty interrupt
output		int_buf0_set;	// Set buf0 full/empty interrupt
output		int_upid_set;	// Set unsupported PID interrupt
output		int_crc16_set;	// Set CRC16 error interrupt
output		int_to_set;	// Set time out interrupt
output		int_seqerr_set;	// Set PID sequence error interrupt
output		out_to_small;	// OUT packet was to small for DMA operation
 
input	[31:0]	csr;		// Internal CSR Output
input	[31:0]	buf0;		// Internal Buf 0 Output
input	[31:0]	buf1;		// Internal Buf 1 Output
 
// Misc
output		pid_cs_err;	// pid checksum error
output		crc5_err;	// crc5 error
output	[31:0]	frm_nat;
 
///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//
 
// Packet Disassembler Interface
wire		clk, rst;
wire	[7:0]	rx_data;
wire		pid_OUT, pid_IN, pid_SOF, pid_SETUP;
wire		pid_DATA0, pid_DATA1, pid_DATA2, pid_MDATA;
wire		pid_ACK, pid_NACK, pid_STALL, pid_NYET;
wire		pid_PRE, pid_ERR, pid_SPLIT, pid_PING;
wire	[6:0]	token_fadr;
wire		token_valid;
wire		crc5_err;
wire	[10:0]	frame_no;
wire	[7:0]	rx_data_st;
wire		rx_data_valid;
wire		rx_data_done;
wire		crc16_err;
wire		rx_seq_err;
 
// Packet Assembler Interface
wire		send_token;
wire	[1:0]	token_pid_sel;
wire		send_data;
wire	[1:0]	data_pid_sel;
wire	[7:0]	tx_data_st;
wire		rd_next;
 
// IDMA Interface
wire		rx_dma_en;	// Allows the data to be stored
wire		tx_dma_en;	// Allows for data to be retrieved
wire		abort;		// Abort Transfer (time_out, crc_err or rx_error)
wire		idma_done;	// DMA is done
wire	[SSRAM_HADR + 2:0]	adr;		// Byte Address
wire	[13:0]	size;		// Size in bytes
wire	[10:0]	sizu_c;		// Up and Down counting size registers, used
				// to update
wire	[13:0]	buf_size;	// Actual buffer size
wire		dma_en;		// external dma enabled
 
// Memory Arbiter Interface
wire	[SSRAM_HADR:0]	madr;	// word address
wire	[31:0]	mdout;
wire	[31:0]	mdin;
wire		mwe;
wire		mreq;
wire		mack;
 
// Local signals
wire		pid_bad, pid_bad1, pid_bad2;
 
reg		hms_clk;	// 0.5 Micro Second Clock
reg	[4:0]	hms_cnt;
reg	[10:0]	frame_no_r;	// Current Frame Number register
wire		frame_no_we;
reg		frame_no_same;	// Indicates current and prev. frame numbers
				// are equal
reg	[3:0]	mfm_cnt;	// Micro Frame Counter
reg	[11:0]	sof_time;	// Time since last sof
reg		clr_sof_time;
wire		fsel;		// This Function is selected
wire		match_o;
 
reg		frame_no_we_r;
 
///////////////////////////////////////////////////////////////////
//
// Misc Logic
//
 
// PIDs we should never receive
assign pid_bad1 = pid_ACK | pid_NACK | pid_STALL | pid_NYET | pid_PRE |
			pid_ERR | pid_SPLIT;
 
// PIDs we should never get in full speed mode (high speed mode only)
assign pid_bad2 = !mode_hs & pid_PING;
 
// All bad pids
assign pid_bad = pid_bad1 | pid_bad2;
 
assign match_o = !pid_bad & fsel & match & token_valid & !crc5_err;
 
// Frame Number (from SOF token)
assign frame_no_we = token_valid & !crc5_err & pid_SOF;
 
always @(posedge clk)
	frame_no_we_r <= frame_no_we;
 



always @(posedge clk)

	if(!rst)		frame_no_r <= 11'h0;
	else
	if(frame_no_we_r)	frame_no_r <= frame_no;
 
// Micro Frame Counter
always @(posedge clk)
	frame_no_same <= frame_no_we & (frame_no_r == frame_no);
 



always @(posedge clk)

	if(!rst)		mfm_cnt <= 4'h0;
	else
	if(frame_no_we_r && !frame_no_same)
				mfm_cnt <= 4'h0;
	else
	if(frame_no_same)	mfm_cnt <= mfm_cnt + 4'h1;
 
//SOF delay counter
always @(posedge clk)
	clr_sof_time <= frame_no_we;
 
always @(posedge clk)
	if(clr_sof_time)	sof_time <= 12'h0;
	else
	if(hms_clk)		sof_time <= sof_time + 12'h1;
 
assign frm_nat = {mfm_cnt, 1'b0, frame_no_r, 4'h0, sof_time};
 
// 0.5 Micro Seconds Clock Generator



always @(posedge clk)

	if(!rst)				hms_cnt <= 5'h0;
	else
	if(hms_clk || frame_no_we_r)		hms_cnt <= 5'h0;
	else					hms_cnt <= hms_cnt + 5'h1;
 
always @(posedge clk)
	hms_clk <= (hms_cnt == 5'h1c);
 
///////////////////////////////////////////////////////////////////
 
// This function is addressed
assign fsel = (token_fadr == fa);
 
///////////////////////////////////////////////////////////////////
//
// Module Instantiations
//
 
//Packet Decoder
usbf_pd	u0(	.clk(			clk			),
		.rst(			rst			),
		.rx_data(		rx_data			),
		.rx_valid(		rx_valid		),
		.rx_active(		rx_active		),
		.rx_err(		rx_err			),
		.pid_OUT(		pid_OUT			),
		.pid_IN(		pid_IN			),
		.pid_SOF(		pid_SOF			),
		.pid_SETUP(		pid_SETUP		),
		.pid_DATA0(		pid_DATA0		),
		.pid_DATA1(		pid_DATA1		),
		.pid_DATA2(		pid_DATA2		),
		.pid_MDATA(		pid_MDATA		),
		.pid_ACK(		pid_ACK			),
		.pid_NACK(		pid_NACK		),
		.pid_STALL(		pid_STALL		),
		.pid_NYET(		pid_NYET		),
		.pid_PRE(		pid_PRE			),
		.pid_ERR(		pid_ERR			),
		.pid_SPLIT(		pid_SPLIT		),
		.pid_PING(		pid_PING		),
		.pid_cks_err(		pid_cs_err		),
		.token_fadr(		token_fadr		),
		.token_endp(		ep_sel			),
		.token_valid(		token_valid		),
		.crc5_err(		crc5_err		),
		.frame_no(		frame_no		),
		.rx_data_st(		rx_data_st		),
		.rx_data_valid(		rx_data_valid		),
		.rx_data_done(		rx_data_done		),
		.crc16_err(		crc16_err		),
		.seq_err(		rx_seq_err		)
		);
 
// Packet Assembler
usbf_pa	u1(	.clk(			clk			),
		.rst(			rst			),
		.tx_data(		tx_data			),
		.tx_valid(		tx_valid		),
		.tx_valid_last(		tx_valid_last		),
		.tx_ready(		tx_ready		),
		.tx_first(		tx_first		),
		.send_token(		send_token		),
		.token_pid_sel(		token_pid_sel		),
		.send_data(		send_data		),
		.data_pid_sel(		data_pid_sel		),
		.send_zero_length(	send_zero_length	),
		.tx_data_st(		tx_data_st		),
		.rd_next(		rd_next			)
		);
 
// Internal DMA / Memory Arbiter Interface
usbf_idma #(SSRAM_HADR)
	u2(	.clk(			clk			),
		.rst(			rst			),
		.rx_data_st(		rx_data_st		),
		.rx_data_valid(		rx_data_valid		),
		.rx_data_done(		rx_data_done		),
		.send_data(		send_data		),
		.tx_data_st(		tx_data_st		),
		.rd_next(		rd_next			),
		.rx_dma_en(		rx_dma_en		),
		.tx_dma_en(		tx_dma_en		),
		.abort(			abort			),
		.idma_done(		idma_done		),
		.adr(			adr			),
		.size(			size			),
		.buf_size(		buf_size		),
		.dma_en(		dma_en			),
		.send_zero_length(	send_zero_length	),
		.madr(			madr			),
		.sizu_c(		sizu_c			),
		.mdout(			mdout			),
		.mdin(			mdin			),
		.mwe(			mwe			),
		.mreq(			mreq			),
		.mack(			mack			)
		);
 
// Protocol Engine
usbf_pe #(SSRAM_HADR)
	u3(	.clk(			clk			),
		.rst(			rst			),
		.tx_valid(		tx_valid_out		),
		.rx_active(		rx_active		),
		.pid_OUT(		pid_OUT			),
		.pid_IN(		pid_IN			),
		.pid_SOF(		pid_SOF			),
		.pid_SETUP(		pid_SETUP		),
		.pid_DATA0(		pid_DATA0		),
		.pid_DATA1(		pid_DATA1		),
		.pid_DATA2(		pid_DATA2		),
		.pid_MDATA(		pid_MDATA		),
		.pid_ACK(		pid_ACK			),
		.pid_NACK(		pid_NACK		),
		.pid_STALL(		pid_STALL		),
		.pid_NYET(		pid_NYET		),
		.pid_PRE(		pid_PRE			),
		.pid_ERR(		pid_ERR			),
		.pid_SPLIT(		pid_SPLIT		),
		.pid_PING(		pid_PING		),
		.mode_hs(		mode_hs			),
		.token_valid(		token_valid		),
		.crc5_err(		crc5_err		),
		.rx_data_valid(		rx_data_valid		),
		.rx_data_done(		rx_data_done		),
		.crc16_err(		crc16_err		),
		.send_token(		send_token		),
		.token_pid_sel(		token_pid_sel		),
		.data_pid_sel(		data_pid_sel		),
		.send_zero_length(	send_zero_length	),
		.rx_dma_en(		rx_dma_en		),
		.tx_dma_en(		tx_dma_en		),
		.abort(			abort			),
		.idma_done(		idma_done		),
		.adr(			adr			),
		.size(			size			),
		.buf_size(		buf_size		),
		.sizu_c(		sizu_c			),
		.dma_en(		dma_en			),
		.fsel(			fsel			),
		.idin(			idin			),
		.ep_sel(		ep_sel			),
		.match(			match_o			),
		.dma_in_buf_sz1(	dma_in_buf_sz1		),
		.dma_out_buf_avail(	dma_out_buf_avail	),
		.nse_err(		nse_err			),
		.buf0_rl(		buf0_rl			),
		.buf0_set(		buf0_set		),
		.buf1_set(		buf1_set		),
		.uc_bsel_set(		uc_bsel_set		),
		.uc_dpd_set(		uc_dpd_set		),
		.int_buf1_set(		int_buf1_set		),
		.int_buf0_set(		int_buf0_set		),
		.int_upid_set(		int_upid_set		),
		.int_crc16_set(		int_crc16_set		),
		.int_to_set(		int_to_set		),
		.int_seqerr_set(	int_seqerr_set		),
		.out_to_small(		out_to_small		),
		.csr(			csr			),
		.buf0(			buf0			),
		.buf1(			buf1			)
		);
 
endmodule
