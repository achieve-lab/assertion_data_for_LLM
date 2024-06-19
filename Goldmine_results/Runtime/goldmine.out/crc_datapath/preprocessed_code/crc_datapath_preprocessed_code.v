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



module bit_reversal
#(
	parameter DATA_SIZE = 32
)
(
	//OUTPUTS
	output [DATA_SIZE - 1 : 0] data_out,
	//INPUTS
	input  [DATA_SIZE - 1 : 0] data_in,
	input  [1 : 0] rev_type
);


//Bit reversing types
localparam NO_REVERSE = 2'b00; 
localparam BYTE       = 2'b01;
localparam HALF_WORD  = 2'b10;
localparam WORD       = 2'b11;

localparam TYPES = 4;

wire [DATA_SIZE - 1 : 0] data_reversed[0 : 3];


assign data_reversed[NO_REVERSE] = data_in; //bit order not affected

generate
	genvar i, type;
	for(type = 1 ; type < TYPES; type = type + 1)
		for(i = 0; i < DATA_SIZE; i = i + 1)
			begin
				if(i < ((DATA_SIZE/4) * (2 ** (type - 1))))
					assign data_reversed[type][i] = data_in[((DATA_SIZE/4) * (2 ** (type - 1)))*((i/((DATA_SIZE/4) * (2 ** (type - 1)))) + 1) - 1 - i];
				else
					assign data_reversed[type][i] = data_in[((DATA_SIZE/4) * (2 ** (type - 1)))*((i/((DATA_SIZE/4) * (2 ** (type - 1)))) + 1) - 1 - (i%(((DATA_SIZE/4) * (2 ** (type - 1)))*(i/((DATA_SIZE/4) * (2 ** (type - 1))))))];
			end
endgenerate

//Output Mux
assign data_out = data_reversed[rev_type];

endmodule
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

