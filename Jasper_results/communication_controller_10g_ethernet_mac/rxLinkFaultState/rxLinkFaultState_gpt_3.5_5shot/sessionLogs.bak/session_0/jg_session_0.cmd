# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:05:47 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 317667
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38299' '-nowindow' '-style' 'windows' '-data' 'AAABSHichY/NCoJQEIU/iyRa9CBBEUQ7160CC6GtSP8lXjGtaFOP2pvY8ZKBq2aYn3vmnGGuA3jPsiyx1n4oufjM5D9z3t/Gc2ha9W41keWrUaFTi2uKq+gzJMEQsqfgKGQgJCKWG27CC80vyqnckJGzZSPcJxC7K/ZOk6v6sW5dsNIs485c2xLOwiKpY+kCRWT1I+W1MOhJn4pvONnT/imrO1N1IRNtmapOdd1B+tz+6QMjMSv1' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
