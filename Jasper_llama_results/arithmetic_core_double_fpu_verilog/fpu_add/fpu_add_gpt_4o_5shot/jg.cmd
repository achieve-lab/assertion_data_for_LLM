# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:17:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 831849
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39519' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/Uwxi4SNYi6CVdqltowi2IRh/IuIdmijY6KP6JnFyGCHucvszO7s3BgifZVnirf1QCIiYy39m3t8iNDSt6ltNZPlqZOjUyzUl0Osz5owlZk9BJmQkJOEkt9yFF5pfFZ3cciFnSyo8YiV2V+ydJjfVA2ldsNasQgrlRMyUiXY2ugc9sZ1uWI7qhn+8SoMTN2bqFc3070FV7tV+AM+oJJg=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_double_fpu_verilog/fpu_add/fpu_add_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_add.tcl'
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
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
