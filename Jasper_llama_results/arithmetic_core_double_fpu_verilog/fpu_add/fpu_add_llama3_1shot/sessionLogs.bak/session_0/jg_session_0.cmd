# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:51:04 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 123176
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46541' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEVPFINY+AnWIiiIbWrbKIJtCMYn6gbNKtjop/on681ihDjDvO7ceQRA9HTO4aX5kAuJmUp/Ery/SRRQl7Ju1JH5qxahVQ1XlFDWZcgZQ8IWy17IQEjKUWq4C7fqX+VzqeFCwZpMeMxC7LbYG3Vuynv6dcZSvRKxiqmYGSPNrLQPOmLn2mE4qOr/8RJ/NeUkm6ga6+5O3MJ/+wHOTCSB' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property_llama3_1shot.sva
exit
