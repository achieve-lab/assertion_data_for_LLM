# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 15:01:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 70775
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34101' '-nowindow' '-style' 'windows' '-data' 'AAABFHicbY5LCsJAEETfKAZx4cojuBL0BFm7jSK4FdH4Q9MhGgU3elRvMlbECANWM/2pqm7GAfHDe88HzbtSRMJY8YN7fZvYEaKaGyEzfQYVWvVybYn0ugzJMBZsKdmLGYhZclQYN/Gl9LNyrjAKLqSsxSfM5G7LvZFyVd/XXyfMpaVy7VQLXcrkNk6MxK10FTrayaUZB029v+4Kb+auIig=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_random

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
