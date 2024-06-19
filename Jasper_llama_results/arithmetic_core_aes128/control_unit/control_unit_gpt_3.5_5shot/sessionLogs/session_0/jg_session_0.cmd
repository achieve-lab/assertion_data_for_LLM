# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:14:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 756351
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39667' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NCoJQEIWPRRIteo4IalPuXLe1CNpG2J8iXjEtaFOP2pvY50UDF80wf+ecucx1JPmvqqpkrf8kuQq0wn/mfJrGd9S1eu51kc27U6VBu9xKXGKsmVIZ7XVRqQhkCnJQghs9wEv4GznDjXIVOukIHmiLeoj6DHOnn3DrWju4EGWKMqcmzRsR85wIQaQRe5nlY6bl3436rszWBdse1eOaK6rC/uELdxYpOw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/control_unit/control_unit_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/control_unit/control_unit_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
