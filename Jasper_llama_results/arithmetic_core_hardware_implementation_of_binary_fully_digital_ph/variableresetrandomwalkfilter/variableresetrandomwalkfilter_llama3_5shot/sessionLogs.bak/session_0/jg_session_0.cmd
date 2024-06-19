# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:41:05 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 54795
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46029' '-nowindow' '-style' 'windows' '-data' 'AAABeHicnZDNDsFQEIVPiUYsPIiEjdhZi10JsW0uivrpbaolseFRvUl9bVTSrZl0fs6cOff2OpLGzzzPVVrzQXDlaYL/zHl/i7GjuhV9o47MX7UstarliuLyddVXJCtfe2UKQXogRmfc6g6eMb8SY9wqUapAW3BPC9ht2DsmN+opd51pxczAC4lrVALqAIWAzQQsYtvqgnZxyontkJyWvAF5Qyd10I1BrI50S/T/1fTLfzFMjYZ0I/YOsNPyDT4uFTb9' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_hardware_implementation_of_binary_fully_digital_ph/variableresetrandomwalkfilter/variableresetrandomwalkfilter_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_ariableresetrandomwalkfilter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/variableresetrandomwalkfilter.v \
  ${RTL_PATH}/randomwalkfilter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
