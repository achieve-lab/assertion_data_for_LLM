# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:06:03 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 51795
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45637' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIU/iyRa9BAto4Jo67qtRdBWxLIfqiumBW3qUXuT20lSuNAM83POnGHGA4KntZbK2g8ln5C5vDHv/WsCD9e+uOUyy5dToVMv1xJf0WfMBUPEjpKDmKGYmJPccBdfan5VzuSGnIItG/EhK6m7Uqea3NQP9OuCtWZps51InwtNVBNV6GkjE2c4Co3+aKPqesxZMROa6v5emqL6+gMgKiZ7' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_flow_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/flow_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top flow_ctrl 

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
