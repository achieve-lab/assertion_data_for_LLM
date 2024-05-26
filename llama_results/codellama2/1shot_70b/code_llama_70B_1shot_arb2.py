from datetime import datetime
import os
import sys
import accelerate
import json
import torch
import transformers

os.environ['HF_TOKEN']="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"
os.environ['HUGGINGFACEHUB_API_TOKEN']="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"
os.environ['HF_HOME'] = "/scratch/bcfk/vpulavarthi/cache"
os.environ['HF_HUB_CACHE'] = '/scratch/bcfk/vpulavarthi/cache'

with open("../../verilog_designs.json", "r") as f: # read the data from json file
    json_data = f.read()

data = json.loads(json_data) # convert the json data

model_name = "meta-llama/CodeLlama-70b-hf"
quantization_config = transformers.BitsAndBytesConfig(bnb_4bit_quant_type = "nf4",bnb_4bit_use_double_quant = True, llm_int8_enable_fp32_cpu_offload=True, load_in_4bit = True)

pipeline = transformers.pipeline(
    "text-generation",
    model=model_name,
    model_kwargs={
        "torch_dtype": torch.float32,
        "quantization_config": quantization_config,
        "low_cpu_mem_usage": True,
    },
    device_map = "auto",
    max_new_tokens = 1024
)

for i in data:
    try: 
        prompt = """
            You are an expert in SystemVerilog Assertions.
            Your task is to generate the list of assertions to the given verilog design. An example is shown below. Generate only the list of assertions for the test program with no additional text.
            Program 1: " module arb2(clk, rst, req1, req2, gnt1, gnt2); input clk, rst; input req1, req2; output gnt1, gnt2; reg state; reg gnt1, gnt2; always @ (posedge clk or posedge rst) if (rst) state <= 0; else state <= gnt1; always @ (*) if (state) begin gnt1 = req1 & ~req2; gnt2 = req2; end else begin gnt1 = req1; gnt2 = req2 & ~req1; end endmodule"
            Assertions 1: (state == 1 & req2 == 1) |-> (gnt1 == 0);(req1 == 1 & state == 0) |-> (gnt1 == 1);(req1 == 0) |-> (gnt1 == 0);(req1 == 1 & req2 == 0) |-> (gnt1 == 1);(req1 == 1 & state == 0) |-> (gnt2 == 0);(req2 == 1 & state == 1) |-> (gnt2 == 1);(req2 == 0) |-> (gnt2 == 0);(req2 == 1 & req1 == 0) |-> (gnt2 == 1); (gnt2) |-> (req2); (gnt1) |-> (req1); 
            Test Program:
            """ + f"""{i["verilog_design"]}\n""" + "Test Assertions:"
        seq = pipeline(prompt)
        print(prompt)
        print(seq[0]["generated_text"][len(prompt):])
        i['assertions_llama2_70b'] = seq[0]["generated_text"][len(prompt):]
    except torch.cuda.OutOfMemoryError as e:
        torch.cuda.empty_cache()
        i['assertions_llama2_70b'] = "No assertions generated as there's an error :" + str(e)
        continue

final_data = json.dumps(data, indent=4)
with open('final_data_llama2_70b.json','w') as file:
    file.write(final_data)


