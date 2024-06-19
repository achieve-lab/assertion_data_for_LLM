# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 17:45:32 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 55069
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40079' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfYxLCsJAEETfKAZx4QE8gqAnyDrbKIJbkRh/qBPMRMGNHtWbjJVghNlYzXRNV1e1AeKn954G3YdaREqi+sG8v5/YEKKeO6EyfwUMvTbcWiK9IRMuWFbsqDhIGUtZc1JZ7tIr7Uv1QmW54sjZSE9ZyN2Xe6vNrUkmzFhql8u1F591KVPaiZ1ulEzFmW7DQMlC9yxHTaM/mRofr7wk3A==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_macstatus/eth_macstatus/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_macstatus/eth_macstatus/.tmp/.initCmds.tcl' 'FPV_eth_macstatus.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_macstatus.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
