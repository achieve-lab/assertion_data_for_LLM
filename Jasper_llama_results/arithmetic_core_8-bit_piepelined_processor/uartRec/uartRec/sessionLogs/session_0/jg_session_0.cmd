# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 19:59:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 327714
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40635' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/KBZx4RE8gKAn6Lrb+gNupdQfLKUpahXc6FG9SXwNtpA3ZDJ5800SA8Rv5xxew5dSREqi6GW+/yI2hGrPg9BZf4IdRt1wh0RaUxZUWPacabjImcvJKBWWp/xG/ZtyrbBcuXPkID9lK3os+qTOQ/VMf12x8zOZJzdic5aqct0HE9G1OpbCvx1yrX4/1x+G' '-proj' '/data/vpulav2/Work/Jasper/uartRec/uartRec/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/uartRec/uartRec/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top uartRec

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
