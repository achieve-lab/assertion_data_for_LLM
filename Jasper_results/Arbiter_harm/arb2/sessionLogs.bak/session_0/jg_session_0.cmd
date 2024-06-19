# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2022.06
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2022.06p002 64 bits
# build date: 2022.08.24 16:38:21 UTC
# ----------------------------------------
# started   : 2024-04-04 20:59:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 11881
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45171' '-nowindow' '-style' 'windows' '-data' 'AAABLHicJZDBSsNAFEVPEIp0If2OgkUExUUW3dSFKIpCt0Na05ISO8EmVdz0V/sn8XQ6w7x35+W+++4kA/JD3/ekdfFnGPHMC+/MjK/MzfDEHbc8cMOUJQWflGxFJR2VecKPeMGOlsi3eGK9dlfyonFnpbSvO0/KjudMnhkGniuuEzWwTqJwaWVFw158zyNvmgneSgecxKPMoPBeQ8Hqr/lLfp3Gt9qq7Ryq0tgR2STNQrzwMTD2S5FMRu0Hp25V62Q36RFtMhz8CR8np/+6vjDg' '-proj' '/home/vpulav2/Work/Jasper/Arbiter_harm/arb2/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/Arbiter_harm/arb2/.tmp/.initCmds.tcl' 'FPV_verilog_sva_example.tcl'
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
  ${RTL_PATH}/arb2.v
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
