# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:10:43 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 619838
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44475' '-nowindow' '-style' 'windows' '-data' 'AAABIHicVY5JCsJAEEVfFIO48AQeQATdSHZZuXAbB3AbnAfUDrGj4EaP6k3iT2OEVNE1/P+rqj0gfOV5jrP6U8EnYiz/m/f5FaFH1Yq+VkWm70qGRjlcSny9Nn2uGGL2ZByF9IQsOcsND+GZ+JtiIjekWLZshEfMpW5KvRNzV93RXycsxKXacGGkfZaB3lrboCVtIs5wUtdl5fiZ0xb3E3UxQ00EyoGuHqS17q9fcLojoQ==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
  
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
