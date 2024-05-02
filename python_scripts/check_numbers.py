import re
# if found an assertion with a larger number than threshold, jaspergold cannot process it, this script deletes that assertion 
def filter_large_numbers_in_verilog(file_path, threshold=2147483648):
    kept_lines = []

    number_regex = re.compile(r'\b\d+\b')

    with open(file_path, 'r') as file:
        for line in file:
            numbers = map(int, number_regex.findall(line))
            if all(num <= threshold for num in numbers):
                kept_lines.append(line)

    with open(file_path, 'w') as file:
        file.writelines(kept_lines)

file_path = input("Enter the input path : ('./Jasper/outputReg/property.sva')")#'./Jasper/outputReg/property.sva'  
filter_large_numbers_in_verilog(file_path)

