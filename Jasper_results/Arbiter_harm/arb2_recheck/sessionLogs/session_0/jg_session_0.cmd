# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-20 16:35:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 6960
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41497' '-nowindow' '-style' 'windows' '-data' 'AAABKnicVY69DoJAEIQHjcRYWPsMJlpYWFHbojGxNYj4ix45BI2NPqpvgh9ETNjN7c7Ozk7OkeS9iqJQFe0nxZWvGfkP5/MDnqNmlHOrySzejS516uNa4vL6Gukqo7X2ynSEGcIEikmjO3zGPqUmpJHVTZG28L6WqLuod2xy8JS/zrVil6OxuJUee+YUJqBHetAv6GPwGK8QJPVwSbgwOjEN0FhtNOHCogt1qOq5+vUXSQAmgw==' '-proj' '/data/vpulav2/Work/Jasper/Arbiter_harm/arb2_recheck/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/Arbiter_harm/arb2_recheck/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
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
  ${RTL_PATH}/arb2.v
#  ${RTL_PATH}/port_select.v \
#  ${RTL_PATH}/bridge.v \
#  ${RTL_PATH}/egress.v \
#  ${RTL_PATH}/ingress.v \
#  ${RTL_PATH}/top.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
  
# Elaborate design and properties
elaborate -top arb2

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
