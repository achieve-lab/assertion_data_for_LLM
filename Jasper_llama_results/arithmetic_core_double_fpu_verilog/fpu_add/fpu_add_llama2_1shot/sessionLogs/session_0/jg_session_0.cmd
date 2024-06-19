# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:52:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 123795
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41053' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEVPFINY+AnWIihondo2imAbgvGJukGzCjb6qf7JerMYIc4wrzt3HgEQPZ1zeGk+5EJiptKfBO9vEgXUpawbdWT+qkVoVcMVJZR1GXLGkLDFshcyEJJylBruwq36V/lcarhQsCYTHrMQuy32Rp2b8p5+nbFUr0SsYipmxkgzK+2Djti5dhgOqvp/vMRfTTnJJqrGursTt/DffgDOOiSA' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property_llama2_1shot.sva
  
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
