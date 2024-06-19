# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:19:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 279212
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32777' '-nowindow' '-style' 'windows' '-data' 'AAABMHicbY69CsJAEIQnikEsfAorQfEHu9S2UQTbIIlGJXpBEwUbfVTf5PwSjBBwl9vdm51ZxpHkPa21KqP5oLjyNSd/4by/g+eoHsW/UUeWr1qXWpW4ori8rgY6yyhQrFwHkD7IRglpdAfP2V+pKWl0UaatInBfK9ht2Ds2N+YeXhdaszvBjNAkcAOuThRqiDIEkTpoUi4ZHfmN/rILPymKQFOUM/oYF3uYWen9A+rWJrU=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_module_i2c.tcl'
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
  ${RTL_PATH}/property_gpt_3.5.sva
exit
