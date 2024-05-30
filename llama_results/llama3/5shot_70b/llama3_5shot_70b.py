import os
import accelerate
import json
import torch
import transformers

#def write_to_txt(response):
#    data['assertion'
        

os.environ['HF_TOKEN']="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"
os.environ['HUGGINGFACEHUB_API_TOKEN']="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"
os.environ['HF_HOME'] = "/scratch/bcfk/vpulavarthi/cache"
os.environ['HF_HUB_CACHE'] = '/scratch/bcfk/vpulavarthi/cache'

with open("../../final_verilog_designs.json", "r") as f: # read the data from json file
    json_data = f.read()

data = json.loads(json_data) # convert the json data
#print(data)
model_name = "meta-llama/Meta-Llama-3-70B"
quantization_config = transformers.BitsAndBytesConfig(bnb_4bit_quant_type = "nf4",bnb_4bit_use_double_quant = True, llm_int8_enable_fp32_cpu_offload=True, load_in_4bit = True)

pipeline = transformers.pipeline(
    "text-generation",
    model=model_name,
    model_kwargs={
        "torch_dtype": torch.float32,
        "quantization_config": quantization_config,
        "low_cpu_mem_usage": True,
    },
    device_map = "cuda",
    max_new_tokens = 1024
)
 
for i in data:
    try:
        prompt = """You are an expert in SystemVerilog Assertions.
            Your task is to generate the list of assertions to the given verilog design. An example is shown below. Generate only the list of assertions for the test program with no additional text.
            Program 1: module arb2(clk, rst, req1, req2, gnt1, gnt2); input clk, rst; input req1, req2; output gnt1, gnt2; reg state; reg gnt1, gnt2; always @ (posedge clk or posedge rst) if (rst) state <= 0; else state <= gnt1; always @ (*) if (state) begin gnt1 = req1 & ~req2; gnt2 = req2; end else begin gnt1 = req1; gnt2 = req2 & ~req1; end endmodule
            Assertions 1: (state == 1 & req2 == 1) |-> (gnt1 == 0);(req1 == 1 & state == 0) |-> (gnt1 == 1);(req1 == 0) |-> (gnt1 == 0);(req1 == 1 & req2 == 0) |-> (gnt1 == 1);(req1 == 1 & state == 0) |-> (gnt2 == 0);(req2 == 1 & state == 1) |-> (gnt2 == 1);(req2 == 0) |-> (gnt2 == 0);(req2 == 1 & req1 == 0) |-> (gnt2 == 1); (gnt2) |-> (req2); (gnt1) |-> (req1); 
            Program 2: module full_adder(input a, b, cin, output S, Cout); assign S = a ^ b ^ cin; assign Cout = (a & b) | (b & cin) | (a & cin); endmodule
            Assertions 2: (!Cout && cin) |-> S; (!Cout && b) |-> S; (!Cout && a) |-> S
            Programm 3: module half_adder(input a, b, output S, Cout); assign S = a ^ b; assign Cout = a & b; endmodule
            Assertions 3: (Cout) |-> b; (Cout) |-> a
            Program 4: module T_flipflop ( input clk, rst_n, input t, output reg q, output q_bar ); always@(posedge clk) begin if(!rst_n) q <= 0; else begin q <= (t?~q:q); end end assign q_bar = ~q; endmodule
            Assertions 4: (!q) |-> q_bar; (!q_bar) |-> q; (q == 1) |-> (q_bar == 0);(q == 0) |-> (q_bar == 1)
            Program 5: module full_subtractor(input a, b, Bin, output D, Bout); assign D = a ^ b ^ Bin; assign Bout = (~a & b) | (~(a ^ b) & Bin); endmodule
            Assertions 5: (!a && D) |-> Bout; (D && b) |-> Bout; (D && Bin) |-> Bout; (!Bout && Bin) |-> a; (!Bout && b) |-> a; (!Bout && D) |-> a
            Test Program:""" + f'{i["verilog_design"]}\n' +"Test Assertions:"  

        seq = pipeline(prompt)
        print(prompt)
        print(seq[0]["generated_text"][len(prompt):])
        i['assertions_llama3_70b_5shot'] = seq[0]["generated_text"][len(prompt):]
    except torch.cuda.OutOfMemoryError as e:
        torch.cuda.empty_cache()
        i['assertions_llama3_70b_5shot'] = "No assertions generated as there's an error:" + str(e)
        continue

final_data = json.dumps(data, indent = 4)
with open('final_data_llama3_70b_5shot.json','w') as file:
    file.write(final_data)
    
