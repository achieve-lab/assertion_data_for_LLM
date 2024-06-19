# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:07:39 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 52557
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37077' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY7NDsFQEIVPiUYsPIdISLDt2rZEYts0XFRwG21JbHhUb1JfG5XchZnM3zln7h1PUvAsy1K1tR8kX6Hm+M+897cJPLlWzS0XWb6cKnWa5UbiE32NdJFVpL0KJSBDkFgn3OoOXsBn5BS3uiqX0RY81Ap1F/UO5kY/4NaF1nAG1YGakRP4nD3DD2O6DS9LPfZSUKsj0/TvRlRfEutMzJgmtcLCV/YBFhoo5w==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
