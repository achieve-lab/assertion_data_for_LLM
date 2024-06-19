# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:59:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 930776
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37755' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/LCoJAFIZ/iyRa9CBBbsJNuG5rEbSVqCkza6S0oE09am9in5KBq85hzuW/DDOOpOBZlqXq6D4orkLNyF847+8QOGpHtXfayOLV6lKvMTcSlzPUWGdZRdqr0AFkBLJWSlrdwQv4KzUjrS7KZbQFD7VE3Ue9g7kxe7x1rhWcQRXTU02oG2ZDPdb3nNDlbCmOAe6MO60StukfX/XGDEUE68mn+zAx7rz+zwdU+irp' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
