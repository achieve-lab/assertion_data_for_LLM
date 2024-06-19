# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:06:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 616022
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38255' '-nowindow' '-style' 'windows' '-data' 'AAABMHicVY7LCoJgEIU/iyRa9AQ9QVCbEFq4bhcWUbQTsTvWL6UFbepRexM7mgbOMLczZw5jAe4ryzIKaz6VbDwm8r9Zn7JxLeqWz406Mn/XKrSq44piK7oMuGDw2ZNyFNIXEhDJDQ/hqfY35VhuuJKwZSPcYyF2W+ydNnf1Pf06Y6VdQCifsmTNUBeh1KAjbiwFw0nTuGSlnBWRpqTQ/13l/8RCfEZScFQdfXEQIyl+/wLQXiau' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/accumulatorMUX/accumulatorMUX_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_accMUX.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/accMUX.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
