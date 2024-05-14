module ibex_compressed_decoder (
	instr_i,
	instr_o,
	is_compressed_o,
	illegal_instr_o
);
	input wire [31:0] instr_i;
	output reg [31:0] instr_o;
	output wire is_compressed_o;
	output reg illegal_instr_o;
localparam   OPCODE_LOAD     = 7'h03;
localparam   OPCODE_MISC_MEM = 7'h0f;
localparam   OPCODE_OP_IMM   = 7'h13;
localparam   OPCODE_AUIPC    = 7'h17;
localparam   OPCODE_STORE    = 7'h23;
localparam   OPCODE_OP       = 7'h33;
localparam   OPCODE_LUI      = 7'h37;
localparam   OPCODE_BRANCH   = 7'h63;
localparam   OPCODE_JALR     = 7'h67;
localparam   OPCODE_JAL      = 7'h6f;
localparam   OPCODE_SYSTEM   = 7'h73;


////////////////////
// ALU operations //
////////////////////

  // Arithmetics
localparam   ALU_ADD = 5'h0;
localparam   ALU_SUB = 5'h1;

  // Logics
localparam   ALU_XOR = 5'h2;
localparam   ALU_OR = 5'h3;
localparam   ALU_AND = 5'h4;

  // Shifts
localparam   ALU_SRA = 5'h5;
localparam   ALU_SRL = 5'h6;
localparam   ALU_SLL = 5'h7;

  // Comparisons
localparam   ALU_LT = 5'h8;
localparam   ALU_LTU = 5'h9;
localparam   ALU_GE = 5'ha;
localparam   ALU_GEU = 5'hb;
localparam   ALU_EQ = 5'hc;
localparam   ALU_NE = 5'hd;

  // Set lower than
localparam   ALU_SLT = 5'he;
localparam   ALU_SLTU = 5'hf;

  // Multiplier/divider
localparam   MD_OP_MULL = 2'h0;
localparam   MD_OP_MULH = 2'h1;
localparam   MD_OP_DIV = 2'h2;
localparam   MD_OP_REM = 2'h3;


//////////////////////////////////
// Control and status registers //
//////////////////////////////////

// CSR operations
localparam   CSR_OP_READ = 2'h0;
localparam   CSR_OP_WRITE = 2'h1;
localparam   CSR_OP_SET = 2'h2;
localparam   CSR_OP_CLEAR = 2'h3;


// Privileged mode
localparam   PRIV_LVL_M = 2'b11;
localparam   PRIV_LVL_H = 2'b10;
localparam   PRIV_LVL_S = 2'b01;
localparam   PRIV_LVL_U = 2'b00;

// Constants for the dcsr.xdebugver fields
localparam    XDEBUGVER_NO     = 4'd0; // no external debug support
localparam    XDEBUGVER_STD    = 4'd4; // external debug according to RISC-V debug spec
localparam    XDEBUGVER_NONSTD = 4'd15; // debug not conforming to RISC-V debug spec


//////////////
// ID stage //
//////////////

// Operand a selection
localparam   OP_A_REG_A = 2'h0;
localparam   OP_A_FWD = 2'h1;
localparam   OP_A_CURRPC = 2'h2;
localparam   OP_A_IMM = 2'h3;

// Immediate a selection
localparam   IMM_A_Z = 1'b0;
localparam   IMM_A_ZERO = 1'b1;

// Operand b selection
localparam   OP_B_REG_B = 1'b0;
localparam   OP_B_IMM = 1'b1;

// Immediate b selection
localparam   IMM_B_I = 3'h0;
localparam   IMM_B_S = 3'h1;
localparam   IMM_B_B = 3'h2;
localparam   IMM_B_U = 3'h3;
localparam   IMM_B_J = 3'h4;
localparam   IMM_B_INCR_PC = 3'h4;
localparam   IMM_B_INCR_ADDR = 3'h5;

// Regfile write data selection
localparam   RF_WD_LSU = 2'h0;
localparam   RF_WD_EX = 2'h1;
localparam   RF_WD_CSR = 2'h2;

//////////////
// IF stage //
//////////////

// PC mux selection
localparam   PC_BOOT = 3'h0;
localparam   PC_JUMP = 3'h1;
localparam   PC_EXC = 3'h2;
localparam   PC_ERET = 3'h3;
localparam   PC_DRET = 3'h4;

// Exception PC mux selection
localparam   EXC_PC_EXC = 2'h0;
localparam   EXC_PC_IRQ = 2'h1;
localparam   EXC_PC_DBD = 2'h2;
localparam   EXC_PC_DBG_EXC = 2'h3; // Exception while in debug mode

