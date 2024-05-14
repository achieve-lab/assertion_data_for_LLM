// Copyright 2004-2005 Openchip
// http://www.openchip.org


// Copyright 2004-2005 Openchip
// http://www.openchip.org






// send 80 clocks ?


// Initialize


// identify, loop until ready !


// just read the rest of response


// read CID


// assign RCA


// go transfer


// stream read command


// stream read transfer in progress


// config done, just idle wait for reset


// config error, just idle wait for reset




//
// Hard-wired CMD bit module, includes hard-wired CRC
// optimized for PLD implementation
//


//
// MMC CMD Bit Select
// Start, Command, Arg, CRC, Stop
//

// Copyright 2004-2005 Openchip
// http://www.openchip.org










































module mmc_cmd_select(
  cmd,
  bit,
  cmd_active,
  data);

input [3:0] cmd;
input [7:0] bit;
output cmd_active;
output data;

wire start_bit;
wire cmd_bits;
wire CMD1_dat;
wire arg16_bit;
wire crc_bit;
wire stop_bit;


//
// Command bits active 
// START, CMD, ARG, CRC7, STOP == 48Bits
//
assign cmd_bits  = (bit[7:6] == 2'b00) & 
                   (bit[5:4] != 2'b11) &
			    (cmd[3:2] != 2'b11);
// Start bit
assign start_bit = bit[7:0] == 8'b00000001;
// RCA=0x01 (D16 in Argument)
assign arg16_bit = bit[7:0] == 8'b00010111; 
// select Start Address for streaming
//assign arg_x_bit = counter_command_bits[7:0] == 8'b00010101; 
// Stop bit
assign stop_bit  = bit[7:0] == 8'b00101111;

// ---------------------------------------------------------------------------
// hard-wired CRC7 generator!
// this implementation requires less resources in PLD 
// than serial CRC calculator
// the values are calculated by an C program
// ---------------------------------------------------------------------------

// CMD0,0          xx
// CMD1,0x80FF8000 xx
// CMD2,0          4d   0100 1101
// CMD3,0x10000    7f   0111 1111
// CMD7,0x10000    dd   1101 1101
// CMD11,0         77   0111 0111

assign crc_bit =
    ( (bit[5:0] == 6'b101000) & ( 
      (cmd==4'b0000) 
    | (cmd==4'b0001) 
    | (cmd==4'b0111) ) ) // CRC6
  
  | ( (bit[5:0] == 6'b101001) & ( 
      (cmd==4'b0010) 
    | (cmd==4'b0011) 
    | (cmd==4'b0111) 
    | (cmd==4'b1011) ) ) // CRC5

  | ( (bit[5:0] == 6'b101010) & ( 
      (cmd==4'b0001) 
    | (cmd==4'b0011) 
    | (cmd==4'b1011) ) ) // CRC4

  | ( (bit[5:0] == 6'b101011) & ( 
      (cmd==4'b0000) 
    | (cmd==4'b0011) 
    | (cmd==4'b0111) 
    | (cmd==4'b1011) ) ) // CRC3

  | ( (bit[5:0] == 6'b101100) & ( 
      (cmd==4'b0001) 
    | (cmd==4'b0010) 
    | (cmd==4'b0011) 
    | (cmd==4'b0111) ) ) // CRC2

  | ( (bit[5:0] == 6'b101101) & ( 
      (cmd==4'b0000) 
    | (cmd==4'b0001) 
    | (cmd==4'b0010) 
    | (cmd==4'b0011) 
    | (cmd==4'b0111) 
    | (cmd==4'b1011) ) ) // CRC1

  | ( (bit[5:0] == 6'b101110) & ( 
      (cmd==4'b0001) 
    | (cmd==4'b0011) 
    | (cmd==4'b1011) ) ) // CRC0
  ;

// ---------------------------------------------------------------------------
// Hard wired ARG for CMD1 == 0x80FF8000
// ---------------------------------------------------------------------------

assign CMD1_dat = (cmd==4'b0001) &
  ( (bit[5:0] == 6'b001000) //
  | (bit[5:0] == 6'b010000) //
  | (bit[5:0] == 6'b010001) //
  | (bit[5:0] == 6'b010010) //
  | (bit[5:0] == 6'b010011) //
  | (bit[5:0] == 6'b010100) //
  | (bit[5:0] == 6'b010101) //
  | (bit[5:0] == 6'b010110) //
  | (bit[5:0] == 6'b010111) //
  | (bit[5:0] == 6'b011000) //
  );
  

// ---------------------------------------------------------------------------
// Select CMD Data output
// ---------------------------------------------------------------------------

assign data =
    start_bit                // START
  | ( cmd[0] & (bit[5:0] == 6'b000111)  )
  | ( cmd[1] & (bit[5:0] == 6'b000110)  )
  | ( cmd[2] & (bit[5:0] == 6'b000101)  )
  | ( cmd[3] & (bit[5:0] == 6'b000100)  )
  | CMD1_dat // CMD1 Argument
  | ( arg16_bit & ((cmd == 4'b0011) | (cmd == 4'b0111)) ) // RCA = 0x1 ARG16
//  | ( arg_x_bit & (cmd_state == CMD11) ) // Start Address = 0x0400 ARG10
  | crc_bit                  // Hard coded CRC7
  | stop_bit;                // STOP

assign cmd_active = cmd_bits;

endmodule
// Copyright 2004-2005 Openchip
// http://www.openchip.org

// ---------------------------------------------------------------------------
// Clock Prescaler
//
// For Xilinx Passive serial we use
// Divide by 16 or 1:1 clock deliver from FGPA (6MHz)
// ---------------------------------------------------------------------------

module mmc_boot_prescaler_16_1(
  rst,
  sys_clk,
  mmc_clk,
  mode_transfer
  );

input rst;
input sys_clk;
output mmc_clk;
input mode_transfer;

reg [3:0] prescaler;

always @(posedge sys_clk)
  if (rst)
    prescaler <= 4'b0000;
  else
    prescaler <= prescaler + 4'b0001;

// ---------------------------------------------------------------------------
// Select divide by 16 or direct sys_clk (CCLK)
// ---------------------------------------------------------------------------

assign mmc_clk = mode_transfer ?  sys_clk : prescaler[3]; 


endmodule

module xmsmmc_core(

  // CCLK From FPGA
  cclk,
  // Done From FPGA, indicates success
  done,
  // Init From FPGA (start of config and ERROR)
  init,
  
  //
  // MMC Card I/O  
  // CS is not used tie up, pull up or leave open (not used)
  // DAT is directly connected to FPGA DIN(D0)
  
  // CMD Pin
  mmc_cmd,
  // CLK Pin
  mmc_clk,

  // Output enable control
  dis,

  // Error goes high if config error, or no MMC card inserted         
  error
  );


// global clock input, is divided to provide 400KHz and 20MHz Clocks    
input  cclk;

input  init;      // Pulse to start config
input  done;      //

// error/status out, goes high on error
output error;

// MMC Card I/O tristate when reset active and after config done/error
inout  mmc_cmd;
output mmc_clk;

//
input dis;


// command data to MMC card
wire cmd_data_out;

// "Transfer Mode" switch MMC clock to direct CCLK!
wire mode_transfer;

//

// CMD1 Response Start Bit
// if not Low, then no Card detected, error !
wire cmd1_resp_start_bit;
// CMD1 Response Busy Bit
// if Low then busy, loop until goes high
wire cmd1_resp_busy_bit;




//
// ASYNC reset we do not yet have clock!
//

//wire int_reset;
//assign int_reset = !init & !done;

wire config_request;
assign config_request = !init & !done;



/*
reg int_reset;

always @(posedge cclk or posedge config_request)
  if (config_request)
    int_reset <= 1'b1;
  else
    int_reset <= 1'b0;
*/

wire int_reset;
assign int_reset = config_request;


// ---------------------------------------------------------------------------
// Clock Prescaler
// ---------------------------------------------------------------------------

wire clk_mmc;
 
mmc_boot_prescaler_16_1 precaler_i (
        .rst    (               int_reset       ),
	.sys_clk(		cclk		), 
	.mmc_clk(		clk_mmc		), 
	.mode_transfer(		mode_transfer	)
	);



// command bit counter
reg [7:0] counter_command_bits;

always @(negedge clk_mmc or posedge int_reset)
  if (int_reset)
    counter_command_bits <= 8'b00000000;
  else
    counter_command_bits <= counter_command_bits + 8'b00000001;

// ------------------------------------------------------------------
//
// ------------------------------------------------------------------

// command sequencer state machine
reg [3:0] cmd_state;
reg [3:0] cmd_state_next;

wire cmd_done;
assign cmd_done = counter_command_bits == 8'b11111111;

// CMD1 response Start (must be low if card is responding
assign cmd1_resp_start_bit = counter_command_bits[7:0] == 8'b00110101;
// CMD1 response Busy bit (must be high if card is ready)
assign cmd1_resp_busy_bit = counter_command_bits[7:0] == 8'b00111101;

//
// COMMAND State machine
//
always @(posedge clk_mmc or posedge int_reset)
  if (int_reset)
    cmd_state <= 4'b1111;
  else 
    cmd_state <= cmd_state_next;

// R1 48 bits
// 00xx xxxx Sxxx xxxx ... xxx1
// R2 136 bits !!
// 00xx ... xxx1
// R3 48 bit
// 00xx ... xxx1

always @(cmd_state, done, cmd_done, init, mmc_cmd, cmd1_resp_start_bit, cmd1_resp_busy_bit)
  begin
    cmd_state_next = cmd_state;

    case (cmd_state) // synopsys full_case parallel_case
	 
	 4'b1111: // send 80+ clocks, then send CMD0
	   begin
	     if (cmd_done & init) cmd_state_next = 4'b0000;
	   end

	 4'b0000: // No response command, go send CMD1
	   begin
	     if (cmd_done) cmd_state_next = 4'b0001;
	   end

	 4'b0001: // send CMD1, loop until response bit31 is high
	   begin
	     // Response start detected ?
		// if not no card and go error
	     if ( (cmd1_resp_start_bit==1'b1) & (mmc_cmd==1'b1) ) 
		  cmd_state_next = 4'b1110;
          	// if not busy advance to next
		// we can jump to next command as we are in the middle
		// of response time, so the next command will not
		// start before the last response has been read
	     if ( (cmd1_resp_busy_bit==1'b1) & (mmc_cmd==1'b1) ) 
		  cmd_state_next = 4'b1001;
	   end

	 4'b1001: // just some clocks spacing
	   begin
	     if (cmd_done) cmd_state_next = 4'b0010;
	   end

	 4'b0010: // send CMD2	R2
	   begin
	     if (cmd_done) cmd_state_next = 4'b0011;
	   end

	 4'b0011: // send CMD3	R1
	   begin
	     if (cmd_done) cmd_state_next = 4'b0111;
	   end

	 4'b0111: // send CMD7	R1
	   begin
	     if (cmd_done) cmd_state_next = 4'b1011;
	   end

	 4'b1011: // send CMD11 R1
	   begin
	     if (cmd_done) cmd_state_next = 4'b1100;
	   end
	 
	 //
	 // Commands are sent, CMD is held high
	 // MMC Card content is streamed out on DAT pin
	 //
	 4'b1100: 
	   begin
	     if (done)
            cmd_state_next = 4'b1101;

	     if (!init)
            cmd_state_next = 4'b1110;
	   end
	 
	 // Config done succesfully!
	 4'b1101:
	   begin
	     
	   end

	 // Some error has occoured
	 4'b1110:
	   begin

	   end

    endcase
  end

//
// transfer mode, select high speed clock
//
assign mode_transfer = cmd_state == 4'b1100;


// ------------------------------------------------------------------
//
// Just emulating a memory to select CMD Data output
//
// ------------------------------------------------------------------

wire cmd_bits;
// 
mmc_cmd_select mmc_cmd_select_i (
	.cmd(		cmd_state		), 
	.bit(		counter_command_bits	), 
	.cmd_active(	cmd_bits		),
	.data(		cmd_data_out		)
    );


// ------------------------------------------------------------------
//
// ------------------------------------------------------------------

assign mmc_cmd = (!dis & cmd_bits) ? cmd_data_out : 1'bz;
assign mmc_clk = !dis ? (int_reset ? 1'b0 : clk_mmc) : 1'bz;

// signal ERROR (active high)
assign error = cmd_state == 4'b1110;


endmodule


