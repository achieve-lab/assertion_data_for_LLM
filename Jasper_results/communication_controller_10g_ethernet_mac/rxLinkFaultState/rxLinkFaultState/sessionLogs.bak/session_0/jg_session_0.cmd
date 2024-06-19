# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-12 17:00:14 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 81223
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45055' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY49CsJAFIS/VQxi4RmsBcUDpLYSogRsZfEPNWRDNCo2elRvEifBCFs5j/c3b2ZZA4TPsiyp0X6oBERMFT+Y93cIDT6qveUzi5fXodOYG0mg7DMixbFiT8FBzFCMJVE4buIL3c+qmcKRc2HLRnxELHVX6p0uV80T/XXOUrecOzO9lnISZ+VO5IuVtvaPVdfioCd/Jr3jqG3w11nhA30+Jug=' '-proj' '/data/vpulav2/Work/Jasper/rxLinkFaultState/rxLinkFaultState/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/rxLinkFaultState/rxLinkFaultState/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v
exit
