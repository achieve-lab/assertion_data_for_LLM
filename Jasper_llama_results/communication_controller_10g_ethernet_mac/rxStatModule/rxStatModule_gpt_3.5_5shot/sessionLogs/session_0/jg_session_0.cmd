# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:08:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 516802
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42549' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/PCoJAEMY/iyQ69BwR1KW8ee4WFkFXiawspBVbK7rUo/Ym9lMy8NAMOzvz/VlmHUn+sygKVdF+UFwFmpG/cN7fxnfUjHJuNZHlq3FLndpcS1xOXyOdZRTqoFxHkCHIRglpdAPP4S/UlDTKZLVTBB5ohbqLeg9zpR+w60JruEx3WMs7VnNcEf4E35h5Syf18KXojE5M07+Ocq8ULNQEt8ftsU2MwlZ/+ABb9ijT' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