module crc_parallel
#(
	parameter CRC_SIZE      = 8,         // Define the size of CRC Code
	parameter FRAME_SIZE    = 8          // Number of bits in the data block
)(
	//OUTPUTS
	output [CRC_SIZE   - 1 : 0] crc_out,
	//INPUTS
	input  [FRAME_SIZE - 1 : 0] data_in,
	input  [CRC_SIZE   - 1 : 0] crc_init,
	input  [CRC_SIZE   - 1 : 0] crc_poly,
	input  [CRC_SIZE   - 1 : 0] crc_poly_size
);
localparam ENABLE  = {CRC_SIZE{1'b1}};
localparam DISABLE = {CRC_SIZE{1'b0}};

wire [CRC_SIZE - 1 : 0] crc_comb_out[0 : FRAME_SIZE];
wire [CRC_SIZE - 1 : 0] poly_sel    [1 : CRC_SIZE - 1];
wire [CRC_SIZE - 1 : 0] sel_out     [0 : CRC_SIZE - 1];
wire [CRC_SIZE - 1 : 0] crc_init_sel[0 : CRC_SIZE - 1];
wire [CRC_SIZE - 1 : 0] poly_mux;
wire [CRC_SIZE - 1 : 0] crc_poly_size_reversed;
wire [CRC_SIZE - 1 : 0] crc_init_justified;

assign poly_mux[0] = crc_poly[0];
generate
  genvar k;
	for(k = 1; k < CRC_SIZE; k = k + 1)
		begin
			assign poly_sel[CRC_SIZE - k] = crc_poly_size >> (k - 1);
			assign poly_mux[k] = |(crc_poly & poly_sel[k]);
		end
endgenerate

generate
	genvar l;
	for(l = 0; l < CRC_SIZE; l = l + 1)
		begin
			assign crc_poly_size_reversed[l] = crc_poly_size[CRC_SIZE - 1 - l];
			assign sel_out[l] = crc_poly_size_reversed << l;
			assign crc_out[l] = |(sel_out[l] & crc_comb_out[FRAME_SIZE]);
		end
endgenerate

generate
	genvar m;
	for(m = CRC_SIZE - 1; m >= 0; m = m - 1)
		begin
			assign crc_init_sel[m] = crc_poly_size >> (CRC_SIZE - 1 - m);
			assign crc_init_justified[m] = |(crc_init & crc_init_sel[m]);
		end
endgenerate

assign crc_comb_out[0] = crc_init_justified;

generate
	genvar i;
	for(i = 0; i < FRAME_SIZE; i = i + 1)
		begin
			crc_comb 
			#(
				.CRC_SIZE      ( CRC_SIZE      ),
				.MASK          ( ENABLE        )
			) CRC_COMB
			(
				.crc_out       ( crc_comb_out[i + 1]           ),
				.data_in       ( data_in[FRAME_SIZE - 1 - i]   ),
				.crc_in        ( crc_comb_out[i]               ),
				.crc_poly      ( poly_mux                      ),
				.crc_poly_size ( crc_poly_size[CRC_SIZE - 2:0] )
			);
		end
endgenerate

endmodule
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


module crc_datapath
(
 //OUTPUTS
 output [31:0] crc_out,
 output [ 1:0] size_out,
 output [ 7:0] crc_idr_out,
 output [31:0] crc_poly_out,
 output [31:0] crc_init_out,
 //INPUTS
 input [31:0] bus_wr, //Write data Bus
 input [ 1:0] rev_in_type, //select type of reversion of bus
 input rev_out_type,
 input buffer_en,
 input byte_en,
 input crc_init_en,
 input crc_out_en,
 input crc_idr_en,
 input crc_poly_en,
 input buffer_rst,
 input bypass_byte0,
 input bypass_size,
 input [1:0] byte_sel,
 input [1:0] size_in,
 input clear_crc_init_sel,
 input set_crc_init_sel,
 input [1:0] crc_poly_size,
 input clk,
 input rst_n
);

//Reset definitions
localparam RESET_BUFFER       = 32'hffffffff;
localparam RESET_BYTE         = 32'hffffffff;
localparam RESET_BF_SIZE      = 2'b10;
localparam RESET_SIZE         = 2'b10;
localparam RESET_CRC_INIT_SEL = 1'b0;
localparam RESET_CRC_INIT     = 32'hffffffff;
localparam RESET_CRC_OUT      = 32'h0;
localparam RESET_CRC_IDR      = 8'h0;
localparam RESET_CRC_POLY     = 32'h04c11db7;

//Parameters definitions
localparam BYTE_0 = 2'b00; 
localparam BYTE_1 = 2'b01; 
localparam BYTE_2 = 2'b10; 
localparam BYTE_3 = 2'b11; 

localparam POLY_SIZE_32 = 2'b00;
localparam POLY_SIZE_16 = 2'b01;
localparam POLY_SIZE_8  = 2'b10;
localparam POLY_SIZE_7  = 2'b11;

//Flops Definition
reg [31:0] buffer_ff;
reg [31:0] byte_ff;
reg [31:0] crc_init_ff;
reg [31:0] crc_out_ff;
reg [31:0] crc_poly_ff;
reg [ 7:0] crc_idr_ff;
reg [ 1:0] bf_size_ff;
reg [ 1:0] size_ff;
reg crc_init_sel_ff;

//internal signals definition
reg [7:0] crc_data_in;
reg crc_poly_size_7; 
reg crc_poly_size_8; 
reg crc_poly_size_16;
reg crc_poly_size_32;
wire [31:0] bus_reversed;
wire [31:0] crc_init_mux;
wire [31:0] crc_unit_out;
wire [31:0] crc_poly_size_in;
wire [31:0] crc_out_rev;
wire [ 7:0] byte0_in;
wire [ 7:0] byte1_in;
wire [ 7:0] byte2_in;
wire [ 7:0] byte3_in;
wire [ 7:0] byte0_mux_out;

//Instantiatin of bit_reversed module 
//to perform reversion fuctionality according with rev_type bits
bit_reversal 
#(
 .DATA_SIZE ( 32 )
)REV_IN
(
 .data_out ( bus_reversed    ),
 .data_in  ( bus_wr          ),
 .rev_type ( rev_in_type     )
);

//Definition of Registers buffer_ff and byte_ff
always @(posedge clk)
 begin
  if(!rst_n)
   begin
    buffer_ff  <= RESET_BUFFER; 
    byte_ff    <= RESET_BYTE; 
   end 
  else
   begin
    if(buffer_en)
     buffer_ff <= bus_reversed;
    //else
    // if(buffer_rst)
    //  buffer_ff <= RESET_BUFFER;

    if(byte_en)
     byte_ff <= buffer_ff;
   end
 end

//Definition of Registers bf_size_ff and size_ff
always @(posedge clk)
 begin
  if(!rst_n)
   begin
    bf_size_ff <= RESET_BF_SIZE;
    size_ff    <= RESET_SIZE;
   end 
  else
   begin
    if(buffer_en)
     bf_size_ff <= size_in;
    else
     if(buffer_rst)
      bf_size_ff <= RESET_BF_SIZE;

    if(byte_en)
     size_ff <= bf_size_ff;
   end
 end

//Mux to bypass size_ff
//This informatin is used by FSM to decide the size of the current operatin  
assign size_out = (bypass_size) ? bf_size_ff : size_ff;

assign byte0_in = byte_ff[ 7: 0];
assign byte1_in = byte_ff[15: 8];
assign byte2_in = byte_ff[23:16];
assign byte3_in = byte_ff[31:24];

//Mux to bypass byte0_ff
assign byte0_mux_out = (bypass_byte0) ? buffer_ff[7:0] : byte0_in;

//Mux to select input of CRC Unit
//TODO:AVALIAR A INFLUENCIA DA CODIFICACAO DA FSM NO SINAL BYTE_SEL 
always @(*)
 begin
  crc_data_in = 32'h0;
  case(byte_sel)
   BYTE_0: crc_data_in = byte0_mux_out;
   BYTE_1: crc_data_in = byte1_in;
   BYTE_2: crc_data_in = byte2_in;
   BYTE_3: crc_data_in = byte3_in;
   default:crc_data_in = 32'h0;
  endcase
 end

//Definition of Register crc_init_sel_ff
//This is a set/clear flop where the clear wins set
//This flop controls when the CRC operation is chained (crc_init_sel_ff = 1) or not
//In the chained operatin the current crc calculation depends of the previous crc calculated
//in the unchained operatin the current crc calculation depends of value of crc_init register
always @(posedge clk)
 begin
  if(!rst_n)
   crc_init_sel_ff <= RESET_CRC_INIT_SEL;
  else
   begin
    if(clear_crc_init_sel)
     crc_init_sel_ff <= 1'b0;
    else
     if(set_crc_init_sel)
      crc_init_sel_ff <= 1'b1;
   end
 end

//This register contains the init value used in non chained operatin of crc
assign crc_init_out = crc_init_ff;
always @(posedge clk)
 begin
  if(!rst_n)
   crc_init_ff <= RESET_CRC_INIT;
  else
   if(crc_init_en) 
    crc_init_ff <= bus_wr;
	 else
	   if(buffer_rst)
			 crc_init_ff <= RESET_CRC_INIT;
 end

//This register contains the final value of crc
always @(posedge clk)
 begin
  if(!rst_n)
   crc_out_ff <= RESET_CRC_OUT;
  else
   if(crc_out_en) 
    crc_out_ff <= crc_unit_out;
 end

//this is a general purpouse register
//see the spec for more details
assign crc_idr_out = crc_idr_ff;
always @(posedge clk)
 begin
  if(!rst_n)
   crc_idr_ff <= RESET_CRC_IDR;
  else
   if(crc_idr_en) 
    crc_idr_ff <= bus_wr[7:0];
 end

//This register contains the polynomial coefficients to crc calculation
assign crc_poly_out = crc_poly_ff;
always @(posedge clk)
 begin
  if(!rst_n)
   crc_poly_ff <= RESET_CRC_POLY;
  else
   if(crc_poly_en) 
    crc_poly_ff <= bus_wr;
 end

//Mux that define the type of operation (chained or not)    
assign crc_init_mux = (crc_init_sel_ff) ? crc_out_ff : crc_init_ff;

//Decoding of crc_poly_sizesignal
always @(*)
 begin
  crc_poly_size_7  = 1'b0;
  crc_poly_size_8  = 1'b0;
  crc_poly_size_16 = 1'b0;
  crc_poly_size_32 = 1'b0;
  case(crc_poly_size)
   POLY_SIZE_7 : crc_poly_size_7  = 1'b1;
   POLY_SIZE_8 : crc_poly_size_8  = 1'b1;
   POLY_SIZE_16: crc_poly_size_16 = 1'b1;
   POLY_SIZE_32: crc_poly_size_32 = 1'b1;
  endcase
 end

//This signal define the configurability of the CRC Unit
//In this case, the size of the polynomial can be: 7, 8, 16 or 32
assign crc_poly_size_in = {crc_poly_size_32, 15'h0, crc_poly_size_16, 7'h0, crc_poly_size_8, crc_poly_size_7, 6'h0};

//Instanciation of CRC Unit
//The module is configured to calculate CRC of 32 bits for 8 bits of data in parallel
crc_parallel
#(
 .CRC_SIZE   ( 32 ),
 .FRAME_SIZE ( 8  )
)CRC_UNIT
(
 .crc_out       ( crc_unit_out     ),
 .data_in       ( crc_data_in      ),
 .crc_init      ( crc_init_mux     ),
 .crc_poly      ( crc_poly_ff      ),
 .crc_poly_size ( crc_poly_size_in )
);

//crc_out_rev[31:0] = crc_out_ff[0:31]
//generate
// genvar i;
// for(i = 0; i < 32; i = i + 1)
//  assign crc_out_rev[i] = crc_out_ff[31 - i];
//endgenerate
assign crc_out_rev[0] = crc_out_ff[31 - 0];
assign crc_out_rev[1] = crc_out_ff[31 - 1];
assign crc_out_rev[2] = crc_out_ff[31 - 2];
assign crc_out_rev[3] = crc_out_ff[31 - 3];
assign crc_out_rev[4] = crc_out_ff[31 - 4];
assign crc_out_rev[5] = crc_out_ff[31 - 5];
assign crc_out_rev[6] = crc_out_ff[31 - 6];
assign crc_out_rev[7] = crc_out_ff[31 - 7];
assign crc_out_rev[8] = crc_out_ff[31 - 8];
assign crc_out_rev[9] = crc_out_ff[31 - 9];
assign crc_out_rev[10] = crc_out_ff[31 - 10];
assign crc_out_rev[11] = crc_out_ff[31 - 11];
assign crc_out_rev[12] = crc_out_ff[31 - 12];
assign crc_out_rev[13] = crc_out_ff[31 - 13];
assign crc_out_rev[14] = crc_out_ff[31 - 14];
assign crc_out_rev[15] = crc_out_ff[31 - 15];
assign crc_out_rev[16] = crc_out_ff[31 - 16];
assign crc_out_rev[17] = crc_out_ff[31 - 17];
assign crc_out_rev[18] = crc_out_ff[31 - 18];
assign crc_out_rev[19] = crc_out_ff[31 - 19];
assign crc_out_rev[20] = crc_out_ff[31 - 20];
assign crc_out_rev[21] = crc_out_ff[31 - 21];
assign crc_out_rev[22] = crc_out_ff[31 - 22];
assign crc_out_rev[23] = crc_out_ff[31 - 23];
assign crc_out_rev[24] = crc_out_ff[31 - 24];
assign crc_out_rev[25] = crc_out_ff[31 - 25];
assign crc_out_rev[26] = crc_out_ff[31 - 26];
assign crc_out_rev[27] = crc_out_ff[31 - 27];
assign crc_out_rev[28] = crc_out_ff[31 - 28];
assign crc_out_rev[29] = crc_out_ff[31 - 29];
assign crc_out_rev[30] = crc_out_ff[31 - 30];
assign crc_out_rev[31] = crc_out_ff[31 - 31];


assign crc_out = (rev_out_type) ? crc_out_rev : crc_out_ff;

endmodule
