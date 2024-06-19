

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxethmac.v \
  ${RTL_PATH}/eth_rxstatem.v \
  ${RTL_PATH}/eth_rxcounters.v \
  ${RTL_PATH}/eth_rxaddrcheck.v \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_rxethmac

# Set up Clocks and Resets
clock MRxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
