import json
import os
import re


def find_clock_signal(property_path):
    # Use regular expression to find the clock signal in always blocks


    pattern = r"(?<=posedge\s)\w+"


    with open(property_path.strip("\n"),'r') as file:
        property_code = file.read()
    #clock_matches = re.findall(r'always\s*@\s*\(posedge\s+(\w+)\s*\)', verilog_code)
    clock_matches = re.findall(r'(?<=posedge\s)\w+',property_code)
    return clock_matches[0] 

def extract_parameters(property_path):
    with open(property_path.strip("\n"),'r') as file:
        property_code= file.read()
    # Extract parameter declarations from Verilog code
    parameter_lines = set()
    for line in property_code.split(';'):
        line = line.strip()
        if 'parameter' in line:
            parameter_lines.add(line + ';')
    return list(parameter_lines)

def extract_module(property_path):
    with open(property_path, 'r') as file:
        text = file.read()
    
    module_match = re.findall(pattern,text,re.DOTALL)
    return module_match

def extract_io(verilog_code):
    # Extract and format input and output lines from the module definition of the Verilog code
    module_def = re.search(r'module\s+\w+\s*\((.*?)\);', verilog_code, re.DOTALL)
    if module_def:
        module_io_content = module_def.group(1)  # Get the content within the parentheses
        io_lines = []
        # Split and strip each line properly, respecting Verilog syntax for multiple lines
        for line in module_io_content.split(','):
            trimmed_line = line.strip()
            if trimmed_line:
                if 'input' in trimmed_line or 'output' in trimmed_line:
                    io_lines.append(trimmed_line + ';')
        return io_lines

with open("verilog_files_in_directory.txt",'r') as file:
    file_paths = file.readlines()
print(file_paths)
    
json_identifier = 'assertions_llama3_70b_5shot'
file_identifier = "file_name"
pattern = r'^.*?module.*?\);'

with open('final_data_llama3_70b_5shot.json', 'r') as file:
    data = file.read()
data = json.loads(data)
#print(data)

for i,j in zip(file_paths,data):
    #print(i,j)
    verilog_file = i.split("/")[-1].strip()
    output_property_file_path = "/".join(i.split("/")[:-1])  + "/property_llama3_5shot.sva"
    original_property_file = "/".join(i.split("/")[:-1]) + "/property.sva"
    clock = find_clock_signal(original_property_file)
    #print(clock)
    parameters = extract_parameters(original_property_file)
    #print(parameters)
    #print(module_match)
    #print(verilog_file path)
    
    #print(verilog_file, j.get(file_identifier))
    extracted_text = j.get(json_identifier)
    extracted_module = extract_module(original_property_file)
    
    if extracted_text!="":
        extracted_text = extracted_text.replace('\n', '')
    parts = extracted_text.split(';')

    unique_parts = list(set(parts))

    unique_parts = [part for part in unique_parts if part.strip()]
    #complete_parts = [part for part in unique_parts if re.search(r'\|->\s*\(.*\)$', part.strip())]
    #print(complete_parts)
    appended_list = []
    for i in unique_parts:
        i = f"assert property(@(posedge {clock}) "+ i.strip("\n") + ");\n"
        appended_list.append(i)
    
    print(appended_list)

    with open(output_property_file_path, 'w') as file:
        #file.writelines(parameters)
        file.writelines(extracted_module)
        file.write("\n\n")
        file.writelines(appended_list)
        file.write("\nendmodule")
# Write the extracted data to the new file
#with open(output_file_path, 'w') as file:
#    file.write(extracted_text)


