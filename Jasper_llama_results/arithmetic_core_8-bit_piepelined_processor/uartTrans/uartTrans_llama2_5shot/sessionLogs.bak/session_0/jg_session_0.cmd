# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 17:18:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 115542
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33787' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIS/Uwxi4UNYiloIdqltoyi24fAvinpBEwUbfVTfJI6HEQLusns7szN3Z4DwURQFPup3tYCIsfIX5vUdQkM1PrhWZabPygmN0lxKAlWbPiccMVtydmK6YiwHpeMmPtf+op4qHWcy1qzER8ykbkq90eaquaO/Tlh4j/XKubr1/oHQUndCS45UvGMv1Pujjf3rlqNqKDQSl0if+V+/AR0EJm4=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/uartTrans/uartTrans_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_uartTrans.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartTrans.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top uartTrans

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
