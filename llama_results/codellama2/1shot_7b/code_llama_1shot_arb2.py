import os
import sys
import accelerate
import json
import torch
import transformers

os.environ['HF_TOKEN']="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"
os.environ['HUGGINGFACEHUB_API_TOKEN']="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"
os.environ['HF_HOME'] = "/scratch/bcfk/vpulavarthi/cache"
os.environ["HF_HUB_CACHE"] = '/scratch/bcfk/vpulavarthi/cache'

with open("../../verilog_designs.json", "r") as f: # read the data from json file
    json_data = f.read()

data = json.loads(json_data) # convert the json data

model_name = "meta-llama/CodeLlama-7b-hf"

pipeline = transformers.pipeline(
    "text-generation",
    model=model_name,
    model_kwargs={
        "torch_dtype": torch.float32,
        "quantization_config": {"load_in_4bit": True},
        "low_cpu_mem_usage": True,
    },
    device_map = "auto",
    max_new_tokens = 1024
)

for i in data:
    prompt = """You are an expert in SystemVerilog Assertions.
    Your task is to generate the list of assertions to the given verilog design. An example is shown below. Generate only the list of assertions for the test program with no additional text.
    Program 1: " module arb2(clk, rst, req1, req2, gnt1, gnt2); input clk, rst; input req1, req2; output gnt1, gnt2; reg state; reg gnt1, gnt2; always @ (posedge clk or posedge rst) if (rst) state <= 0; else state <= gnt1; always @ (*) if (state) begin gnt1 = req1 & ~req2; gnt2 = req2; end else begin gnt1 = req1; gnt2 = req2 & ~req1; end endmodule"
    Assertions 1: (req1 == 1 & req2 == 0) |-> (gnt1 == 1); (req1 == 1 & state == 0) |-> (gnt1 == 1); (req1 == 0) |-> (gnt1 == 0); (state == 1 & req2 == 1) |-> (gnt1 == 0); (gnt2) |-> (req2); (gnt1) |-> (req1); (rst) ##4 (1) |-> gnt1 
    Test Program:
        """ + f"""{i["verilog_design"]}\n""" + "Test Assertions:"
    seq = pipeline(prompt)
    print(prompt)
    response = seq[0]["generated_text"][len(prompt):]
    print(response)
    i["assertions_codellama_7b_1shot"] = response

final_data = json.dumps(data, indent = 4)

with open('final_data_codellama_7b_1shot.json','w') as file:
    file.write(final_data)
    file.close()

#from peft import (
#    LoraConfig,
#    get_peft_model,
#    get_peft_model_state_dict,
#    prepare_model_for_int8_training,
#    set_peft_model_state_dict,
#)
#from transformers import AutoTokenizer, AutoModelForCausalLM, TrainingArguments, Trainer, DataCollatorForSeq2Seq
#
#base_model = "meta-llama/CodeLlama-70b-hf"
#model = AutoModelForCausalLM.from_pretrained(
#    base_model,
#    load_in_8bit=True,
#    torch_dtype=torch.float16,
#    device_map="auto",
#    #max_seq_len = 4096,
#)
#tokenizer = AutoTokenizer.from_pretrained("codellama/CodeLlama-7b-hf") # choosing right properties and the model 
#
#
#for i in data:
#    eval_prompt = """
#Your task is to generate assertions to the given test verilog HDL design based on the examples below.
#Program 1:
#module arb2(clk, rst, req1, req2, gnt1, gnt2);input clk, rst;input req1, req2;output gnt1, gnt2;reg state;reg gnt1, gnt2;always @ (posedge clk or posedge rst) if (rst)  state <= 0; else  state <= gnt1;always @ (*) if (state) begin  gnt1 = req1 & ~req2;  gnt2 = req2; end else begin  gnt1 = req1;  gnt2 = req2 & ~req1; endendmodule
#Assertions 1:
#(req1 == 1 & req2 == 0) |-> (gnt1 == 1);(req1 == 1 & state == 0) |-> (gnt1 == 1); (req1 == 0) |-> (gnt1 == 0);;(state == 1 & req2 == 1) |-> (gnt1 == 0);(gnt2) |-> (req2);(gnt1) |-> (req1);(rst) ##4 (1) |-> gnt1
#Test Program:
#""" + f'{i["verilog_design"]}\n' + "Test Assertions:"
#
#
#    model_input = tokenizer(eval_prompt, return_tensors="pt").to("cuda")
#
#    model.eval()
#    with torch.no_grad():
#        print(tokenizer.decode(model.generate(**model_input, max_new_tokens=1024)[0], skip_special_tokens=True))
#
#

