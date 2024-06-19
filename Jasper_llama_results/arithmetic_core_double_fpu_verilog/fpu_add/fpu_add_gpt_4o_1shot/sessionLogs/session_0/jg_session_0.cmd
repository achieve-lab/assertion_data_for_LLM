# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:17:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 831437
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46303' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6AgWKa2jSLYhmD8iYh3aKJgo4/qm8TJYYS4y+3P7OzeGCB8lmWJt/ZDISBiLv+ZeX+L0NC0qm81keWrkaFTL9eUQK/PmDOWmD0FmZCRkIST3HIXXmh+VXRyy4WcLanwiJXYXbF3mtxUD6R1wVqzCimUEzFTJtrZ6B70xHa6YTmqG/7xKg1O3JiZVzTVvwdVuVf7Ac9wJJQ=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property_gpt_4o_1shot.sva
  
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
