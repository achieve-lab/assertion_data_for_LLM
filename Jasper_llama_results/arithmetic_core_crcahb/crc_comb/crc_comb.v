//////////////////////////////////////////////////////////////////
////
////
//// 	CRCAHB CORE BLOCK
////
////
////
//// This file is part of the APB to I2C project
////
//// http://www.opencores.org/cores/apbi2c/
////
////
////
//// Description
////
//// Implementation of APB IP core according to
////
//// crcahb IP core specification document.
////
////
////
//// To Do: Things are right here but always all block can suffer changes
////
////
////
////
////
//// Author(s): -  Julio Cesar 
////
///////////////////////////////////////////////////////////////// 
////
////
//// Copyright (C) 2009 Authors and OPENCORES.ORG
////
////
////
//// This source file may be used and distributed without
////
//// restriction provided that this copyright statement is not
////
//// removed from the file and that any derivative work contains
//// the original copyright notice and the associated disclaimer.
////
////
//// This source file is free software; you can redistribute it
////
//// and/or modify it under the terms of the GNU Lesser General
////
//// Public License as published by the Free Software Foundation;
//// either version 2.1 of the License, or (at your option) any
////
//// later version.
////
////
////
//// This source is distributed in the hope that it will be
////
//// useful, but WITHOUT ANY WARRANTY; without even the implied
////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
////
//// PURPOSE. See the GNU Lesser General Public License for more
//// details.
////
////
////
//// You should have received a copy of the GNU Lesser General
////
//// Public License along with this source; if not, download it
////
//// from http://www.opencores.org/lgpl.shtml
////
////
///////////////////////////////////////////////////////////////////



//This module implements the combinational logic for one iteration of CRC Calculation
//If conected to shift register and after n clock cycles, this module realize CRC calculation
//for n bits of data.
//If instantiated in serial form, this module realize the parallel CRC calculation
//for n bits of data.
module crc_comb
#(
	parameter CRC_SIZE      = 8,         // Define the size of CRC Code
 	parameter MASK          = 8'hff      // This mask define the level of configurability of the module
)(
	//OUTPUTS
	output [CRC_SIZE - 1 : 0] crc_out,   // CRC code after one round of calculation
	//INPUTS
	input                    data_in,    // One bit of data block
	input [CRC_SIZE - 1 : 0] crc_in,     // In cascated mode, this input is the previous calculated CRC code
	input [CRC_SIZE - 1 : 0] crc_poly,   // Generator Polynomial
  input [CRC_SIZE - 2 : 0] crc_poly_size
);

wire [CRC_SIZE - 2 : 0] MASK_REVERSED;
wire [CRC_SIZE - 1 : 0] feedback;
wire [CRC_SIZE - 2 : 0] crc_in_masked;
wire [CRC_SIZE - 2 : 0] crc_poly_size_reversed;

/*
generate
  genvar i;
  for(i = 0; i < CRC_SIZE - 1; i = i + 1)
    begin
			assign crc_poly_size_reversed[i] = crc_poly_size[CRC_SIZE - 2 - i];
   		assign MASK_REVERSED[i] = MASK[CRC_SIZE - 2 - i]; 
		end
endgenerate
*/

assign crc_poly_size_reversed[0] = crc_poly_size[CRC_SIZE - 2 - 0];
                assign MASK_REVERSED[0] = MASK[CRC_SIZE - 2 - 0]; 
assign crc_poly_size_reversed[1] = crc_poly_size[CRC_SIZE - 2 - 1];
                assign MASK_REVERSED[1] = MASK[CRC_SIZE - 2 - 1];
assign crc_poly_size_reversed[2] = crc_poly_size[CRC_SIZE - 2 - 2];
                assign MASK_REVERSED[2] = MASK[CRC_SIZE - 2 - 2];
assign crc_poly_size_reversed[3] = crc_poly_size[CRC_SIZE - 2 - 3];
                assign MASK_REVERSED[3] = MASK[CRC_SIZE - 2 - 3];
assign crc_poly_size_reversed[4] = crc_poly_size[CRC_SIZE - 2 - 4];
                assign MASK_REVERSED[4] = MASK[CRC_SIZE - 2 - 4]; 
assign crc_poly_size_reversed[5] = crc_poly_size[CRC_SIZE - 2 - 5];
                assign MASK_REVERSED[5] = MASK[CRC_SIZE - 2 - 5];
assign crc_poly_size_reversed[6] = crc_poly_size[CRC_SIZE - 2 - 6];
                assign MASK_REVERSED[6] = MASK[CRC_SIZE - 2 - 6]; 		


assign feedback = crc_poly & {CRC_SIZE{crc_in[CRC_SIZE - 1] ^ data_in}};
assign crc_in_masked = crc_in[CRC_SIZE - 2 : 0] & (~(crc_poly_size_reversed[CRC_SIZE - 2 : 0] & MASK_REVERSED)); 
assign crc_out = {crc_in_masked ^ feedback[CRC_SIZE - 1 : 1], feedback[0]}; 

endmodule
