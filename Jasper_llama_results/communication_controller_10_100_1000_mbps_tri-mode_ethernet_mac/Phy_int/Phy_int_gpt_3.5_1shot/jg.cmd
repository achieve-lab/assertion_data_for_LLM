# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:55:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 867744
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40879' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERfFIO48AgeQFAQcZe120QEtyL+kiBO0ETRjR7Vm4yVwQjTzXT1VFd/AiB6WWtx1n4qhMTM5X8LPr8kCvCt/rd8ZvH2EDpNcyMJ9fqMOGNYc6QiEzMUs+EkN9zFV6pfFQu54ULJnp34mKXUXakPqtyUD3Rrwkq1hJSHMFNvyVhvq3nQk7rQDEPuNvm6+obC4VQ9M+FEm1OpS3fvFxRTJJk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Phy_int/Phy_int_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_Phy_int.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Phy_int.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
