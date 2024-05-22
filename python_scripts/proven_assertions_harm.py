import re
import json

def proven_assertion(log_data,text_data):
    log_proven_pattern = r'[\w.]+_(assert_\d+)\s+(\w+)' 
    log_proven_matches = re.findall(log_proven_pattern, log_data)
    print(len(log_proven_matches))
    
    log_covered_pattern = r'[\w.]+_(assert_\d+:precondition1)\s+(\w+)'
    log_covered_matches = re.findall(log_covered_pattern, log_data)
    print(len(log_covered_matches))
    text_pattern = r'assert property\(@\(posedge [^)]+\) ([^;]+)\);' 
    text_matches = re.findall(text_pattern, text_data, re.DOTALL)
    #print(len(text_matches))

    assertions_dict = {"assert_"+ str(i+1) : text_matches[i] for i  in range(0,len(text_matches))}
    #print(assertions_dict)

    # Combine data to match each assertion name from the log file with its definition and status
    combined_data = []

    for assertion_proven,assertion_covered  in zip(log_proven_matches,log_covered_matches):
        #print(status)
        #print(assertion_covered[1])
        definition = assertions_dict.get(assertion_proven[0])
        #print(definition)
        combined_data.append((assertion_proven[0], assertion_proven[1], assertion_covered[1],definition))
    #print(combined_data)
    return combined_data


#with open("./Jasper/log_file_names.txt",'r') as file:
#    log_file_path= file.readlines()
#    #print(log_file_path)
#
#verilog_file_names = set()
#verilog_file_names_list = []
#property_files = set()
#property_files_list = list()
#for i in log_file_path:
#    if "goldmine" in i.split("/")[-2] :
#        continue
#    verilog_file_name = "/".join(i.split("/")[:-2]) + "/" + i.split("/")[-2] +".v"
#    if verilog_file_name not in verilog_file_names:
#        #print(verilog_file_name)
#        verilog_file_names.add(verilog_file_name)
#        verilog_file_names_list.append(verilog_file_name)
#    ##########got the files and its paths###3
#    input_property_file = "/".join(i.split("/")[:-2]) + "/property.sva"
#    if input_property_file not in property_files:
#   #print(input_property_file)
#        property_files.add(input_property_file)
#        property_files_list.append(input_property_file)

i = "./t_ff/t_ff/jg.log"
j= "./t_ff/property.sva"
find_result = r'\b(RESULTS)\b'
i = "./Jasper" + i.lstrip(".")
j = "./Jasper" + j.lstrip(".")
#for i,j in zip(verilog_file_names_list, property_files_list):
with open(i, "r") as file:
    x= file.read()
    log_data = re.split(find_result, x)[2]
    #print(log_data)

with open(j, "r") as file:
    property_data= file.read()
    #print(property_data)

combined_data = proven_assertion(log_data,property_data)
 
count = 0
data = dict()
#data['verilog_design'] = 
#print(combined_data)
with open("examples_data/example_assertions_harm.json",'a') as file:
    for assertion_name, status_1, status_2, definition in combined_data:
        if status_1== 'proven' and status_2 == 'covered':
            #print(f"{definition}\n")
            count+=1
            key = i.split("/")[-2]
            if key in data:
                data[key].append(definition)
            else:
                data[key] = [definition]
    print(count)
    json.dump(data,file)
    file.write("\n")



#print(verilog_file_names)
#print(len(verilog_file_names))
#print(property_files_list)
#print(len(property_files_list))
#######################
'''to be done- read jg.log, property.sva of a specific folder and give proven assertions'''
find_result = r'\b(RESULTS)\b'



#input_log_file = "/data/vpulav2/Work/Jasper/Arbiter_harm/arb2/" + "jg.log"
#input_property_file = "/data/vpulav2/Work/Jasper/Arbiter_harm/" + "property.sva"


#############################

#with open(input_log_file,"r") as file:
#    x= file.read()
#    log_data = re.split(find_result, x)[2]
#
#with open(input_property_file, "r") as file:
#    text_data= file.read()
#
#
#log_pattern = r'\[\d+\]\s+arb2\.i_arb2\.(assert_[a-zA-Z0-9_]+)\s+(\w+)\s+(\w+)\s+[\w\s]+'
#log_matches = re.findall(log_pattern, log_data)
##print(log_matches)
#
#text_pattern = r'assert_([a-zA-Z0-9_]+): assert property\((.*?)\);'
#text_matches = re.findall(text_pattern, text_data, re.DOTALL)
#print(text_matches)
#
#
#assertions_dict = {name: content.strip() for name, content in text_matches}
##print(assertions_dict)
#
## Combine data to match each assertion name from the log file with its definition and status
#combined_data = []
#
#for assertion_name, status, _ in log_matches:
#    assert_name = assertion_name.split("_")[1]
#    print(status)
#    definition = assertions_dict.get(assert_name)
#    #print(definition)
#    combined_data.append((assertion_name, status, definition))
#
#data = dict()
##print(combined_data)
#with open("final_data.json",'w') as file:
#    for assertion_name, status, definition in combined_data:
#        if status== 'proven':
#            #print(f"{definition}\n")
#            data[assertion_name.split("_")[1]] = definition
#    json.dump(data,file)
#    file.write("\n")
#
##print(data)
#
##        print(f"Assertion Name: {assertion_name}")
##        print(f"Status: {status}")
##        print(f"Definition: {definition}\n")



