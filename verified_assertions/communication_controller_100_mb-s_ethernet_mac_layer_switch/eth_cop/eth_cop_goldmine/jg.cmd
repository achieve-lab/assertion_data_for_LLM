# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 11:55:29 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 60677
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46477' '-nowindow' '-style' 'windows' '-data' 'AAABGnicXY5NCsJADEZfFYu48AjiWtATuHZbRXAr4r9oW/wFN3pUb1JfxQo1YZLJl5fMBED/kWUZH6veDSERA/1nwet76QeULa8rZWX0LGWoFcMFEno6dJmx1xNuTLkQczKmesKRM0sW6hFj6aZ0rD5lLbNVqausZK/eW/51yMTu0rmNeS6b0rOa+wI0pFO3Juys2n9cvjWRW3Bwd2w3tzfN4yNe' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_cop

# Set up Clocks and Resets
clock wb_clk_i
reset wb_rst_i

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
