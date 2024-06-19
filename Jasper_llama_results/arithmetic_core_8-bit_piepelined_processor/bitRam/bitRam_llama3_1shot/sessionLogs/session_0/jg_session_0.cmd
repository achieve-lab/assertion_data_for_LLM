# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 20:59:14 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 77055
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42689' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY69CsJAEIS/Uwxi4RNYWwgKYpvKwjb+gG2I/4p6ISYKNvqovkmcHEbILru3OzO3uwbwX3me46z+VPIImMj/Zj6/wjdUrehrVWT2rrzQKD+XEk/Rps8VS8iejKOQnpCIs9zyEJ6JvynHcktCypaN8ICF1E2pd2Luqju6dcpSXKIJF8aalzJQrDUNWtLG4iwndV1Wjp87beg2FlXESN1QOw9Spu7SLy2+I5U=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_llama3_1shot.sva
  
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
