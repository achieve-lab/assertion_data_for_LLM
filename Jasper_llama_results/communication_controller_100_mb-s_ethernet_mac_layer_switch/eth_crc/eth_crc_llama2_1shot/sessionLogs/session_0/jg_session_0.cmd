# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:21:05 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 47693
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44165' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFQEIVPiUYsPIK1SEhYd21bIrFtmqu0gtvQktjwqN6kPo1KrpnMzzlz7p3xJAWPqqpUW/tO8hVqjv/Me32bwJNrH9xymeXTqVKnedxIfKKvsU6yirRTqQxmBBPrgFvd4EvmF3KOW51VKNEGPtQKdRf1lsmVfsCtC62ZJahSqkFvNAEZ/pN6qHM4qz1o+KeL6q2xjsQMNGVviraor30Dz/Ikig==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
