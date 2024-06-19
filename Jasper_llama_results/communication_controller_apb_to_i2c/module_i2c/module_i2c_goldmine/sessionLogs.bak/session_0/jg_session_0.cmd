# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 22:33:14 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 138783
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37811' '-nowindow' '-style' 'windows' '-data' 'AAABOHicVY+9DoJAEIQHjcRY+BgWJlpYWFHbojGxJUSQYNAjIGhs9FF9k/ODiAm7uf2ZnZvbcyR5L2utWhs+Ca58bfC/OZ9f4TnqW9MP+sju3cvSqLvcUVzOVAtdZRQoUaUUZA4SKsON7uAV85KY40aFbooVgfvawx7DPjGpqdfsutWBWQ2nQK3RSOhLkJAc60G+wM+ol2gdqaQJKjk3jM50MxiGN6qWFaCzgtdsaEAipik7xe0fvo6sKYc=' '-proj' '/data/vpulav2/Work/Jasper/module_i2c/module_i2c_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/module_i2c/module_i2c_goldmine/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
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
  ${RTL_PATH}/module_i2c.v
#  ${RTL_PATH}/port_select.v \
#  ${RTL_PATH}/bridge.v \
#  ${RTL_PATH}/egress.v \
#  ${RTL_PATH}/ingress.v \
#  ${RTL_PATH}/top.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