// Exception cause
localparam   EXC_CAUSE_IRQ_SOFTWARE_M     = {1'b1, 5'd03};
localparam   EXC_CAUSE_IRQ_TIMER_M        = {1'b1, 5'd07};
localparam   EXC_CAUSE_IRQ_EXTERNAL_M     = {1'b1, 5'd11};
  // EXC_CAUSE_IRQ_FAST_0      = {1'b1, 5'd16};
  // EXC_CAUSE_IRQ_FAST_14     = {1'b1, 5'd30};
localparam   EXC_CAUSE_IRQ_NM             = {1'b1, 5'd31}; // == EXC_CAUSE_IRQ_FAST_15
localparam   EXC_CAUSE_INSN_ADDR_MISA     = {1'b0, 5'd00};
localparam   EXC_CAUSE_INSTR_ACCESS_FAULT = {1'b0, 5'd01};
localparam   EXC_CAUSE_ILLEGAL_INSN       = {1'b0, 5'd02};
localparam   EXC_CAUSE_BREAKPOINT         = {1'b0, 5'd03};
localparam   EXC_CAUSE_LOAD_ACCESS_FAULT  = {1'b0, 5'd05};
localparam   EXC_CAUSE_STORE_ACCESS_FAULT = {1'b0, 5'd07};
localparam   EXC_CAUSE_ECALL_UMODE        = {1'b0, 5'd08};
localparam   EXC_CAUSE_ECALL_MMODE        = {1'b0, 5'd11};

// Debug cause
localparam   DBG_CAUSE_NONE    = 3'h0;
localparam   DBG_CAUSE_EBREAK  = 3'h1;
localparam   DBG_CAUSE_TRIGGER = 3'h2;
localparam   DBG_CAUSE_HALTREQ = 3'h3;
localparam   DBG_CAUSE_STEP    = 3'h4;

// PMP constants
parameter   PMP_MAX_REGIONS      = 16;
parameter   PMP_CFG_W            = 8;

// PMP acces type
parameter   PMP_I = 0;
parameter   PMP_D = 1;

localparam   PMP_ACC_EXEC    = 2'b00;
localparam   PMP_ACC_WRITE   = 2'b01;
localparam   PMP_ACC_READ    = 2'b10;

// PMP cfg structures
localparam   PMP_MODE_OFF   = 2'b00;
localparam   PMP_MODE_TOR   = 2'b01;
localparam   PMP_MODE_NA4   = 2'b10;
localparam   PMP_MODE_NAPOT = 2'b11;

//typedef struct packed {
//  logic          lock;
//  pmp_cfg_mode_e mode;
//  logic          exec;
//  logic          write;
//  logic          read;

// CSRs
  // Machine information
localparam   CSR_MHARTID   = 12'hF14;

  // Machine trap setup
localparam   CSR_MSTATUS   = 12'h300;
localparam   CSR_MISA      = 12'h301;
localparam   CSR_MIE       = 12'h304;
localparam   CSR_MTVEC     = 12'h305;

  // Machine trap handling
localparam   CSR_MSCRATCH  = 12'h340;
localparam   CSR_MEPC      = 12'h341;
localparam   CSR_MCAUSE    = 12'h342;
localparam   CSR_MTVAL     = 12'h343;
localparam   CSR_MIP       = 12'h344;

  // Physical memory protection
localparam   CSR_PMPCFG0   = 12'h3A0;
localparam   CSR_PMPCFG1   = 12'h3A1;
localparam   CSR_PMPCFG2   = 12'h3A2;
localparam   CSR_PMPCFG3   = 12'h3A3;
localparam   CSR_PMPADDR0  = 12'h3B0;
localparam   CSR_PMPADDR1  = 12'h3B1;
localparam   CSR_PMPADDR2  = 12'h3B2;
localparam   CSR_PMPADDR3  = 12'h3B3;
localparam   CSR_PMPADDR4  = 12'h3B4;
localparam   CSR_PMPADDR5  = 12'h3B5;
localparam   CSR_PMPADDR6  = 12'h3B6;
localparam   CSR_PMPADDR7  = 12'h3B7;
localparam   CSR_PMPADDR8  = 12'h3B8;
localparam   CSR_PMPADDR9  = 12'h3B9;
localparam   CSR_PMPADDR10 = 12'h3BA;
localparam   CSR_PMPADDR11 = 12'h3BB;
localparam   CSR_PMPADDR12 = 12'h3BC;
localparam   CSR_PMPADDR13 = 12'h3BD;
localparam   CSR_PMPADDR14 = 12'h3BE;
localparam   CSR_PMPADDR15 = 12'h3BF;

  // Debug/trace
