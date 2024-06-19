# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:07:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 28690
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39719' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY/PDsFAEMa/Eo04eA6RcCBuPbtJicS1aRQlZZvaIi48qjepn0YlPZjJzs58fzazjiTvURSFymjeKa58TclfOK9v4zmqx2du1JHFs3ZLrcpcSVxOVwOdZBRop1x7kD5IqIQ0uoLn8GdqShplstooAve1RN1GvYW50PfYda4VXKYbrOUdqxmuCH+Cb8i8ppM6+FJ0Rgem0V9HUG4S6sgZM03YJYa35Q/eDrYoyw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
