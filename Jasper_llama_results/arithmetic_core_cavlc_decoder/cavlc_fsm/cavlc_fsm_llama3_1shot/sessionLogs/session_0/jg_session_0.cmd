# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:23:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 133607
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39743' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY6xCsJAEEQnikEs/AhLUUFsU9tGEWxDiEYj6gVNItjop/on8XkY4cBdbm92dmbvPEnBo65r2WjfKb5CzclfeK8vCDy58elbLrN8OrfUacyNxOf0NdZZRpF2KpXBDGFiHUmjG3zJ/ErNSaOLCm21gQ+1Qt1FnTKpwAP+utCaWcKGig0JOMV90gRfAiP1cOTsMTrQjf5oI/t6DIo1o5vC7tEX9tdvEV4mPw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_fsm.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_fsm.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
