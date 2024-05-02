def remove_duplicates(file_path):
    seen = set()  
    unique_lines = []  

    with open(file_path, 'r') as file:
        for line in file:
            stripped_line = line.strip()  
            if stripped_line not in seen:
                seen.add(stripped_line)
                unique_lines.append(line) 

    with open("/".join(file_path.split("/")[:-1])+ '/cleaned_property.sva' , 'w') as file:
        file.writelines(unique_lines)

    return unique_lines  

file_path = input()    #'/data/vpulav2/Work/Jasper/accumulatorMUX/property.sva'
removed_duplicates = remove_duplicates_and_preserve_order(file_path)
for line in removed_duplicates:
    print(line.strip())

