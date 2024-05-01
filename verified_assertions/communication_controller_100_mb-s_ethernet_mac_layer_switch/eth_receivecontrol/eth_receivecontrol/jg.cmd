# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 16:07:21 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 94984
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39759' '-nowindow' '-style' 'windows' '-data' 'AAABNHicjY6xCsJAEETnFINY+BVWglaWqW2jCLYiMWpEvBATBRv9VP/kfBeMcJ277O7czOxyRlL8dM6pie6DFinRnPyFeX9BbBSGf3dCZvkKptRrl1tLRA010UVWGx1UK4cZw2x1Jq3u8DX6lV6QVqUqZdrBJ1rh7uPeo9zAM/660Botw3VklqCUytE9styqYC3Xp6CUKQ24UTTsidfor20fH+SfKQ4=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_receivecontrol

# Set up Clocks and Resets
clock MRxClk
reset RxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
