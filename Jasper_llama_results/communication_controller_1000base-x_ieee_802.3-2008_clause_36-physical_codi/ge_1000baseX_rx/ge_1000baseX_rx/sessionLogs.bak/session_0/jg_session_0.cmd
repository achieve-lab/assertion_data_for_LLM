# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-02 13:38:19 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 164962
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44149' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY7LCsIwEEVPFIu48BP8AEHRfdduqwjiTnxUUcSUPlTc6Kf6J/E2WKEr55LJ5MydIQYIn845fDQfSgERE+kX5v0tQkM9ynejTmav2g2tariyBDpdBlywrDhQcBTpi6w5S5abeKF+ppxIlpScmJ14xFzuttx7da6qh/rrlIXfFSuPGXlttC8TWYql3OXL2Wo/dDSdiFlOevX+zJXxAXovJEo=' '-proj' '/home/vpulav2/Work/Jasper/ge_1000baseX_rx/ge_1000baseX_rx/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/ge_1000baseX_rx/ge_1000baseX_rx/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_rx
exit
