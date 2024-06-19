# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:07:35 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 52485
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35199' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY69CsJAEIQnikEsfA4RtAjYpbaNItiGoFEj6gWTKNjoo/om8cthhCvcZf9mZu/WkxQ+67qWte6D5CvSHP+Z9/42oSfXmrnjIsuXU6Veu9xKfGKoiS4yirVXpQxkDJLohBvdwSv4gpzjRleVSrUFj7RC3Ue9g7nRj7h1oTVciupALcgZfMleyg9Tug0vSwP2clCjI1PwdyO2lyQ6EwHTzCoMfGMfFkAo6g==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top eth_shiftreg

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
