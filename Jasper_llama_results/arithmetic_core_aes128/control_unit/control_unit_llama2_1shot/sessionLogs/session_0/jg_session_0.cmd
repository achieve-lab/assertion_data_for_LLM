# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:25:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 118263
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34115' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/NCoJQEIWPRRIteo4ICnLtuq1F0FbE/gzzimlBm3rU3sS+Lhq4aIb5O+fMZa4jyX/WdS1r/QfJVaAl/jPn3TS+o659514XWb86VRq0y63EJcaaKZNRqKMqJSBTkEgpbnQHr+Cv5Bw3KlRqrx14oA3qIeoDzI1+wq0rbeFilBnKgpo2byTMcyIGkUbs5ZY/M3l/N0J7SaQL4TEtuOWEprQ/+AAovCku' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/control_unit/control_unit_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_aes128/control_unit/control_unit_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/property_llama2_1shot.sva
exit
