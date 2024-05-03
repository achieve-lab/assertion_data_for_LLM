# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 14:55:57 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 99028
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37177' '-nowindow' '-style' 'windows' '-data' 'AAABOHicjY69CsJAEIQnikEsfAwLQUur1LZRBFsJGv9IckEvCjb6qL5J/HIY4Tp3uf2ZnRkukBQ967qWi+6DEirWnPxF8P4OUSA/mr3jI8uX16VeK24pIW+oiQoZbXRQpRPIGCRRRhrdwSvuV2pJGl1klWoHHmsFuw97z+XGPOOvC625pbCOdAs/cfocb6stDoVDDf5Th2QoB7iUDj2zjf7UN/EBpDwqMA==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_transmitcontrol

# Set up Clocks and Resets
clock MTxClk
reset TxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
