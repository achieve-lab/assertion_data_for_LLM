# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 12:38:37 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 44238
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33911' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY69CsJAEIS/UwxiYe0jiKBPkNo2imArojEqwQsXo2Cjj+qbnJNghCuc5fZndmY5A8RP7z0Nug+liIS54gfz/jaxIUQ9d0Jm+Qoq9FpzK4n0hky5YNmQUXESMxGzJVdY7uIr7UvlQmFxXEnZi09YSd2X+qDNTf1Yf12w1i6V6qjq1GW6WjYux0x1p8swkK8QYzlrGv111PgAFNwj+A==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_register/eth_register/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_register/eth_register/.tmp/.initCmds.tcl' 'FPV_eth_register.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_register.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
