# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:48:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 919994
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45481' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY69CsJAEIS/KAax8BGsRVAQLFPbRhFsg8RoFPEOTRRs9FF9kzg5jHDucvszO7s3ARA9q6rCWfuhEBIzl/8seH+LKMC3um/5yPLlZeg0yw0l1Osz5owhYU/JQchIyIaT3HAXXmp+VbRyw4WCjK3wmJXYXbF3mtxUD6R1wVqzTKxcOdWGZaIu1T3oiW11w3BUN/zj1RqskISZUzTVv7mqwqn9ANUsJLI=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
