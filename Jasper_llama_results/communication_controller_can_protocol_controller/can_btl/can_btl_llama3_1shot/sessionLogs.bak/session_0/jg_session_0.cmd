# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:11:29 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 20148
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39111' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY65CsJQEEVvFINY+AnWIiiIbWrbKIJtiHEn5gVNFGz0U/2TeHwY4TnDbHfuLJ6k4FFVlaw07zhfoaboT7zXNwk8ufKpGy4yfzpRatXDNcXHuhoqk1GknUodQAYgsVLU6AZe0r/gc9TorEIbrcFDLWC3YW/pXMl7/DrTkl7Choy4gp1qhE+IUgd2zg6jI1X/jxfZq7FO2IRqzN093MJ++wbMsCSB' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_btl/can_btl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_btl/can_btl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_can_btl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_btl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top can_btl

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
