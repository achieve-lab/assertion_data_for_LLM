import json

# Define the path to your JSON file
json_file_path = 'final_data_gpt_4o_5shot.json'

# Read the JSON data from the file
with open(json_file_path, 'r') as file:
    data = json.load(file)

# Rewrite the JSON file with an indentation of 4
with open(json_file_path, 'w') as file:
    json.dump(data, file, indent=4)

print("File has been rewritten with indentation of 4.")

