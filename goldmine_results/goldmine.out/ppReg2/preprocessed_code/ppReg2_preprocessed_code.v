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








module ppReg2 (clk,
					accMuxSelIn, accEnIn, op2MuxSelIn, aluEnIn, aluOpcodeIn,
					bitRamEnIn, bitRamRwIn, byteRamEnIn, byteRamRwIn,
					outputRwIn
					
					
						, entypeEnIn, tcAccReadIn, tcResetEnIn, tcPresetEnIn
					
					
					
						, uartReadIn, uartWriteIn
					
					
					, fieldIn
					, accMuxSelOut, accEnOut, op2MuxSelOut, aluEnOut, aluOpcodeOut,
					bitRamEnOut, bitRamRwOut, byteRamEnOut, byteRamRwOut,
					outputRwOut
					
					
						, entypeEnOut, tcAccReadOut, tcResetEnOut, tcPresetEnOut
					
					
					
						, uartReadOut, uartWriteOut
					
					
					, fieldOut
					);

	input clk;
	
	input [4-1:0]	accMuxSelIn;
	input accEnIn;
	input [4-1:0]	op2MuxSelIn;
	input aluEnIn;
	input [4-1:0] aluOpcodeIn;
	input bitRamEnIn, bitRamRwIn, byteRamEnIn, byteRamRwIn;
	input outputRwIn;
	
	input entypeEnIn, tcAccReadIn, tcResetEnIn, tcPresetEnIn;
	
	
	input uartReadIn, uartWriteIn;
	
	input [10-1:0] fieldIn;

	
	output [4-1:0]	accMuxSelOut;
	output accEnOut;
	output [4-1:0]	op2MuxSelOut;
	output aluEnOut;
	output [4-1:0] aluOpcodeOut;
	output bitRamEnOut, bitRamRwOut, byteRamEnOut, byteRamRwOut;
	output outputRwOut;
	
	output entypeEnOut, tcAccReadOut, tcResetEnOut, tcPresetEnOut;
	
	
	output uartReadOut, uartWriteOut;
	
	
	output [10-1:0] fieldOut;
	
	reg [4-1:0]	accMuxSelOut;
	reg accEnOut;
	reg [4-1:0]	op2MuxSelOut;
	reg aluEnOut;
	reg [4-1:0] aluOpcodeOut;
	reg bitRamEnOut, bitRamRwOut, byteRamEnOut, byteRamRwOut;
	reg outputRwOut;
	
	reg entypeEnOut, tcAccReadOut, tcResetEnOut, tcPresetEnOut;
	
	
	reg uartReadOut, uartWriteOut;
	

	reg [10-1:0] fieldOut;



	always @ (posedge clk)
	begin
	
	fieldOut = fieldIn;
	
	accMuxSelOut = accMuxSelIn;
	accEnOut = accEnIn;
	op2MuxSelOut = op2MuxSelIn;
	aluEnOut = aluEnIn;
	aluOpcodeOut = aluOpcodeIn;
	bitRamEnOut = bitRamEnIn;
	bitRamRwOut = bitRamRwIn;
	byteRamEnOut = byteRamEnIn;
	byteRamRwOut = byteRamRwIn;
	outputRwOut = outputRwIn;
	
	

	entypeEnOut = entypeEnIn;
	tcAccReadOut = tcAccReadIn;
	tcResetEnOut = tcResetEnIn;
	tcPresetEnOut = tcPresetEnIn;
	
	


	

	uartReadOut = uartReadIn;
	uartWriteOut = uartWriteIn;

	

	
	end


endmodule
