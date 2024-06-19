# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-10 13:11:50 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 160197
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42349' '-nowindow' '-style' 'windows' '-data' 'AAABFnicJY/BasJAFEVPKIhIKX5Av0BQilBw4UIKdlEqSgpug9ZUUtSEmlRw46/6J/FknGHuu/Pem3fvRMD4Utc1YT2chS6fzIiZinOWRvjglSEjXpjwzYoNKQdZSkVmHHCSrzlSkvMnH5jfuTP7cvFoJvVddVeKrvfIOBJanif6oTVhG4ZC28wPBf/yZ95ZaCZRJFMk1sTekaXiO+sdewuFc369Pcqa+lvohZ7VVbCTazRx/kFDlS+KYLcM1hK/+9V4ugFHPSw1' '-proj' '/home/vpulav2/Work/Jasper/bitRam/ramBit/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/bitRam/ramBit/.tmp/.initCmds.tcl' 'FPV_bitRam.tcl'
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
  ${RTL_PATH}/ramBit.v
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
