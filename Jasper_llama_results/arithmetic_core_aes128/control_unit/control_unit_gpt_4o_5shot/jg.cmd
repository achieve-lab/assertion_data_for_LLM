# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 17:14:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 757037
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40447' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEITnFINY+BwiaCHapbaNItiKxL9ISI6YKNjoo/om8cuRCCncZf9mZo89I8l/lWUpZ90nyVOgJf4z86kb36ht1dxpI+t3q0q9ZrmReMRQEyVKtdNZhSKQMcheMZ7qAV7A38gWT5Up11EH8EAb1H3UJ5g7/YhbV9rChSgTlBk1rt+ImKdECCIN2LOOvzLN/m5Ud1lX5+7KBbdc6HL3gy8qKilG' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/control_unit/control_unit_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_aes128/control_unit/control_unit_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_control_unit.tcl'
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
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
