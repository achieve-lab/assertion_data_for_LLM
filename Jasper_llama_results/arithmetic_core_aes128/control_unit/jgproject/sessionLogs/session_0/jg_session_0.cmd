# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-11 15:30:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 198629
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38687' '-nowindow' '-style' 'windows' '-data' 'AAAA+HicJY7NCgFhFIafyV4uQ8okpSwsbFiIiLKd/Eyakk/MpGzcqjsZj2/O6fy9vec9JwEmn7quidZ6mzosWbFlZl6zt8KCEUPGDJhy4sCZnJtdTkVhTXnZH3lSEnjYp+JXvZAXzE+R3L2quZR8m8ok+d812vQjNeMSRaEncogiQflM9KZMxV3/HymjYOaTO9ld5mx8N/OdILOUEdxt9grn1DiJaD/5jikh' '-proj' '/home/vpulav2/Work/Jasper/control_unit/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/control_unit/jgproject/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/property.sva
