

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_top.v 

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/cleaned_property.sva

# Elaborate design and properties
elaborate -top cavlc_top

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


