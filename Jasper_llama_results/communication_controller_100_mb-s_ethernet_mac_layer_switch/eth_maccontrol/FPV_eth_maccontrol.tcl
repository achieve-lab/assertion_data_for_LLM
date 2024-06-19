

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_maccontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_maccontrol

# Set up Clocks and Resets
clock MTxClk
reset TxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
