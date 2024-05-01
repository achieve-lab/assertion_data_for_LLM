# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-15 11:35:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 53852
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40943' '-nowindow' '-style' 'windows' '-data' 'AAABKHicXY9BagJBEEXfIITgQjyA5AABRYRAFi7cJAsxKApum1HHYCLOEGciuMlVc5Px2e6spn9Vf37Vr06A4V9d18RonIU2Ez6Y8yZOWZphzAsDXukzYk3KhoyDVUbFztzjZL3iSEnOj3VPfu/ZqcvFo0xmX3VzSv5vmWEiPHhbdKM08BmHwqPMloJf6yfemblMiExlvi6xcWip/V7Fs+o0WuYuE9QcNK1UF3GlMtoHv7RQ3VRdyOZ8+ercTQ1+JXXud+w3LttDMAQ=' '-proj' '/home/vpulav2/Work/Jasper/fpu_add/fpu_add_backup/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/fpu_add/fpu_add_backup/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
