# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:21:13 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 48009
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35351' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIQnikEsfARrERTENrVtFME2hDOaiHpBEwUbfVTfJH4GI5y77M/Mzt2uJyl4VFWl2tp3kq9Qc/xn3uvbBJ5c++CWyyyfTpU6zeNG4hN9jXWSVaSdSmUwI5hYB9zqBl8yv5Bz3OqsQok28KFWqLuot0yu9ANuXWjNLEGVUg16ownI8J/UQ53DWe1Bwz9dVG+NdSRmoCl7U7RFfe0b0AQkiw==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
