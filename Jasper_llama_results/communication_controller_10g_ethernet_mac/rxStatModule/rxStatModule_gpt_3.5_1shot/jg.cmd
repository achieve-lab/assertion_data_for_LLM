# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:08:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 516680
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36535' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/PCoJAEMY/iyQ69BwRFER189wtLIKuEllWSCu2VnSpR+1N7Kdk4KEZdnbm+7PMOpK8Z57nKqP5oLjyNSN/4by/jeeoHsXcqCPLV+2WWpW5kricrgY6yyhQpExHkD7IRjFpdAPP4C/UhDRKZbVTCO5rhbqNeg9zpe+x60JruFR3WMs7VnNcIf4Y35B5Syd18CXojE5Mk7+OYq8ELNAY95R7xDYHFLb8wwdbvijP' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
