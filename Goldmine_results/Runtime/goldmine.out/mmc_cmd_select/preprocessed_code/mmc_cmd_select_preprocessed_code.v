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
