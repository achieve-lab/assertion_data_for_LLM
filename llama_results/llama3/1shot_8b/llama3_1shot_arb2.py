
import os
import sys
import accelerate
import json
import torch
import transformers

# with open("./database/final_data.json", "r") as f: # read the data from json file
#     json_data = f.read()


os.environ['HF_TOKEN']="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"
os.environ['HUGGINGFACEHUB_API_TOKEN']="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"
os.environ['HF_HOME'] = "/scratch/bcfk/vpulavarthi/cache"
os.environ['HF_HUB_CACHE'] = '/scratch/bcfk/vpulavarthi/cache'

with open("../../final_verilog_designs.json", "r") as f: # read the data from json file
    json_data = f.read()

data = json.loads(json_data) # convert the json data

model_name = "meta-llama/Meta-Llama-3-8B"

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
    i["assertions_llama_8b_1shot"] = response

final_data = json.dumps(data, indent = 4)

with open('final_data_llama_8b_1shot.json','w') as file:
    file.write(final_data)
    file.close()
