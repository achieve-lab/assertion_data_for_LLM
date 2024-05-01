`include "RegCPUData.v"
module Reg_int (
input                   Reset                   ,
input                   Clk_reg                 ,
input                   CSB                     ,
input                   WRB                     ,
input           [15:0]  CD_in                   ,
output   reg    [15:0]  CD_out                  ,
input           [7:0]   CA                      ,
                        //Tx host interface 
output          [4:0]   Tx_Hwmark               ,
output          [4:0]   Tx_Lwmark               ,   
output                  pause_frame_send_en     ,               
output          [15:0]  pause_quanta_set        ,
output                  MAC_tx_add_en           ,               
output                  FullDuplex              ,
output          [3:0]   MaxRetry                ,
output          [5:0]   IFGset                  ,
output          [7:0]   MAC_tx_add_prom_data    ,
output          [2:0]   MAC_tx_add_prom_add     ,
output                  MAC_tx_add_prom_wr      ,
output                  tx_pause_en             ,
output                  xoff_cpu                ,
output                  xon_cpu                 ,
                        //Rx host interface     
output                  MAC_rx_add_chk_en       ,   
output          [7:0]   MAC_rx_add_prom_data    ,   
output          [2:0]   MAC_rx_add_prom_add     ,   
output                  MAC_rx_add_prom_wr      ,   
output                  broadcast_filter_en     ,
output          [15:0]  broadcast_bucket_depth              ,
output          [15:0]  broadcast_bucket_interval           ,
output                  RX_APPEND_CRC           ,
output          [4:0]   Rx_Hwmark           ,
output          [4:0]   Rx_Lwmark           ,
output                  CRC_chk_en              ,               
output          [5:0]   RX_IFG_SET              ,
output          [15:0]  RX_MAX_LENGTH           ,// 1518
output          [6:0]   RX_MIN_LENGTH           ,// 64
                        //RMON host interface
output          [5:0]   CPU_rd_addr             ,
output                  CPU_rd_apply            ,
input                   CPU_rd_grant            ,
input           [31:0]  CPU_rd_dout             ,
                        //Phy int host interface     
output                  Line_loop_en            ,
output          [2:0]   Speed                   ,
                        //MII to CPU 
//output          [7:0]   Divider                 ,// Divider for the host clock
//output          [15:0]  CtrlData                ,// Control Data (to be written to the PHY reg.)
//output          [4:0]   Rgad                    ,// Register Address (within the PHY)
//output          [4:0]   Fiad                    ,// PHY Address
//output                  NoPre                   ,// No Preamble (no 32-bit preamble)
//output                  WCtrlData               ,// Write Control Data operation
//output                  RStat                   ,// Read Status operation
//output                  ScanStat                ,// Scan Status operation
input                   Busy                    ,// Busy Signal
input                   LinkFail                ,// Link Integrity Signal
input                   Nvalid                  ,// Invalid Status (qualifier for the valid scan result)
input           [15:0]  Prsd                    ,// Read Status Data (data read from the PHY)
input                   WCtrlDataStart          ,// This signals resets the WCTRLDATA bit in the MIIM Command register
input                   RStatStart              ,// This signal resets the RSTAT BIT in the MIIM Command register
input                   UpdateMIIRX_DATAReg     // Updates MII RX_DATA register with read data
);
/*
RegOut,
CA_reg_set,
RegInit,

Reset,
Clk,
CWR_pulse,
CCSB,
CA_reg,
CD_in_reg
);
*/

    RegCPUData U_0_000(.RegOut(Tx_Hwmark)                ,.CA_reg_set(7'd000),.RegInit(16'h0009),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_001(.RegOut(Tx_Lwmark)                ,.CA_reg_set(7'd001),.RegInit(16'h0008),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_002(.RegOut(pause_frame_send_en)      ,.CA_reg_set(7'd002),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_003(.RegOut(pause_quanta_set)         ,.CA_reg_set(7'd003),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_004(.RegOut(IFGset)                   ,.CA_reg_set(7'd004),.RegInit(16'h000c),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_005(.RegOut(FullDuplex)               ,.CA_reg_set(7'd005),.RegInit(16'h0001),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_006(.RegOut(MaxRetry)                 ,.CA_reg_set(7'd006),.RegInit(16'h0002),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_007(.RegOut(MAC_tx_add_en)            ,.CA_reg_set(7'd007),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_008(.RegOut(MAC_tx_add_prom_data)     ,.CA_reg_set(7'd008),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_009(.RegOut(MAC_tx_add_prom_add)      ,.CA_reg_set(7'd009),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_010(.RegOut(MAC_tx_add_prom_wr)       ,.CA_reg_set(7'd010),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_011(.RegOut(tx_pause_en)              ,.CA_reg_set(7'd011),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_012(.RegOut(xoff_cpu)                 ,.CA_reg_set(7'd012),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_013(.RegOut(xon_cpu)                  ,.CA_reg_set(7'd013),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_014(.RegOut(MAC_rx_add_chk_en)        ,.CA_reg_set(7'd014),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_015(.RegOut(MAC_rx_add_prom_data)     ,.CA_reg_set(7'd015),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_016(.RegOut(MAC_rx_add_prom_add)      ,.CA_reg_set(7'd016),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_017(.RegOut(MAC_rx_add_prom_wr)       ,.CA_reg_set(7'd017),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_018(.RegOut(broadcast_filter_en)      ,.CA_reg_set(7'd018),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_019(.RegOut(broadcast_bucket_depth)   ,.CA_reg_set(7'd019),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_020(.RegOut(broadcast_bucket_interval),.CA_reg_set(7'd020),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_021(.RegOut(RX_APPEND_CRC)            ,.CA_reg_set(7'd021),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_022(.RegOut(Rx_Hwmark)                ,.CA_reg_set(7'd022),.RegInit(16'h001a),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_023(.RegOut(Rx_Lwmark)                ,.CA_reg_set(7'd023),.RegInit(16'h0010),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_024(.RegOut(CRC_chk_en)               ,.CA_reg_set(7'd024),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_025(.RegOut(RX_IFG_SET)               ,.CA_reg_set(7'd025),.RegInit(16'h000c),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_026(.RegOut(RX_MAX_LENGTH)            ,.CA_reg_set(7'd026),.RegInit(16'h2710),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_027(.RegOut(RX_MIN_LENGTH)            ,.CA_reg_set(7'd027),.RegInit(16'h0040),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_028(.RegOut(CPU_rd_addr)              ,.CA_reg_set(7'd028),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_029(.RegOut(CPU_rd_apply)             ,.CA_reg_set(7'd029),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
//  RegCPUData U_0_030(CPU_rd_grant             ,7'd030,16'h0000,Reset,Clk_reg,!WRB,CSB,CA,CD_in);
//  RegCPUData U_0_031(CPU_rd_dout_l            ,7'd031,16'h0000,Reset,Clk_reg,!WRB,CSB,CA,CD_in);
//  RegCPUData U_0_032(CPU_rd_dout_h            ,7'd032,16'h0000,Reset,Clk_reg,!WRB,CSB,CA,CD_in);
    RegCPUData U_0_033(.RegOut(Line_loop_en)             ,.CA_reg_set(7'd033),.RegInit(16'h0000),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));
    RegCPUData U_0_034(.RegOut(Speed)                    ,.CA_reg_set(7'd034),.RegInit(16'h0004),.Reset(Reset),.Clk(Clk_reg),.CWR_pulse(!WRB),.CCSB(CSB),.CA_reg(CA),.CD_in_reg(CD_in));

always @ (posedge Clk_reg or posedge Reset)
    if (Reset)
        CD_out  <=0;
    else if (!CSB&&WRB)
        case (CA[7:1])
                7'd00:    CD_out<=Tx_Hwmark                  ;
                7'd01:    CD_out<=Tx_Lwmark                  ; 
                7'd02:    CD_out<=pause_frame_send_en        ; 
                7'd03:    CD_out<=pause_quanta_set           ;
                7'd04:    CD_out<=IFGset                     ; 
                7'd05:    CD_out<=FullDuplex                 ; 
                7'd06:    CD_out<=MaxRetry                   ;
                7'd07:    CD_out<=MAC_tx_add_en              ; 
                7'd08:    CD_out<=MAC_tx_add_prom_data       ;
                7'd09:    CD_out<=MAC_tx_add_prom_add        ; 
                7'd10:    CD_out<=MAC_tx_add_prom_wr         ; 
                7'd11:    CD_out<=tx_pause_en                ; 
                7'd12:    CD_out<=xoff_cpu                   ;
                7'd13:    CD_out<=xon_cpu                    ; 
                7'd14:    CD_out<=MAC_rx_add_chk_en          ; 
                7'd15:    CD_out<=MAC_rx_add_prom_data       ;
                7'd16:    CD_out<=MAC_rx_add_prom_add        ; 
                7'd17:    CD_out<=MAC_rx_add_prom_wr         ; 
                7'd18:    CD_out<=broadcast_filter_en        ; 
                7'd19:    CD_out<=broadcast_bucket_depth     ;    
                7'd20:    CD_out<=broadcast_bucket_interval  ;   
                7'd21:    CD_out<=RX_APPEND_CRC              ; 
                7'd22:    CD_out<=Rx_Hwmark                  ; 
                7'd23:    CD_out<=Rx_Lwmark                  ; 
                7'd24:    CD_out<=CRC_chk_en                 ; 
                7'd25:    CD_out<=RX_IFG_SET                 ; 
                7'd26:    CD_out<=RX_MAX_LENGTH              ; 
                7'd27:    CD_out<=RX_MIN_LENGTH              ; 
                7'd28:    CD_out<=CPU_rd_addr                ; 
                7'd29:    CD_out<=CPU_rd_apply               ;
                7'd30:    CD_out<=CPU_rd_grant               ;
                7'd31:    CD_out<=CPU_rd_dout[15:0]          ; 
                7'd32:    CD_out<=CPU_rd_dout[31:16]         ;                 
                7'd33:    CD_out<=Line_loop_en               ;
                7'd34:    CD_out<=Speed                      ; 
                default:  CD_out<=0                          ;
        endcase


endmodule   
/*
module RegCPUData(
RegOut,   
CA_reg_set, 
RegInit,  
          
Reset,    
Clk,      
CWR_pulse,
CCSB,
CA_reg,     
CD_in_reg
);
output[15:0]    RegOut; 
input[6:0]      CA_reg_set;  
input[15:0]     RegInit;
//
input           Reset;
input           Clk;
input           CWR_pulse;
input           CCSB;
input[7:0]      CA_reg;
input[15:0]     CD_in_reg;
// 
reg[15:0]       RegOut; 

always  @(posedge Reset or posedge Clk)
    if(Reset)
        RegOut      <=RegInit;
    else if (CWR_pulse && !CCSB && CA_reg[7:1] ==CA_reg_set[6:0])  
        RegOut      <=CD_in_reg;

endmodule
*/