localparam   CSR_DCSR      = 12'h7b0;
localparam   CSR_DPC       = 12'h7b1;

  // Debug
localparam   CSR_DSCRATCH0 = 12'h7b2; // optional
localparam   CSR_DSCRATCH1 = 12'h7b3; // optional

  // Machine Counter/Timers
localparam   CSR_MCOUNTINHIBIT  = 12'h320;
localparam   CSR_MHPMEVENT3     = 12'h323;
localparam   CSR_MHPMEVENT4     = 12'h324;
localparam   CSR_MHPMEVENT5     = 12'h325;
localparam   CSR_MHPMEVENT6     = 12'h326;
localparam   CSR_MHPMEVENT7     = 12'h327;
localparam   CSR_MHPMEVENT8     = 12'h328;
localparam   CSR_MHPMEVENT9     = 12'h329;
localparam   CSR_MHPMEVENT10    = 12'h32A;
localparam   CSR_MHPMEVENT11    = 12'h32B;
localparam   CSR_MHPMEVENT12    = 12'h32C;
localparam   CSR_MHPMEVENT13    = 12'h32D;
localparam   CSR_MHPMEVENT14    = 12'h32E;
localparam   CSR_MHPMEVENT15    = 12'h32F;
localparam   CSR_MHPMEVENT16    = 12'h330;
localparam   CSR_MHPMEVENT17    = 12'h331;
localparam   CSR_MHPMEVENT18    = 12'h332;
localparam   CSR_MHPMEVENT19    = 12'h333;
localparam   CSR_MHPMEVENT20    = 12'h334;
localparam   CSR_MHPMEVENT21    = 12'h335;
localparam   CSR_MHPMEVENT22    = 12'h336;
localparam   CSR_MHPMEVENT23    = 12'h337;
localparam   CSR_MHPMEVENT24    = 12'h338;
localparam   CSR_MHPMEVENT25    = 12'h339;
localparam   CSR_MHPMEVENT26    = 12'h33A;
localparam   CSR_MHPMEVENT27    = 12'h33B;
localparam   CSR_MHPMEVENT28    = 12'h33C;
localparam   CSR_MHPMEVENT29    = 12'h33D;
localparam   CSR_MHPMEVENT30    = 12'h33E;
localparam   CSR_MHPMEVENT31    = 12'h33F;
localparam   CSR_MCYCLE         = 12'hB00;
localparam   CSR_MINSTRET       = 12'hB02;
localparam   CSR_MHPMCOUNTER3   = 12'hB03;
localparam   CSR_MHPMCOUNTER4   = 12'hB04;
localparam   CSR_MHPMCOUNTER5   = 12'hB05;
localparam   CSR_MHPMCOUNTER6   = 12'hB06;
localparam   CSR_MHPMCOUNTER7   = 12'hB07;
localparam   CSR_MHPMCOUNTER8   = 12'hB08;
localparam   CSR_MHPMCOUNTER9   = 12'hB09;
localparam   CSR_MHPMCOUNTER10  = 12'hB0A;
localparam   CSR_MHPMCOUNTER11  = 12'hB0B;
localparam   CSR_MHPMCOUNTER12  = 12'hB0C;
localparam   CSR_MHPMCOUNTER13  = 12'hB0D;
localparam   CSR_MHPMCOUNTER14  = 12'hB0E;
localparam   CSR_MHPMCOUNTER15  = 12'hB0F;
localparam   CSR_MHPMCOUNTER16  = 12'hB10;
localparam   CSR_MHPMCOUNTER17  = 12'hB11;
localparam   CSR_MHPMCOUNTER18  = 12'hB12;
localparam   CSR_MHPMCOUNTER19  = 12'hB13;
localparam   CSR_MHPMCOUNTER20  = 12'hB14;
localparam   CSR_MHPMCOUNTER21  = 12'hB15;
localparam   CSR_MHPMCOUNTER22  = 12'hB16;
localparam   CSR_MHPMCOUNTER23  = 12'hB17;
localparam   CSR_MHPMCOUNTER24  = 12'hB18;
localparam   CSR_MHPMCOUNTER25  = 12'hB19;
localparam   CSR_MHPMCOUNTER26  = 12'hB1A;
localparam   CSR_MHPMCOUNTER27  = 12'hB1B;
localparam   CSR_MHPMCOUNTER28  = 12'hB1C;
localparam   CSR_MHPMCOUNTER29  = 12'hB1D;
localparam   CSR_MHPMCOUNTER30  = 12'hB1E;
localparam   CSR_MHPMCOUNTER31  = 12'hB1F;
localparam   CSR_MCYCLEH        = 12'hB80;
localparam   CSR_MINSTRETH      = 12'hB82;
localparam   CSR_MHPMCOUNTER3H  = 12'hB83;
localparam   CSR_MHPMCOUNTER4H  = 12'hB84;
localparam   CSR_MHPMCOUNTER5H  = 12'hB85;
localparam   CSR_MHPMCOUNTER6H  = 12'hB86;
localparam   CSR_MHPMCOUNTER7H  = 12'hB87;
localparam   CSR_MHPMCOUNTER8H  = 12'hB88;
localparam   CSR_MHPMCOUNTER9H  = 12'hB89;
localparam   CSR_MHPMCOUNTER10H = 12'hB8A;
localparam   CSR_MHPMCOUNTER11H = 12'hB8B;
localparam   CSR_MHPMCOUNTER12H = 12'hB8C;
localparam   CSR_MHPMCOUNTER13H = 12'hB8D;
localparam   CSR_MHPMCOUNTER14H = 12'hB8E;
localparam   CSR_MHPMCOUNTER15H = 12'hB8F;
localparam   CSR_MHPMCOUNTER16H = 12'hB90;
localparam   CSR_MHPMCOUNTER17H = 12'hB91;
localparam   CSR_MHPMCOUNTER18H = 12'hB92;
localparam   CSR_MHPMCOUNTER19H = 12'hB93;
localparam   CSR_MHPMCOUNTER20H = 12'hB94;
localparam   CSR_MHPMCOUNTER21H = 12'hB95;
localparam   CSR_MHPMCOUNTER22H = 12'hB96;
localparam   CSR_MHPMCOUNTER23H = 12'hB97;
localparam   CSR_MHPMCOUNTER24H = 12'hB98;
localparam   CSR_MHPMCOUNTER25H = 12'hB99;
localparam   CSR_MHPMCOUNTER26H = 12'hB9A;
localparam   CSR_MHPMCOUNTER27H = 12'hB9B;
localparam   CSR_MHPMCOUNTER28H = 12'hB9C;
localparam   CSR_MHPMCOUNTER29H = 12'hB9D;
localparam   CSR_MHPMCOUNTER30H = 12'hB9E;
localparam   CSR_MHPMCOUNTER31H = 12'hB9F;

