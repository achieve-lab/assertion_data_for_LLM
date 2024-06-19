# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:12:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 621541
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40051' '-nowindow' '-style' 'windows' '-data' 'AAABXnicrY+7CsJAEEVPFCVY+AXWFoJW2qWysI0PsA2+H6gbYqJgo5/qn6w3ixHSO8PMztw7jx0PCJ7WWpxUH3J1QkbSn3jvbxB4lCXPK2Vk8iq9UCuaixJf1qTLBUPEjoyDkI6QBSep4S48E3+Vj6WGhJQNa+Ehsz/0+6reirkpbunWMXNxiSacGWpeSk+20jRoqDYWZzgqa7N0/NTV5vtjZRF995uBdu4Vpe7SDwHhLwk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
