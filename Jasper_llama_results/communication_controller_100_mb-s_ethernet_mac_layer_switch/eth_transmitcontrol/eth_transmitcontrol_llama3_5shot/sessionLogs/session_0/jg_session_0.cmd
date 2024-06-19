# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:26:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 155504
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39479' '-nowindow' '-style' 'windows' '-data' 'AAABUnicjY+9CsJAEIQnikEsfBBBG9EqhZVtFME2HBqNEpOgFwUbfVTfJH4eRkjnLrc/M7PLnicpeFRVJWftO8FXqDn+M+/1LQJPTfv0rSayfDay1KmHa4nP62uoTLki7VXqADIAMUrxXDfwEv5CLPBcZ1nF2oKHWqHuot7BXKmn3LrQGi5GlZAteuPmT+y22rAhc2jO/pFDUiZ7bCkceqSb/TkfuSsNnNGYboIugbHud29Mhy81' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
