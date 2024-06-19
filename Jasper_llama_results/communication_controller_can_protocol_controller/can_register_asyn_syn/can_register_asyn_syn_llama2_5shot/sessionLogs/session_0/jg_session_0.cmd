# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:51:37 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 32338
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35565' '-nowindow' '-style' 'windows' '-data' 'AAABWniclY+9CsJAEIQnikEsfBBBC8FGUoptFME2hPiP5kJ+FG30UX2T+HkaIaW73O3uzNzcnSPJu5dlKRvNG5srX1PyF87z23iO6vGeG3Vk/qhVqVUdriQuq6u+YhkF2qrQHqQHEupIGl3AC/iMPSGNUuVaawXua4G6jXoDc6Yf89aZlnARDjE1RbvFNbOnUpCQ/mq5Tx3ARNwldXBK0BgdmCZ/eAT2taFOrCHTCHyHT25/+QLJvDCo' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
