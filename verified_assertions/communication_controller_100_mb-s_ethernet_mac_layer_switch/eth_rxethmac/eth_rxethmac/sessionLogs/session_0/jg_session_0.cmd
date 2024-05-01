# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-29 15:43:54 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 9028
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38081' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5LCsJAEETfKAbJwrVHEEFPkLXbRAS3IjH+UCdEo+JGj+pNxookwiysZvpTVd2MAaKnc44v2g+lgJiJ4gfzrpvI4KOaWz4zfXkVOs1yYwn0eow4YVmwoWQnZihmyUFhuYkvpZ+Vc4Wl4ELGSnzMTO6u3GspV/UD/TVhLi2Ta6tacK/7o26mjNWnugyh9nLplr2m/t+NCh8UMiPm' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxethmac/eth_rxethmac/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxethmac/eth_rxethmac/.tmp/.initCmds.tcl' 'FPV_eth_rxethmac.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxethmac.v \
  ${RTL_PATH}/eth_rxstatem.v \
  ${RTL_PATH}/eth_rxcounters.v \
  ${RTL_PATH}/eth_rxaddrcheck.v \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
