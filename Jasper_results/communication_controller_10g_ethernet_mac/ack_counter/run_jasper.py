import subprocess
import os
import sys
import re

def replace_value_in_file(file_path, new_value):
    # Read the contents of the file
    with open(file_path, 'r') as file:
        contents = file.read()
    pattern = r'property.*?\.sva' 
    # Replace the old value with the new value

    updated_content = re.sub(pattern, new_value,  contents)

    print(updated_content)
    # Write the changes back to the file
    with open(file_path, 'w') as file:
        file.write(updated_content)

def run_process(value):
   try:
    # Full path to the executable
    process = subprocess.Popen([f'./run_jasper.sh {value}'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    print('STDOUT:', stdout.decode())
    print('STDERR:', stderr.decode())
   except Exception as e:
    print('Failed to start process:', e)


def main():
    file_path = 'FPV_ack_counter.tcl';  # Path to the file you want to modify
    #values_to_use = ['property_gpt_4o_1shot.sva', 'property_gpt_4o_5shot.sva']  # Values to write to the file
    
    #current_value = 'property.sva'  # This should be the initial value in the file
    new_value = sys.argv[1]
    replace_value_in_file(file_path, new_value)
    #value = input("Give the proj name:")
    #run_process(value)
    # current_value = new_value  # Update current_value to the new value for the next iteration

if __name__ == "__main__":
    main()

