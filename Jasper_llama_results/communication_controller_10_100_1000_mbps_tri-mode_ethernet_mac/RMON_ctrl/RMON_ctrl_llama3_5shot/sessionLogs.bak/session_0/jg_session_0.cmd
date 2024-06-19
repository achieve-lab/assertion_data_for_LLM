# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:54:38 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 35530
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45291' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5LD8FQEIVPiUYs/AhLwUbsurajHolt05R6BLeplsSGn+qf1OdGJU3MZF7nnLlzHUneoygKWavfSa58jfGfOa9v4zmq2meuVZH5s1KlRrlcSlyirb7OMgq0Va49SBck1BE3uoHn8BdyghulyrTRGtzXEnUTdQxzpe/w15lWcAtN4Kd0EfqUtwbUiCq12EjAjA5MvT/awF4PdSKGTCPu79Bn9tdv3+slhw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
