# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 15:36:04 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 127966
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39173' '-nowindow' '-style' 'windows' '-data' 'AAABGHicdY69CsJAEIS/UwxiYekjWAj6BGlEsJMogq1I/CEiXjiNio0+qm9yTsQIVzjL7ezOzi5ngPjhveeD+l0pImGs+MG8vkVsCFH2tVCZPQOGRrVcWSK9Nn2OWJbsKMik9KSsOCgsV+mF5iflXGFxnNmwlp4wl7sp91aTi+qu/jplodmEISOx46acasfp3kCciqGlrVyaZa+u88df4g1VmSJG' '-proj' '/data/vpulav2/Work/Jasper/MAC_rx_ctrl/MAC_rx_ctrl/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/MAC_rx_ctrl/MAC_rx_ctrl/.tmp/.initCmds.tcl' 'FPV_MAC_rx_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_rx_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
