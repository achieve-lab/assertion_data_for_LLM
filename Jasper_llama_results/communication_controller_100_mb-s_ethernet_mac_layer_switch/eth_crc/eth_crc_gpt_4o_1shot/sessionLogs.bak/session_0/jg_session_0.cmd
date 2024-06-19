# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:49:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 922924
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44463' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NCsIwEIS/KBbx4CN4FkFB8Niz1yqC1yK1WkVM0VbBiz6qbxKnwQp1l+zPzCQZA4RP5xw+2g+VgIi58hfm/R1CQzOqvdVElq9Gh059uZYEOn3GnLHE7Ck5CBkJ2XBSWu7CS/FX1VxpuVCQshUesZK6K/VOzE3zQF4XrMWlUmXqifQJE22J3oOe1Lkwy1Hb8E9XeciFxMy8o6n+zTQV3u0H0Sgkng==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