##############################################
#Program 2:
# `include "usbf_defines.v" module usbf_idma( clk, rst,   // Packet Disassembler/Assembler interface  rx_data_st, rx_data_valid, rx_data_done,   send_data, tx_data_st, rd_next,   // Protocol Engine  rx_dma_en, tx_dma_en,  abort, idma_done,  buf_size, dma_en,  send_zero_length,   // Register File Manager Interface  adr, size, sizu_c,   // Memory Arb interface  madr, mdout, mdin, mwe, mreq, mack  ); parameter SSRAM_HADR = 14; // Packet Disassembler/Assembler interfaceinput  clk, rst;input [7:0] rx_data_st;input  rx_data_valid;input  rx_data_done;output  send_data;output [7:0] tx_data_st;input  rd_next; // Protocol Engineinput  rx_dma_en; // Allows the data to be storedinput  tx_dma_en; // Allows for data to be retrievedinput  abort;  // Abort Transfer (time_out, crc_err or rx_error)output  idma_done; // DMA is doneinput [13:0] buf_size; // Actual buffer sizeinput  dma_en;  // External DMA enabledinput  send_zero_length; // Register File Manager Interfaceinput [SSRAM_HADR + 2:0] adr; // Byte Addressinput [13:0] size;  // Size in bytesoutput [10:0] sizu_c;  // Up and Down counting size registers, used to update // Memory Arb interfaceoutput [SSRAM_HADR:0] madr; // word addressoutput [31:0] mdout;input [31:0] mdin;output  mwe;output  mreq;input  mack; parameter [7:0] // synopsys enum state  IDLE  = 8'b00000001,  WAIT_MRD = 8'b00000010,  MEM_WR  = 8'b00000100,  MEM_WR1  = 8'b00001000,  MEM_WR2  = 8'b00010000,  MEM_RD1  = 8'b00100000,  MEM_RD2  = 8'b01000000,  MEM_RD3  = 8'b10000000; reg [7:0] /* synopsys enum state */ state, next_state;// synopsys state_vector state reg  tx_dma_en_r, rx_dma_en_r; reg [SSRAM_HADR:0] adr_cw;  // Internal word address counterreg [2:0] adr_cb;   // Internal byte address counterreg [SSRAM_HADR:0] adrw_next; // next addressreg [SSRAM_HADR:0] adrw_next1; // next address (after overrun check)reg [SSRAM_HADR:0] last_buf_adr; // Last Buffer Addressreg [2:0] adrb_next;  // next byte addressreg [13:0] sizd_c;   // Internal size counterreg [10:0] sizu_c;   // Internal size counterwire  adr_incw;wire  adr_incb;wire  siz_dec;wire  siz_inc; reg  word_done;  // Indicates that a word has been     // assembledreg  mreq_d;   // Memory request from State Machinereg [31:0] dtmp_r;   // Temp data assembly registerreg [31:0] dout_r;   // Data output registerreg  mwe_d;   // Memory Write enablereg  dtmp_sel;  // Selects tmp data register for pre-fetch reg  sizd_is_zero;  // Indicates when all bytes have been     // transferredwire  sizd_is_zero_d; reg [7:0] tx_data_st;  // Data output to packet assemblerreg [31:0] rd_buf0, rd_buf1; // Mem Rd. buffers for TXreg  rd_first;  // Indicates initial fill of buffers reg  idma_done;  // DMA transfer is done reg  mack_r;wire  send_data;  // Enable UTMI Transmitterreg  send_data_r; reg  word_done_r;reg  wr_last;reg  wr_last_en;reg  wr_done;reg  wr_done_r;reg  dtmp_sel_r;reg  mwe;reg  rx_data_done_r2;wire  fill_buf0, fill_buf1;wire  adrb_is_3; reg  rx_data_done_r;reg  rx_data_valid_r;reg [7:0] rx_data_st_r; reg  send_zero_length_r; // Memory Requestassign mreq = (mreq_d & !mack_r) | word_done_r; // Output Dataassign mdout = dout_r; // Memory Addressassign madr = adr_cw; always @(posedge clk) mwe <= mwe_d; always @(posedge clk) mack_r <= mreq & mack; /////////////////////////////////////////////////////////////////////// Misc Logic// always @(posedge clk) rx_data_valid_r <= rx_data_valid; always @(posedge clk) rx_data_st_r <= rx_data_st; always @(posedge clk) rx_data_done_r <= rx_data_done; always @(posedge clk) rx_data_done_r2 <= rx_data_done_r; // Generate one cycle pulses for tx and rx dma enablealways @(posedge clk) tx_dma_en_r <= tx_dma_en; always @(posedge clk) rx_dma_en_r <= rx_dma_en; always @(posedge clk) send_zero_length_r <= send_zero_length; // address counteralways @(posedge clk) if(rx_dma_en_r || tx_dma_en_r) adr_cw <= adr[SSRAM_HADR + 2:2]; else    adr_cw <= adrw_next1; always @(posedge clk) last_buf_adr <= adr + { {SSRAM_HADR+2-13{1'b0}}, buf_size }; always @(dma_en or adrw_next or last_buf_adr) if(adrw_next == last_buf_adr && dma_en) adrw_next1 = {SSRAM_HADR+1{1'b0}}; else     adrw_next1 = adrw_next; always @(adr_incw or adr_cw) if(adr_incw) adrw_next = adr_cw + {{SSRAM_HADR{1'b0}}, 1'b1}; else  adrw_next = adr_cw; `ifdef USBF_ASYNC_RESETalways @(posedge clk or negedge rst)`elsealways @(posedge clk)`endif if(!rst)   adr_cb <= 3'h0; else if(rx_dma_en_r || tx_dma_en_r) adr_cb <= adr[2:0]; else    adr_cb <= adrb_next; always @(adr_incb or adr_cb) if(adr_incb) adrb_next = adr_cb + 3'h1; else  adrb_next = adr_cb; assign adr_incb = rx_data_valid_r | rd_next;assign adr_incw = !dtmp_sel_r & mack_r; // Size Counter (counting backward from input size)`ifdef USBF_ASYNC_RESETalways @(posedge clk or negedge rst)`elsealways @(posedge clk)`endif if(!rst)   sizd_c <= 14'h3fff; else if(tx_dma_en || tx_dma_en_r) sizd_c <= size; else if(siz_dec)   sizd_c <= sizd_c - 14'h1; assign siz_dec = (rd_first & mack_r) | (rd_next & (sizd_c != 14'h0)); assign sizd_is_zero_d = sizd_c == 14'h0; always @(posedge clk) sizd_is_zero <= sizd_is_zero_d; // Size Counter (counting up from zero)`ifdef USBF_ASYNC_RESETalways @(posedge clk or negedge rst)`elsealways @(posedge clk)`endif if(!rst)  sizu_c <= 11'h0; else // Do I need to add "abort" in the next line ??? if(rx_dma_en_r)  sizu_c <= 11'h0; else if(siz_inc)  sizu_c <= sizu_c + 11'h1; assign siz_inc = rx_data_valid_r; // DMA Done Indicatoralways @(posedge clk) idma_done <= (rx_data_done_r | sizd_is_zero_d); // & !tx_dma_en; always @(posedge clk) dtmp_sel_r <= dtmp_sel; // Memory data inputalways @(posedge clk) if(dtmp_sel_r)   dtmp_r <= mdin; else if(rx_data_valid_r)    begin  if(adr_cb[1:0] == 2'h0) dtmp_r[07:00] <= rx_data_st_r;  if(adr_cb[1:0] == 2'h1) dtmp_r[15:08] <= rx_data_st_r;  if(adr_cb[1:0] == 2'h2) dtmp_r[23:16] <= rx_data_st_r;  if(adr_cb[1:0] == 2'h3) dtmp_r[31:24] <= rx_data_st_r;    end always @(posedge clk) word_done <= ((adr_cb[1:0] == 2'h3) & rx_data_valid_r) | wr_last; always @(posedge clk) word_done_r <= word_done & !word_done_r; // Store output data and address when we got a wordalways @(posedge clk) if(word_done) dout_r <= dtmp_r; always @(posedge clk) wr_last <= (adr_cb[1:0] != 2'h0) & !rx_data_valid_r & wr_last_en; always @(posedge clk) wr_done_r <= rx_data_done_r; always @(posedge clk) wr_done <= wr_done_r;// Fill TX Buffersalways @(posedge clk) if(fill_buf0) rd_buf0 <= mdin; always @(posedge clk) if(fill_buf1) rd_buf1 <= mdin; always @(adrb_next or rd_buf0 or rd_buf1) case(adrb_next[2:0]) // synopsys full_case parallel_case    3'h0: tx_data_st = rd_buf0[07:00];    3'h1: tx_data_st = rd_buf0[15:08];    3'h2: tx_data_st = rd_buf0[23:16];    3'h3: tx_data_st = rd_buf0[31:24];    3'h4: tx_data_st = rd_buf1[07:00];    3'h5: tx_data_st = rd_buf1[15:08];    3'h6: tx_data_st = rd_buf1[23:16];    3'h7: tx_data_st = rd_buf1[31:24]; endcase assign fill_buf0 = !adr_cw[0] & mack_r;assign fill_buf1 =  adr_cw[0] & mack_r; assign adrb_is_3 = adr_cb[1:0] == 2'h3; `ifdef USBF_ASYNC_RESETalways @(posedge clk or negedge rst)`elsealways @(posedge clk)`endif if(!rst)  send_data_r <= 1'b0; else if(rd_first)  send_data_r <= 1'b1; else if(((sizd_c==14'h1) && rd_next) || sizd_is_zero_d) send_data_r <= 1'b0; assign send_data = send_data_r | send_zero_length_r; /////////////////////////////////////////////////////////////////////// IDMA Load/Store State Machine// // store incoming data to memory until rx_data done// First pre-fetch data from memory, so that bytes can be stuffed properly `ifdef USBF_ASYNC_RESETalways @(posedge clk or negedge rst)`elsealways @(posedge clk)`endif if(!rst) state <= IDLE; else  state <= next_state; always @(state or mack_r or abort or rx_dma_en_r or tx_dma_en_r or  sizd_is_zero or wr_last or wr_done or rx_data_done_r2 or  rd_next or adrb_is_3 or send_zero_length_r)   begin next_state = state; // Default do not change state mreq_d = 1'b0; mwe_d = 1'b0; rd_first = 1'b0; dtmp_sel = 1'b0; wr_last_en = 1'b0;  case(state) // synopsys full_case parallel_case    IDLE:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered IDLE state (%t)", $time);`endif`ifdef USBF_DEBUGif(rst)beginif(rx_dma_en_r === 1'bx) $display("ERROR: IDMA: IDLE: rx_dma_en_r is unknown. (%t)", $time);if(tx_dma_en_r === 1'bx) $display("ERROR: IDMA: IDLE: tx_dma_en_r is unknown. (%t)", $time);if(abort === 1'bx)  $display("ERROR: IDMA: IDLE: abort is unknown. (%t)", $time);end`endif// synopsys translate_on    if(rx_dma_en_r && !abort)      begin    next_state = WAIT_MRD;      end   if(tx_dma_en_r && !abort && !send_zero_length_r)      begin    next_state = MEM_RD1;      end     end     WAIT_MRD: // Pre-fetch a word from memory     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered WAIT_MRD state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: WAIT_MRD: abort is unknown. (%t)", $time);if(mack_r === 1'bx) $display("ERROR: IDMA: WAIT_MRD: mack_r is unknown. (%t)", $time);`endif// synopsys translate_on    if(abort) next_state = IDLE;   else   if(mack_r) next_state = MEM_WR;   else      begin    dtmp_sel = 1'b1;    mreq_d = 1'b1;      end     end     MEM_WR:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_WR state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: MEM_WR: abort is unknown. (%t)", $time);if(rx_data_done_r2 === 1'bx) $display("ERROR: IDMA: MEM_WR: rx_data_done_r2 is unknown. (%t)", $time);`endif// synopsys translate_on    mwe_d = 1'b1;   if(abort)   next_state = IDLE;   else   if(rx_data_done_r2)       begin    wr_last_en = 1'b1;    next_state = MEM_WR1;      end      end    MEM_WR1:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_WR1 state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: MEM_WR1: abort is unknown. (%t)", $time);if(wr_last === 1'bx) $display("ERROR: IDMA: MEM_WR1: wr_last is unknown. (%t)", $time);if(wr_done === 1'bx) $display("ERROR: IDMA: MEM_WR1: wr_done is unknown. (%t)", $time);`endif// synopsys translate_on    mwe_d = 1'b1;   wr_last_en = 1'b1;   if(abort)   next_state = IDLE;   else   if(wr_last)   next_state = MEM_WR2;   else   if(wr_done)   next_state = IDLE;     end     MEM_WR2:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_WR2 state (%t)", $time);`endif`ifdef USBF_DEBUGif(mack_r === 1'bx) $display("ERROR: IDMA: MEM_WR2: mack_r is unknown. (%t)", $time);`endif// synopsys translate_on    mwe_d = 1'b1;   if(mack_r)   next_state = IDLE;     end     MEM_RD1:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_RD1 state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: MEM_RD1: abort is unknown. (%t)", $time);if(mack_r === 1'bx) $display("ERROR: IDMA: MEM_RD1: mack_r is unknown. (%t)", $time);`endif// synopsys translate_on    mreq_d = 1'b1;   if(mack_r)  rd_first = 1'b1;   if(abort)  next_state = IDLE;   else   if(mack_r)  next_state = MEM_RD2;     end    MEM_RD2:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_RD2 state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: MEM_RD2: abort is unknown. (%t)", $time);if(mack_r === 1'bx) $display("ERROR: IDMA: MEM_RD2: mack_r is unknown. (%t)", $time);`endif// synopsys translate_on    mreq_d = 1'b1;   if(abort)  next_state = IDLE;   else   if(mack_r)  next_state = MEM_RD3;     end    MEM_RD3:     begin // synopsys translate_off`ifdef USBF_VERBOSE_DEBUG$display("IDMA: Entered MEM_RD3 state (%t)", $time);`endif`ifdef USBF_DEBUGif(abort === 1'bx) $display("ERROR: IDMA: MEM_RD3: abort is unknown. (%t)", $time);if(sizd_is_zero===1'bx) $display("ERROR: IDMA: MEM_RD3: sizd_is_zero is unknown. (%t)", $time);if(adrb_is_3 === 1'bx) $display("ERROR: IDMA: MEM_RD3: adrb_is_3 is unknown. (%t)", $time);if(rd_next === 1'bx) $display("ERROR: IDMA: MEM_RD3: rd_next is unknown. (%t)", $time);`endif// synopsys translate_on    if(sizd_is_zero || abort) next_state = IDLE;   else   if(adrb_is_3 && rd_next) next_state = MEM_RD2;     end endcase    end endmodule
# Assertions 2:
# a0: (rx_data_done_r == 1) |=> (idma_done == 1);a1: (rx_data_done_r == 0) |=> (idma_done == 0);
