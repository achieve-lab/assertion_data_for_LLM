# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:10:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 620076
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42321' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY67CsJAEEVPFINY+AXWFoKCYJnKwjY+wDb4ig/UDXGjYKOf6p/Em8UImWFmZ+69OzMeELzyPMdZ/ankEzKR/837/IrAo2pFX6sis3flhUb5uZT4ijZ9rhgi9mQchfSErDjLDQ/hmfibciI3pFh2bIWHLKRuSh2Luavu6NYpS3GpJlwYa55loNhoGrSkTcQZTuq6rB0/d9pif6IuYuSuGWrnQZV1l34BLuIjqA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_gpt_4o_1shot.sva
  
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
