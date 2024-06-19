# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:05:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 938725
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34771' '-nowindow' '-style' 'windows' '-data' 'AAABUHicjY/BCoJQEEWvRRIt+pCgNuXORau2FkFbCbNUoif2LGhTn9qf2FEycNcMb+bOvTPDPEeS/6yqSo31HwRXgVb4z5z3F/iOulbXvS6zeXWyNGiH2xaXN9ZUFxmFOqlUCjOB2euMG93hS/QrMceNClnFOsAH2tI9pPuIcgMvuHWtHVpMV0IuQBEvRa+RYZeFNWyfgSKyNGJH3rAZ1fKv6frenCrUnE0e2ePKBM02f/sAxyouGw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
