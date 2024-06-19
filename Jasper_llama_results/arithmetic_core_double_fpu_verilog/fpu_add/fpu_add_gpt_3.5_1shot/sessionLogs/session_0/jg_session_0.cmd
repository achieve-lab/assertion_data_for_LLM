# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:17:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 830457
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41411' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5NCsIwEEZfFYu48AgeQFAQcde12yqC21Ksv4gJ2ii40aN6k/qlWCEzJDP55k1mIiB5VVVFbe2nrpiUufxv0eeXJBGh+XcrVJbvIEKnaW6QWKfPiAuGjD2Oo5ShlJyz3PCQ7lS/6bZyw5WSLYX0lJXoruidKnflA+26YK2aV5xiLrJgrJ6N/oOeaKs/DKd6Usj5HazYjKl6ZooTTT6ILut9vxL7JIk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/fpu_add.v
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
elaborate -top fpu_add

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
