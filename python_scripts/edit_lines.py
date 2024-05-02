import re
'''this script is to create bindings.sva'''

def process_text(input_file_path):
    bracket_pattern = r'\[[^\]]+\]' 
    keywords_pattern = r'\b(reg|wire|input|output|inout)\b'  
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

    
    return ',\n'.join(list(result_patterns)) + '\n'

input_file_path = "/data/vpulav2/Work/Jasper/" + input("Enter root plus .v file:")
output_file_path = '/data/vpulav2/Work/Jasper/' + input("enter root directory") + "/bindings.sva" 
with open(output_file_path,'w') as file:
    file_name = input_file_path.split("/")[-1].strip(".v")
    file.write("bind " + file_name  + "\n i_" + file_name + " v_" + file_name + "(\n")
    output_string = process_text(input_file_path)
    file.write(output_string)
    file.write(");")


#print(output_string)
