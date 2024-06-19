# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:17:12 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 831032
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36159' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5NCsIwEEZfFYu48AgeQNCNdNe12yqC21Ksv4gp2iq40aN6k/glWCEzJDP55k1mIiB9WWvx1n3qismYy/8WfX5JGhGae3dCZfkOIvTa5haJdYZMuGDI2dNwlDKWUnCWGx7SG9Vvuiu54UrNllJ6xkp0X/ROlbvykXZdsFbNKY1iIbJkqp6N/oOB6Ep/GE5+Usi5HSqxOTP1JIqJJh9E137fLxMzJI0=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
  
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