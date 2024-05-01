# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 15:51:14 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 92348
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46595' '-nowindow' '-style' 'windows' '-data' 'AAABJnicbY7NCgFhFIafIZKFq5CF4gqsbZGylRh/MZ+GoWy4VHcyHkJNOafz977vOZ0I6N3yPOdt5aupyoC+/rPo8Wl6EUV7zaUiMroXKlS+y19J1WjQISEwZUXGRqQtMmOnBy7imfzRfNADKSdiFuIDxqprqpcyZ/umvw6ZyMWq1tbUS4nqwJ6u2NyrUHfnIBfYOrX+ql//BNUL+41o/P74CYQDJeg=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

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
