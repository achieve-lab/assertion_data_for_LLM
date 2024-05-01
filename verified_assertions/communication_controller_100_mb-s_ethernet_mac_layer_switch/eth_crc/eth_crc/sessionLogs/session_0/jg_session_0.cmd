# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 11:42:23 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 60112
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35101' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5LCsIwGIS/KBZx4RE8gKAn6NptFcFtkbS+kKb4BDftUb1JnJZWyAz5H5P5/8QAceW9p8XwoxCRsBL/MN+uiA0hmn4QKps6yDDqh3tLpDNnwZ6r6HiT8qTgrliKjhsPcjLpCVu5p3IX0lOO8pyljKUc5H2pnumva3a6zTV3UrbaYFmqs3oBJnKX0hyXdlvoa/ADXMEfig==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_crc

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
