

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_sync

# Set up Clocks and Resets
clock ck
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
