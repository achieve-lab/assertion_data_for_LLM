# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:35:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 165502
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45115' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NDsFQEIXPJRqx8CCChYRV17YlEtumqVKC21SL2PCo3qS+Nirpxkzu/Jw5ZzLXSHKfRVGosvaD4MjTHP+ZeX8L16hpZd9qIstXI0udWlxTHF5fI51l5WunXHuQAUigI251A8+ZX4gJbpUqU6QNuKcV7C7sLZMr9ZBbF1ozi2DF5Ex3hajKHaUuZdOYKmS71EObgFkd6GZ/VX51UaATb0I3BYvhZNVPPpLZKvg=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top eth_txcounters

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
