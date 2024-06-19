# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:03:49 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 49348
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40795' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIVPiUYsPIK1SNiIXde2JRLbprlKK7gNLYkNj+pN6tOo5JrJ/Jwz594ZT1LwqKpKtbXvJF+h5vjPvNe3CTy59sEtl1k+nSp1mseNxCf6Guskq0g7lcpgRjCxDrjVDb5kfiHnuNVZhRJt4EOtUHdRb5lc6QfcutCaWYIqpRr0RhOQ4T+phzqHs9qDhn+6qN4a60hMQTP2pmiL+to30Dwkjw==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
