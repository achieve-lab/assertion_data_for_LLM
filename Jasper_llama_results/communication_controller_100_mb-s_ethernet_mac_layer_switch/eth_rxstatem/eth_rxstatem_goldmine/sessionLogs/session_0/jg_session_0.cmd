# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 13:35:14 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 88510
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38961' '-nowindow' '-style' 'windows' '-data' 'AAABLnicdY7PDsFAEMZ/JRpx8Bwi4Ql6di2RuIrooqK2qRZx4VG9SX3dqGQPZrIzs9+f3QmA6FnXNS66D5WQmJnyF8H7O0QBfjT3jo8sXl6HXmtuJaHOkAlnLGv2VKRCxkI2nJSWm/BK/EU1V1oKSgyJ8Jil1H2pd2Kumkfadc5KnJHqoF5wl7fUe40rY6q+1cswkC8Xbzm6P/85mr2sHInmVJsYt/kH3OAn3g==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxstatem/eth_rxstatem_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxstatem/eth_rxstatem_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_rxstatem.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxstatem.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_rxstatem

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
