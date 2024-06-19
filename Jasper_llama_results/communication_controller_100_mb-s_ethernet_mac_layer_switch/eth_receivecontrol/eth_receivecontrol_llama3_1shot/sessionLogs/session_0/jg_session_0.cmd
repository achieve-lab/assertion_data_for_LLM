# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:02:29 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 57830
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33755' '-nowindow' '-style' 'windows' '-data' 'AAABTnicjY/BCoJQEEWvRRIt+pCgIGopLdtaBG1FzNKonpgWtKlP7U/s+MjAXTPMzJ175w3zHEnes6oqWes+SK58LfGfOe8v8By1re47bWb9alWp1zxuRlxiqLEuMgp0UKkUZgQT6oQb3eFL9Cs5w41yFYq1g/e1YbrP9B7lBp5z60pbtJiphJqDIiJFr5FhVwFr2D4BRVRpwI7Mske6xV+vA3thqDMxo5tyY4JS2J99AG8KLg8=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top eth_receivecontrol

# Set up Clocks and Resets
clock MRxClk
reset RxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
