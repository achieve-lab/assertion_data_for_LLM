# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 20:59:10 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 76821
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36237' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY69CsJAEIS/Uwxi4RNYWwhaCHapLGzjD9iG+K+oF2KiYKOP6pvEyWGE7LJ7uzNzu2sA/5XnOc7qTyWPgIn8b+bzK3xD1Yq+VkVm78oLjfJzKfEUbfpcsYTsyTgK6QmJOMstD+GZ+JtyLLckpGzZCA9YSN2UeifmrrqjW6csxSWacGGseSkDxVrToCVtLM5yUtdl5fi504ZuY1FFDNWNtPMgZeou/QIt5COY' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_llama2_5shot.sva
  
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