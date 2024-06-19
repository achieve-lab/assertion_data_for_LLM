# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:33:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 699105
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40815' '-nowindow' '-style' 'windows' '-data' 'AAABXHiclY+9CsJAEIQnikEsfBBBQcRGUqeNItiGEDUqkoT8KNroo/om8ctphJTucrt7M3Nzd5Yk51FVlUx07xRbnlzyF9brOziW2lHvO21k9Wx1qdccbiQ2a6ixYiXyFanUEWQEEuhMJrqCl/A5NSUTZSq00xbc0xp1H/Ue5sK84K1LbeBCHGJ6hjbCNTenMpCA+Wa4T5/AhNwlDXBK0SQ6sXP/8KjfnsL6muE3p09hDjgV5p9vJsUwrQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_asyn_syn/can_register_asyn_syn_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
