# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 20:59:18 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 77284
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37149' '-nowindow' '-style' 'windows' '-data' 'AAABHnicVY69CsJAEIS/Uwxi4RNYWwjaiF0qC9v4A7Yh/ivqhZgo2Oij+iZxchghu+ze7szc7hrAf+V5jrP6U8kjYCL/m/n8Ct9QtaKvVZHZu/JCo/xcSjxFmz5XLCF7Mo5CekIiznLLQ3gm/qYcyy0JKVs2wgMWUjel3om5q+7o1ilLcYkmXBhrXspAsdY0aEkbi7Oc1HVZOX7utKHbWFQRQ3Uj7TxImbpLvy32I5k=' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/bitRam/bitRam_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ramBit.tcl'
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
  ${RTL_PATH}/property_llama3_5shot.sva
exit
