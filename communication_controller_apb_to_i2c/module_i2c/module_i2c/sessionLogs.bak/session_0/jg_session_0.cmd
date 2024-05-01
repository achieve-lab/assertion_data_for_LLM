# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-04 21:37:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 14052
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44671' '-nowindow' '-style' 'windows' '-data' 'AAABOHicJY/BSgMxFEXPIJTiQrroVwgtUlC66KIbXYhFUXAbRo1lZNoUZ6aKG3/VPxlP04S8+97NfTcvBbD47fuevE5+DCPuWPHItfGeZxFuuWTGnAuWvFLyRmRrFumoxClf5i80tCQ+zafytbtSl4yNTLSvO75U/B2RRWEYeM6YZGlgnU3hXKbMJkn7ILvVpmPnPjzSZsPgkE+qh6rfvdmbX3HDg6MHq6iyyh5r60amFCPf4kZ9nYdt/URt56kuOzsSH1ZjFSkPfVAFfWbqXP+JrTNo' '-proj' '/home/vpulav2/Work/Jasper/module_i2c/module_i2c/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/module_i2c/module_i2c/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
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
  ${RTL_PATH}/property.sva
exit
