# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:36:10 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 24463
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39313' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY65CsJQEEXPUwxi4SdYi6CFYJfaNopgG0LcIpoXYqJgo5/qn8Trwwhxhtnu3FkM4D+qqsJJ+y7nETCX/sS8volvaMqnbjWR5bMRoVMP1xRP1mdMiiVkT0kiZCQk4iS13ISX6l/kM6klp2DLRnjASuyu2Dt1rsoH+nXBWr1YG1IXc9lEM7H2QU/sTJjlqGr4xwvd1YizbKpqprsHcQv37RvIxiRw' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_crc/can_crc_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_can_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top can_crc

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
