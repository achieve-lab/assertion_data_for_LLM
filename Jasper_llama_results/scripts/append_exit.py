def append_exit_to_files(file_list):
    with open(file_list, 'r') as list_file:
        # Read the file names from the text file
        file_names = list_file.readlines()

    # Process each file name and append 'exit'
    for file_name in file_names:
        file_name = file_name.strip()  # Remove any extra whitespace or newline characters
        try:
            # Open each file in append mode and add 'exit'
            with open(file_name, 'a') as file:
                file.write('\nexit\n')  # Append 'exit' on a new line
            print(f"'exit' successfully appended to {file_name}")
        except FileNotFoundError:
            print(f"File not found: {file_name}")
        except Exception as e:
            print(f"An error occurred while processing {file_name}: {e}")

def main():
    # Specify the path to the text file containing the list of file names
    file_list_path = 'tcl_files.txt'  # Adjust this path as needed
    append_exit_to_files(file_list_path)

if __name__ == "__main__":
    main()

