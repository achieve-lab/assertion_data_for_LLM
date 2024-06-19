# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:13:27 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 46539
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38865' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NDsFQEIVPiUYsPIiEBBuLrm1LJLZNQynKbWhJbHhUb3J9blTSlZnc+TlzzmSuJyl4WGvlrHkn+Ao1xX/mvb5F4Klun75RR+bPWpZalbii+Lyu+jrJKNJWpXYgPZBYGW50Ay+ZX4g5bnRWoURr8FAL2G3YGyZX6gG3zrRklsBKyZnGxBV1Qjy4PUd4BV2GooM6Z6fRnm7yRxe5q2KqWCO6IXiKtnC/eQMDOCrc' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top eth_l3_checksum

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
