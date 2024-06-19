# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:21:09 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 47779
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41953' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIQnikEsfARrEbQQ7FLbRhFsQzijiagXNFGw0Uf1TeJnMMK5y/7M7NztepKCR1VVqq19J/kKNcd/5r2+TeDJtQ9uuczy6VSp0zxuJD7R11gnWUXaqVQGM4KJdcCtbvAl8ws5x63OKpRoAx9qhbqLesvkSj/g1oXWzBJUKdWgN5qADP9JPdQ5nNUeNPzTRfXWWEdiCpqxN0Vb1Ne+AdAqJI4=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
