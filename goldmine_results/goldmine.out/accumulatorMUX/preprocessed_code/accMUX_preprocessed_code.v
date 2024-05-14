////////////////////////////////////////////////////////////////////////////////////////////////
////                                                              							////
////                                                              							////
////  	This file is part of the project                 									////
////	"instruction_list_pipelined_processor_with_peripherals"								////
////                                                              							////
////  http://opencores.org/project,instruction_list_pipelined_processor_with_peripherals	////
////                                                              							////
////                                                              							////
//// 				 Author:                                                  				////
////      			- Mahesh Sukhdeo Palve													////
////																						////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////																						////
//// 											                 							////
////                                                              							////
//// 					This source file may be used and distributed without         		////
//// 					restriction provided that this copyright statement is not    		////
//// 					removed from the file and that any derivative work contains  		////
//// 					the original copyright notice and the associated disclaimer. 		////
////                                                              							////
//// 					This source file is free software; you can redistribute it   		////
//// 					and/or modify it under the terms of the GNU Lesser General   		////
//// 					Public License as published by the Free Software Foundation; 		////
////					either version 2.1 of the License, or (at your option) any   		////
//// 					later version.                                               		////
////                                                             							////
//// 					This source is distributed in the hope that it will be       		////
//// 					useful, but WITHOUT ANY WARRANTY; without even the implied   		////
//// 					warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      		////
//// 					PURPOSE.  See the GNU Lesser General Public License for more 		////
//// 					details.                                                     		////
////                                                              							////
//// 					You should have received a copy of the GNU Lesser General    		////
//// 					Public License along with this source; if not, download it   		////
//// 					from http://www.opencores.org/lgpl.shtml                     		////
////                                                              							////
////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps////////////////////////////////////////////////////////////////////////////////////////////////
////                                                              							////
////                                                              							////
////  	This file is part of the project                 									////
////	"instruction_list_pipelined_processor_with_peripherals"								////
////                                                              							////
////  http://opencores.org/project,instruction_list_pipelined_processor_with_peripherals	////
////                                                              							////
////                                                              							////
//// 				 Author:                                                  				////
////      			- Mahesh Sukhdeo Palve													////
////																						////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////																						////
//// 											                 							////
////                                                              							////
//// 					This source file may be used and distributed without         		////
//// 					restriction provided that this copyright statement is not    		////
//// 					removed from the file and that any derivative work contains  		////
//// 					the original copyright notice and the associated disclaimer. 		////
////                                                              							////
//// 					This source file is free software; you can redistribute it   		////
//// 					and/or modify it under the terms of the GNU Lesser General   		////
//// 					Public License as published by the Free Software Foundation; 		////
////					either version 2.1 of the License, or (at your option) any   		////
//// 					later version.                                               		////
////                                                             							////
//// 					This source is distributed in the hope that it will be       		////
//// 					useful, but WITHOUT ANY WARRANTY; without even the implied   		////
//// 					warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      		////
//// 					PURPOSE.  See the GNU Lesser General Public License for more 		////
//// 					details.                                                     		////
////                                                              							////
//// 					You should have received a copy of the GNU Lesser General    		////
//// 					Public License along with this source; if not, download it   		////
//// 					from http://www.opencores.org/lgpl.shtml                     		////
////                                                              							////
////////////////////////////////////////////////////////////////////////////////////////////////

// 8-bit Pipelined Processor defines



// program counter & instruction register






// control unit


























//`define		SPIxFER				`instOpCodeLen'b11001
//`define		SPIstat				`instOpCodeLen'b11010
//`define		SPIwBUF				`instOpCodeLen'b11011
//`define		SPIrBUF				`instOpCodeLen'b11100

// alu opcodes















// bit RAM



// byte RAM




// input register



// output register



// accumulator multiplexer








// operand2 multiplexer









//-----------------------------------------------------------------------------------------------------

// peripheral defines




//-----------------------------------------------------------------------------------------------------

// Timer-Counter














//-----------------------------------------------------------------------------------------------------

// UART








module accumulatorMUX (accMuxSel, immData, aluOut 
								
								, tcLoadIn, tcAccIn
								
								
								, uartDataIn, uartStatIn
								
								, accMuxOut
								);

	input [4-1:0]	accMuxSel;
	input [8-1:0]		immData;
	input	[7:0]	aluOut;
	
	input [7:0] tcLoadIn, tcAccIn;
	
	
	input [7:0] uartDataIn, uartStatIn;
	
	
	output [7:0]	accMuxOut;
	
	reg [7:0]	accMuxOut;
	
	
	always @ *
	begin
	
		case (accMuxSel)
		
			4'b0	:	begin
										accMuxOut = immData;
										end
								
			4'b1	:	begin
										accMuxOut = aluOut;
										end
			
			
			4'b10	:	begin
										accMuxOut = tcLoadIn;
										end
			
			4'b11	:	begin
										accMuxOut = tcAccIn;
										end
			
			
			
			4'b100	:		begin
										accMuxOut = uartDataIn;
										end
										
			4'b101	:		begin
										accMuxOut = uartStatIn;
										end
			
			
			
			
			default		:	begin
								accMuxOut = 8'bzzzzzzzz;
								end
								
		endcase
	
	end


endmodule
