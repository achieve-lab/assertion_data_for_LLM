# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-15 11:34:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 53652
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37467' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY8xCsJAFERfEEQsxBN4AMEggmCRwkYLURQF2xBNlEjIBpNVsPGq3iSOm8q/7J/PMPtn1gOCd13XuGq91Pqs2bBnob7lKIQVUybMGDPnTERMQq4pwZIKfZ6aT5RUGO6affGZTiqdUS/FJHpnGyfv0yCBp9bW7TFy0pCrWwodMRcKHpoHLNkpTOgYK/yFiLW0kn0mxVDqyFkahQmlyWVqpS5cpMrZh/rSQequ1IVYw815/29VfQFDKC0h' '-proj' '/home/vpulav2/Work/Jasper/fpu_add/fpu_add/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/fpu_add/fpu_add/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property.sva
exit
