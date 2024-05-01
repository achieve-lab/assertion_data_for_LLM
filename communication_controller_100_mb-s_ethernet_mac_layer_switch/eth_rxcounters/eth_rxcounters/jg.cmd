# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-29 16:03:40 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 9744
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46469' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5NDgFBFIS/JiZi4QROIDjBrG2HSGxFxviL6EkziA1HdZNWLUbSG/XS76de1UsbIH147/mgeVdKyBgrfjCvb5MaYoS5ETPTZ1ShVZtrSaLXZcgRy4INFTsxfTFLDgrLVXyl/Um5VFgcZwpW4jNmUrelXmtzUT/QXyfMtSuk2qo6buRyhRvB53RppC7XdejIW4qz7DX1/roC3lj/JfA=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxcounters/eth_rxcounters/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxcounters/eth_rxcounters/.tmp/.initCmds.tcl' 'FPV_eth_rxcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_rxcounters

# Set up Clocks and Resets
clock MRxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
