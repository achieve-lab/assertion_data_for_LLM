# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 11:32:02 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 59595
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33389' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5LCsIwEIa/KBZx4RE8gKAn6LrbKoLbIrU+SmmCT3CjR/Um8W+xhcyQefz5ZhIDxG/vPa0NXwoRKYm8N/P9F7EhtKYfhMr6E2QYdcMdEunMWbCjklueZNypuSo6ueXCjYK99JSN6KnoWnrGUcxZyljKQexD9Ux/XbHVbaG5k3Iu1rFUl+sFmIh22mop220h19gPXr0fng==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_cop
exit
