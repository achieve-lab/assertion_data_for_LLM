# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:10:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 619447
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33725' '-nowindow' '-style' 'windows' '-data' 'AAABIHicVY5JCsJAEEVfFIO48AQeQAQFEXdZuXAbB3AbnAfUDjFRcKNH9SbtT2OEVNE1/P+rqj0geFlrcVZ9KviEjOV/8z6/IvAoW95Xysj0XcpQK4YLia/XpMsVQ8SejKOQjpAlZ7nhITwTf1OM5YaElC0b4SFzqetS78TcVbf01wkLcYk2XBhpX0pPb61t0JA2Fmc4qWuzcvzMafP7sbqIgSaGyn1dPUibur9+AXCCI50=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
# ----------------------------------------
#  Copyright (c) 2017 Cadence Design Systems, Inc. All Rights
#  Reserved.  Unpublished -- rights reserved under the copyright 
#  laws of the United States.
# ----------------------------------------

# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramBit.v
#  ${RTL_PATH}/port_select.v \
#  ${RTL_PATH}/bridge.v \
#  ${RTL_PATH}/egress.v \
#  ${RTL_PATH}/ingress.v \
#  ${RTL_PATH}/top.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
  
# Elaborate design and properties
elaborate -top bitRam

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
