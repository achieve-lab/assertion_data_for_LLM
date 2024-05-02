import re
input_file_path = "/data/vpulav2/Work/Jasper/" + input("enter root and file:")
out_name = input("enter root for output path:")
output_file_path = "/data/vpulav2/Work/Jasper/" + out_name + "/property.sva"
binding_output_file_path = "/data/vpulav2/Work/Jasper/" + out_name + "/bindings.sva"
#print(input_file_path)
#print(output_file_path)
#print(binding_output_file_path)

def get_signal(input_file_path):'''
this function is used to identify input, output, reg , wire , inout defined in .v
'''
    #with open(input_file_path,'r') as file:
    #    x = file.readlines()

    signal = set()

    keywords = ["input","output", "reg", "wire", "inout"]

    for i in x:
        if i.startswith("//") or i.startswith("*"):
            continue
        if any(keyword in i for keyword in keywords):
            #print(i)
            for keyword in keywords:
                i = i.replace(keyword,"input")
                i = i.replace(";",",")
            #print(i)
            if "=" in i:
                i = i.split("=")[0] + ",\n"
            signal.add(i)
    #print(signal)
    return list(signal)

def append_file(output_file_path, replace_content):'''
this function is to take "default_ass.txt", which is generated from harm, remove the additional strings
'''
    with open("/".join(input_file_path.split("/")[:-1]) + "/default_ass.txt", 'r') as f_source:
        source_content = f_source.readlines()
        source_content = [line.replace("true","1") for line in source_content]
        source_content = [line.replace(replace_content,"") for line in source_content]
        #print(source_content[0:6])

    with open(output_file_path, 'r') as f_target:
        target_content = f_target.readlines()
        last_line_number = len(target_content)
        #print(last_line_number)

    target_content.insert(last_line_number +1, ''.join(source_content) )
    return target_content

def remove_duplicates(file_path):
    '''
    to delete duplicate assertions after removing the additional strings
    '''
    seen = set()  
    unique_lines = []  

    with open(file_path, 'r') as file:
        for line in file:
            stripped_line = line.strip()  # Strip whitespace from the ends
            if stripped_line not in seen:
                seen.add(stripped_line)
                unique_lines.append(line)  

    with open(file_path, 'w') as file:
    #with open("/".join(file_path.split("/")[:-1])+ '/cleaned_property.sva' , 'w') as file:
        file.writelines(unique_lines)

    return
    #return unique_lines  


def process_text(input_file_path):
    # Define patterns for regex
    bracket_pattern = r'\[[^\]]+\]'  # Matches [something]
    keywords_pattern = r'\b(reg|wire|input|output|inout)\b'  # Matches specific HDL keywords
    # Initialize an empty list to collect results
    result_patterns = set()

    # Read the input file
    with open(input_file_path, 'r') as file:
        for line in file:
            # Strip leading/trailing whitespace
            stripped_line = line.strip()
            # Ignore lines starting with "//" or lines not containing any keywords
            if stripped_line.startswith("//") or stripped_line.startswith("*") or not re.search(keywords_pattern, stripped_line):
                continue  # Skip non-relevant or comment lines
            # Remove inline comments
            line_no_inline_comment = re.split(r'//', stripped_line)[0].strip()
            # Remove bracket expressions
            cleaned_line = re.sub(bracket_pattern, '', line_no_inline_comment)
            # Remove HDL keywords
            cleaned_line = re.sub(keywords_pattern, '', cleaned_line)
            print(cleaned_line)
            # Remove extra spaces and commas
            cleaned_line = re.sub(r'\s+', ' ', cleaned_line).strip()
            cleaned_line = cleaned_line.replace(';', '').replace(',', '')

            # Split the line into individual signals and generate the pattern
            signals = cleaned_line.split()
            for signal in signals:
                if signal:  # Ensure the signal name is not empty
                    result_patterns.add(f".{signal}({signal})")

    # Join all patterns with commas
    return ',\n'.join(list(result_patterns)) + '\n'


with open(input_file_path,'r') as file_in, open(output_file_path, 'w') as file_out, open(binding_output_file_path,'w') as bind_file_out:
    x = file_in.readlines()
    file_name = input_file_path.split("/")[-1].strip(".v")
    keywords = ["input","output", "reg", "wire", "inout"]

    file_out.write("module i_" + file_name +"(\n")
    signal = get_signal(input_file_path)   
    for i in signal[:-1]:
        #print(i)
        file_out.write(i)
    #print(signal[-1])
    file_out.write(signal[-1].replace(",",""))

    file_out.write(");\n")
    file_out.write("\n\n")
    replace_content = input("Enter the design with _:: for replacement:") # create property.sva with the module and 

    target_content = append_file(output_file_path, replace_content) # add the harm assertions to the files
    file_out.writelines(target_content)
    file_out.write("\nendmodule")
    file_out.close()

    remove_duplicates(output_file_path)  # remove duplicates

    #print("here")

    #----------------------------above code creates property, below code creates bindings--------------

    bind_file_out.write("bind " + file_name  + "\n i_" + file_name + " v_" + file_name + "(\n")
    output_string = process_text(input_file_path)
    bind_file_out.write(output_string)
    bind_file_out.write(");")
    bind_file_out.close()

