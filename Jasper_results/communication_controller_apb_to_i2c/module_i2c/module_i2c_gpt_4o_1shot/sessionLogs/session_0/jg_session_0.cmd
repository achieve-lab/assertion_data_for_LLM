# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:20:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 279901
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44989' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIS/KAax8CmsBAOKZWrbKIJtkMRfondoomCjj+qbxMlhhIC73N7u7MwyHhA+y7LERfuh4hMxU/7Ce3+b0KMZ1dxqIotX44dOLa4pvl6fEWcMMTsKDkKGQtZkSsNdeKH9VdUqDRdyNqTCI5Zid8XeanNTP5DXOSvtTmKm0mTixro6ISGQMhECPWmsLhmOmoK/7MqPlSJm6tyN5WGvLnfOP6L2JsA=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_apb_to_i2c/module_i2c/module_i2c_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_module_i2c.tcl'
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
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exexit
exit
