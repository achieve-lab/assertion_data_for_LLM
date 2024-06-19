# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:20:16 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 47388
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44113' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY+9CsJAEIQnikEsfBBBGxEsUttGEWxD0GiMpxc0UbDRR/VN4udhhFTucvszO7PseZKCR1VVcta+E3yFmuE/817fIvDUtE/faiKLZyNLnVpcU3xeX0OdZBVpp1J7kAFILINb3cBL5hdijludVSjRBjzUEnYX9pbJlXrErXOtmCWwUrLRmLimTogHt+cIr6AzKHqoc3ZaZXTTP7rIXRVTxW4+AU/RFu43bwOCKuE=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top eth_l3_checksum

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