// CSR pmp-related offsets
parameter [11:0] CSR_OFF_PMP_CFG  = 12'h3A0; // pmp_cfg  @ 12'h3a0 - 12'h3a3
parameter [11:0] CSR_OFF_PMP_ADDR = 12'h3B0; // pmp_addr @ 12'h3b0 - 12'h3bf

// CSR status bits
parameter   CSR_MSTATUS_MIE_BIT      = 3;
parameter   CSR_MSTATUS_MPIE_BIT     = 7;
parameter   CSR_MSTATUS_MPP_BIT_LOW  = 11;
parameter   CSR_MSTATUS_MPP_BIT_HIGH = 12;
parameter   CSR_MSTATUS_MPRV_BIT     = 17;
parameter   CSR_MSTATUS_TW_BIT       = 21;

// CSR errupt pending/enable  int bits
parameter   CSR_MSIX_BIT      = 3;
parameter   CSR_MTIX_BIT      = 7;
parameter   CSR_MEIX_BIT      = 11;
parameter   CSR_MFIX_BIT_LOW  = 16;
parameter   CSR_MFIX_BIT_HIGH = 30;

	always @(*) begin
		illegal_instr_o = 1'b0;
		instr_o = 1'bX;
		case (instr_i[1:0])
			2'b00:
				case (instr_i[15:13])
					3'b000: begin
						instr_o = {2'b0, instr_i[10:7], instr_i[12:11], instr_i[5], instr_i[6], 2'b00, 5'h02, 3'b000, 2'b01, instr_i[4:2], OPCODE_OP_IMM};
						if ((instr_i[12:5] == 8'b0))
							illegal_instr_o = 1'b1;
					end
					3'b010: instr_o = {5'b0, instr_i[5], instr_i[12:10], instr_i[6], 2'b00, 2'b01, instr_i[9:7], 3'b010, 2'b01, instr_i[4:2], OPCODE_LOAD};
					3'b110: instr_o = {5'b0, instr_i[5], instr_i[12], 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b010, instr_i[11:10], instr_i[6], 2'b00, OPCODE_STORE};
					default: illegal_instr_o = 1'b1;
				endcase
			2'b01:
				case (instr_i[15:13])
					3'b000: instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], instr_i[11:7], 3'b0, instr_i[11:7], OPCODE_OP_IMM};
					3'b001, 3'b101: instr_o = {instr_i[12], instr_i[8], instr_i[10:9], instr_i[6], instr_i[7], instr_i[2], instr_i[11], instr_i[5:3], {9 {instr_i[12]}}, 4'b0, ~instr_i[15], OPCODE_JAL};
					3'b010: instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 5'b0, 3'b0, instr_i[11:7], OPCODE_OP_IMM};
					3'b011: begin
						instr_o = {{15 {instr_i[12]}}, instr_i[6:2], instr_i[11:7], OPCODE_LUI};
						if ((instr_i[11:7] == 5'h02))
							instr_o = {{3 {instr_i[12]}}, instr_i[4:3], instr_i[5], instr_i[2], instr_i[6], 4'b0, 5'h02, 3'b000, 5'h02, OPCODE_OP_IMM};
						if (({instr_i[12], instr_i[6:2]} == 6'b0))
							illegal_instr_o = 1'b1;
					end
					3'b100:
						case (instr_i[11:10])
							2'b00, 2'b01: begin
								instr_o = {1'b0, instr_i[10], 5'b0, instr_i[6:2], 2'b01, instr_i[9:7], 3'b101, 2'b01, instr_i[9:7], OPCODE_OP_IMM};
								if ((instr_i[12] == 1'b1))
									illegal_instr_o = 1'b1;
							end
							2'b10: instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 2'b01, instr_i[9:7], 3'b111, 2'b01, instr_i[9:7], OPCODE_OP_IMM};
							2'b11:
								case ({instr_i[12], instr_i[6:5]})
									3'b000: instr_o = {2'b01, 5'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b000, 2'b01, instr_i[9:7], OPCODE_OP};
									3'b001: instr_o = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b100, 2'b01, instr_i[9:7], OPCODE_OP};
									3'b010: instr_o = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b110, 2'b01, instr_i[9:7], OPCODE_OP};
									3'b011: instr_o = {7'b0, 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b111, 2'b01, instr_i[9:7], OPCODE_OP};
									3'b100, 3'b101, 3'b110, 3'b111: illegal_instr_o = 1'b1;
									default: illegal_instr_o = 1'bX;
								endcase
							default: illegal_instr_o = 1'bX;
						endcase
					3'b110, 3'b111: instr_o = {{4 {instr_i[12]}}, instr_i[6:5], instr_i[2], 5'b0, 2'b01, instr_i[9:7], 2'b00, instr_i[13], instr_i[11:10], instr_i[4:3], instr_i[12], OPCODE_BRANCH};
					default: illegal_instr_o = 1'bX;
				endcase
			2'b10:
				case (instr_i[15:13])
					3'b000: begin
						instr_o = {7'b0, instr_i[6:2], instr_i[11:7], 3'b001, instr_i[11:7], OPCODE_OP_IMM};
						if ((instr_i[12] == 1'b1))
							illegal_instr_o = 1'b1;
					end
					3'b010: begin
						instr_o = {4'b0, instr_i[3:2], instr_i[12], instr_i[6:4], 2'b00, 5'h02, 3'b010, instr_i[11:7], OPCODE_LOAD};
						if ((instr_i[11:7] == 5'b0))
							illegal_instr_o = 1'b1;
					end
					3'b100:
						if ((instr_i[12] == 1'b0)) begin
							if ((instr_i[6:2] != 5'b0))
								instr_o = {7'b0, instr_i[6:2], 5'b0, 3'b0, instr_i[11:7], OPCODE_OP};
							else begin
								instr_o = {12'b0, instr_i[11:7], 3'b0, 5'b0, OPCODE_JALR};
								if ((instr_i[11:7] == 5'b0))
									illegal_instr_o = 1'b1;
							end
						end
						else if ((instr_i[6:2] != 5'b0))
							instr_o = {7'b0, instr_i[6:2], instr_i[11:7], 3'b0, instr_i[11:7], OPCODE_OP};
						else if ((instr_i[11:7] == 5'b0))
							instr_o = 32'h00_10_00_73;
						else
							instr_o = {12'b0, instr_i[11:7], 3'b000, 5'b00001, OPCODE_JALR};
					3'b110: instr_o = {4'b0, instr_i[8:7], instr_i[12], instr_i[6:2], 5'h02, 3'b010, instr_i[11:9], 2'b00, OPCODE_STORE};
					3'b001, 3'b011, 3'b101, 3'b111: illegal_instr_o = 1'b1;
					default: illegal_instr_o = 1'bX;
				endcase
			default: instr_o = instr_i;
		endcase
	end
	assign is_compressed_o = (instr_i[1:0] != 2'b11);
endmodule
