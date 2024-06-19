# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:06:23 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 28559
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46799' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/PDsFAEMa/Eo04eA6RkODas5uUSFybRlFStqkt4sKjepP6aVTSg5ns7Mz3ZzPrSPIeRVGojOad4srXlPyF8/o2nqN6fOZGHVk8a7fUqsyVxOV0NdBJRoF2yrUH6YOESkijK3gOf6ampFEmq40icF9L1G3UW5gLfY9d51rBZbrBWt6xmuGK8Cf4hsxrOqmDL0VndGAa/3UE5SahjpwJ04hdYnhb/uANDn4oxw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
