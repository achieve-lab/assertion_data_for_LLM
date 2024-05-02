'''this script takes inputs, creates .tcl file in the path specified
'''
    
file_name  = input("enter .v file:")
module_name = input("Enter module name:")
clock = input("Enter clock:")
reset = input("Enter reset:")
input_file_path = "/data/vpulav2/Work/Jasper/" + input("Enter root directory: ") + "/FPV_" + file_name.strip(".v") + ".tcl"


string_tcl = f"""

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${{ROOT_PATH}}
set PROP_PATH ${{ROOT_PATH}}

analyze -v2k \\
  ${{RTL_PATH}}/{file_name}

# Analyze property files
analyze -sva \\
  ${{RTL_PATH}}/bindings.sva \\
  ${{RTL_PATH}}/property.sva

# Elaborate design and properties
elaborate -top {module_name}

# Set up Clocks and Resets
clock {clock}
reset {reset}

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


"""

print(string_tcl)


with open(input_file_path, 'w') as file:
    file.write(string_tcl)
