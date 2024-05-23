from openai import OpenAI
import os
import json

api_key = 'sk-proj-PTRnczRrqpnhxwoNLnbKT3BlbkFJbZ5tQMuRJTanvQ7g5hKy'
os.environ["OPENAI_API_KEY"] = api_key 
client = OpenAI()

with open("verilog_designs.json","r") as file:
    data = file.read()

data = json.loads(data)


def api_call_gpt(prompt):

    chat_completion = client.chat.completions.create(
        messages=[
            {
                "role": "user",
                "content": prompt,
            }
        ],
        model="gpt-4o",
        seed = 50,
        temperature = 0.0,
        max_tokens = 1024,
    )

    return chat_completion.choices[0].message.content

for i in data:
    prompt = """You are an expert in SystemVerilog Assertions.
        Your task is to generate the list of assertions to the given verilog design. An example is shown below. Generate only the list of assertions for the test program with no additional text.
        Program 1: " module arb2(clk, rst, req1, req2, gnt1, gnt2); input clk, rst; input req1, req2; output gnt1, gnt2; reg state; reg gnt1, gnt2; always @ (posedge clk or posedge rst) if (rst) state <= 0; else state <= gnt1; always @ (*) if (state) begin gnt1 = req1 & ~req2; gnt2 = req2; end else begin gnt1 = req1; gnt2 = req2 & ~req1; end endmodule"
        Assertions 1: (state == 1 & req2 == 1) |-> (gnt1 == 0);(req1 == 1 & state == 0) |-> (gnt1 == 1);(req1 == 0) |-> (gnt1 == 0);(req1 == 1 & req2 == 0) |-> (gnt1 == 1);(req1 == 1 & state == 0) |-> (gnt2 == 0);(req2 == 1 & state == 1) |-> (gnt2 == 1);(req2 == 0) |-> (gnt2 == 0);(req2 == 1 & req1 == 0) |-> (gnt2 == 1); (gnt2) |-> (req2); (gnt1) |-> (req1); 
        Test Program:""" + f'{i["verilog_design"]}\n' +"Test Assertions:"  

    print(prompt)
    response =  api_call_gpt(prompt)
    i['assertions_gpt_4o'] = response

final_data = json.dumps(data)
with open('final_data_gpt_4o.json','w') as file:
    file.write(final_data)
