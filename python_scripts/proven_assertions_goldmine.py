import re
import json

def proven_assertion_goldmine(log_data,text_data):

    log_proven_pattern = r'\[\d+\]\s+[\w\.]+\.(assert_[a-zA-Z0-9_]+)\s+(\w+)\s+\w+\s+\w+\s+\d+\.\d+ s'
    log_proven_matches = re.findall(log_proven_pattern, log_data)
    print("no of assertions in file :",len(log_proven_matches))

    log_covered_pattern = r'\[\d+\]\s+[\w\.]+\.(assert_a[\d+]:precondition1)\s+(\w+)\s+\w+\s+\w+\s+\d+\.\d+ s'
    log_covered_matches = re.findall(log_covered_pattern, log_data )
    #print(len(log_covered_matches))
    # Parse text file to extract property definitions
    property_pattern = r'property\s+(\w+);\s+(.*?)\s+endproperty'
    properties = re.findall(property_pattern, text_data, re.DOTALL)
    #print(properties)
    # Create a dictionary for quick lookup of property definitions
    properties_dict = {name: content.strip() for name, content in properties}
    #print(properties_dict)
    # Parse text file to extract assertion mappings
    assertion_pattern = r'assert_([a-zA-Z0-9_]+): assert property\((.*?)\);'
    assertion_matches = re.findall(assertion_pattern, text_data, re.DOTALL)
    #print(assertion_matches)
    # Create a dictionary for quick lookup of assertions
    assertions_dict = {name: properties_dict.get(prop) for name, prop in assertion_matches}
    #print(assertions_dict)
    # Combine data to match each assertion name from the log file with its definition and status
    combined_data = []

    for assertion_proven, assertion_covered in zip(log_proven_matches,log_covered_matches):
        #print(assertion_proven)
        #print(assertion_covered)
        definition = properties_dict.get(assertion_proven[0].split("_")[1])
        combined_data.append((assertion_proven[0], assertion_proven[1], assertion_covered[1], definition))
    #print(combined_data)
    return combined_data


find_result = r'\b(RESULTS)\b'
i = "./Arbiter/arb2/jg.log"
j= "./Arbiter/property_goldmine.sva"

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

combined_data = proven_assertion_goldmine(log_data,property_data)

data = dict()
count = 0
#print(combined_data)
with open("final_data_goldmine.json",'a') as file:
    for assertion_name, status1, status2, definition in combined_data:
        if status1== 'proven' and status2 == 'covered':
            #print(f"{definition}\n")
            count += 1
            key = i.split("/")[-2]
            if key in data:
                data[key].append(definition)
            else:
                data[key] = [definition]
    print("After verifying:",count)
    json.dump(data,file)
    file.write("\n")

