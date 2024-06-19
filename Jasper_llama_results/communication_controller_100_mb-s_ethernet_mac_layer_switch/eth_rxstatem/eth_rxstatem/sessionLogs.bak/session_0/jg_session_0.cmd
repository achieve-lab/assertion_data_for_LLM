# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 13:11:48 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 84709
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33525' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7LDsFAFIa/IRqxsPYIIuEJurYtkdiKULeUaapFbHhUbzL+EZXMwjmZc/kvJ2OA+OGc4xPNu0pEwlj5C/P6DrEhDL83QmT6DDq0anMtifS6DDlhWbClYi9kIGRJprRchVfiz6q50lJQkrIWnjCTui31RsxFc19/nTAXl0q1Uy+4yVvqnncdGamvdBk68uXiLQdtvb8OH28cBiQe' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxstatem/eth_rxstatem/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxstatem/eth_rxstatem/.tmp/.initCmds.tcl' 'FPV_eth_rxstatem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxstatem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
ext
exit
