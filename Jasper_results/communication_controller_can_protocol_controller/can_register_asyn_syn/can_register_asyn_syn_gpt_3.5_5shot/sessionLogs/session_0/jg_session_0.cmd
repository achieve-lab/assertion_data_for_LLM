# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:39:45 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 245679
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42849' '-nowindow' '-style' 'windows' '-data' 'AAABXHiclY+9CsJAEIQnikEsfBBBG0kjqdNGEWxDiBoVyYX8KNroo/om8Us0Qkp3ud29mbm5O0uS+6iqSk307xRbvjzyF9brO7iWulHve11k9ex0adAebiU2a6ypEhkFilXqCDIBCXUmja7gJXxOTUmjTIV22oL7WqMeot7DXJgXvHWpDVyEQ0LP0Ma45s2pDCRkvjXcp89gIu6SRjilaIxO7Lw/POq3p7CB5vg5dAfmgFPR/PMNJv0wsQ==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn_syn

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
