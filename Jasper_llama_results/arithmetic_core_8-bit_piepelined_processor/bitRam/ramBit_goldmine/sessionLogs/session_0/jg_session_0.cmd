# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-26 15:23:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 64583
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36801' '-nowindow' '-style' 'windows' '-data' 'AAABFnicVY5NCsIwEIW/KhZx4QnEAwh6gq5cuK0/4FbUVmlRU7RVcKNH9SbxJVihM2Qyee/lzQRA9LLW4qP9VAmJmSn/EXx+TRTQDPduNZHFu3FDp/5cS0KdPmMuGDYcqciEjIRsOSkND+GV+JtqoTRcKUlJhMespO5KfRBzVz/QrnPW4nZyKlnK58xE3V5u0JO2kIMh12uozvFTr3XzjVSJkEwTU7/hFxKTIlQ=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/bitRam/ramBit_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_8-bit_piepelined_processor/bitRam/ramBit_goldmine/.tmp/.initCmds.tcl' 'FPV_bitRam.tcl'
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
  ${RTL_PATH}/property_goldmine.sva
  
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
