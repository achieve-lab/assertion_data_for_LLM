# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:55:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 649456
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39475' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY67CsJAEEVPFINY+BGWolbapbaNotiG4CuKuIsmCjb6qf7JerMYIeAMOztz9t5lAiB6Oufw0XyohMRMlb8I3t8mCqhHOTfqZP6q3dCqzJUk1Oky5IwhYU/BQaQvknJSGu7ihd6vqlZpuJCzZSMes5C6LfVOLzf1Pe06Y+U9qVcuVVPvH2la60/oyGHFDUdNgz/achcrkjD2m03EMnW53/oDHjomgg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
