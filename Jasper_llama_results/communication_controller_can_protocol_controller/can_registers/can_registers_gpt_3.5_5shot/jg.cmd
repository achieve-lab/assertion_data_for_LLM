# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 16:12:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 267725
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38321' '-nowindow' '-style' 'windows' '-data' 'AAABPHicfY+9CsJAEIQnikEsfBBBG4lV6rRRBNsgUaNBciE/Cjb6qL5J/HIYIY273M7t7Mxy50jyn03TyMbwQXEVKiB/4by/F99RP9p+0Gc2rx5Ko87cSVzOVHNlMoqUqNYFZgaz15U0usPXzEtqThoVqnTUAT7UFvUY9YnJzToDrbVjFrMhAwu0CVtL6yrABbeY3dIEZw5nlNKt/njat+V0kZb4PdCDPeOs7D8+FFsp0Q==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_registers/can_registers_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_registers.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_registers.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
