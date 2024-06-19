# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:24:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 969670
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45935' '-nowindow' '-style' 'windows' '-data' 'AAABQHicfY/NCoJQEIWPRRItepCoNiG0cN3WImgrYZZGdMW0ok09am9i35UM3DTDnZ8z5wxzHUn+s6oq1dZ9EFwFWuA/c97fwnfUNtt32sjq1cpSrxE3FJc31ERnGYU6qFQKMgLZ6oQb3cBL5hdihhvlKhRrBx5oDbsPe8/kSj3m1qU2zGJYCbnQXREqu8PqcjZNqSK2SwO0GZjRkW7+V2Xvy+hCzdjgkT3QBFZR/+UD5I8rAQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
