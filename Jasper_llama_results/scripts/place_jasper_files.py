import os
import stat


with open('verilog_files_in_directory.txt','r') as file:
    verilog_file_paths = file.readlines()


with open("run_jasper.py",'r') as file:
    run_jasper_python = file.read()


def create_files_in_directory(directory,tcl_name, directory_name):
    run_jasper_shell = f"""
#!/bin/bash

python3 run_jasper.py {tcl_name} property_llama2_1shot.sva
 nice -n 10 jg -no_gui -allow_unsupported_OS -fpv {tcl_name}  -proj {directory_name}_llama2_1shot | tee jg_llama2_1shot.out
python3 run_jasper.py {tcl_name}  property_llama2_5shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv {tcl_name}  -proj {directory_name}_llama2_5shot | tee jg_llama2_5shot.out

python3 run_jasper.py {tcl_name}  property_llama3_1shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv {tcl_name}  -proj {directory_name}_llama3_1shot | tee jg_llama3_1shot.out
python3 run_jasper.py {tcl_name}  property_llama3_5shot.sva
nice -n 10 jg -no_gui -allow_unsupported_OS -fpv {tcl_name}  -proj {directory_name}_llama3_5shot | tee jg_llama3_5shot.out
echo "Jaspergold for Codellama2 1shot"
grep -E 'proven|cex' jg_llama2_1shot.out | awk -F: '{{print $1, $2}}'
echo "Jasper gold for codellama2 5-shot" 
grep -E 'proven|cex' jg_llama2_5shot.out | awk -F: '{{print $1, $2}}'
echo "Jasper gold for llama3 1-shot" 
grep -E 'proven|cex' jg_llama3_1shot.out | awk -F: '{{print $1, $2}}'
echo "Jasper gold for llama3 5-shot" 
grep -E 'proven|cex' jg_llama3_5shot.out | awk -F: '{{print $1, $2}}'
"""

    try:
        # Create the first file
        file1_path = os.path.join(directory, 'run_jasper.py')
        with open(file1_path, 'w') as file1:
            file1.write(run_jasper_python)

        # Create the second file
        file2_path = os.path.join(directory, 'run_jasper.sh')
        with open(file2_path, 'w') as file2:
            file2.write(run_jasper_shell)
        
        os.chmod(file2_path, stat.S_IRWXU)
        print("edited")
    except Exception as e:
        print(f"An error occurred while creating files in {directory}: {e}")

for line in verilog_file_paths:
    directory = "/".join(line.split("/")[:-1])
    tcl_name = "FPV_" + line.split("/")[-1].strip("\n").strip(".v") + ".tcl"
    directory_name = line.split("/")[-2]
    print(directory_name)
    print(directory)
    create_files_in_directory(directory, tcl_name,directory_name)
