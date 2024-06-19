# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:27:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 119082
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35311' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIXPLZJo0XNEUIuineu2FkFbEfszTMW0oE09am9iXxcNXDTD/J1z5jLXSHKfVVXJWvdBcuRpif/MvOvGNWrbd+60kfWrVaVes9xIHGKoiRKl8nVUqQhkDBIoxlPdwUv4KznDU+UqtNcO3NMGdR/1AeZGP+LWlbZwIcoEZU6N6zci5ikRgkgD9jLLn5lmfzd8e0mgCzFnWnDLCU1hf/ABKQYpMw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/control_unit/control_unit_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/control_unit/control_unit_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/property_llama3_5shot.sva
  
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
