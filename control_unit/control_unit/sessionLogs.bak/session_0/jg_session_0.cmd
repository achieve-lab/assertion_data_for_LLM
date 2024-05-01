# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-12 20:02:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 235031
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44883' '-nowindow' '-style' 'windows' '-data' 'AAABLnicdY/BasJAFEVPKEhxUVz6CaWglELBhYtudFEqFgvdBrVRLJIJzaQFN/6qf5KeTtadYe5783LmvpcMmJ7btiWtq5My4IUFK2bqkncjPPPIAxPueWLLmg8KSrOChoNxzI/5hppI4Mt8bP3oPsgFtbZS+K7pOmWXLjLNlJ7nhlFCc/bJFK6t7Kj4Nr9lzqvD5DYLctEmQftctpSO2ke/HWXvfLdOzYNjdUStVu6/4WIaJPfn3qT70lVy+/Q2/Nff9QtETDHP' '-proj' '/home/vpulav2/Work/Jasper/control_unit/control_unit/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/control_unit/control_unit/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/control_unit.v
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
elaborate -top control_unit

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
