# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:44:54 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 715399
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40975' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIS/KAax8EEExUIbSW0lRAnYhuC/hlyIiYqNPqpvEieHCqncZffmZmeOPQfwHmVZYqN5V3PxmSp/4bw+wHOoR3Vv1JnFs3ZC62v+SlxVlz4JhpAdBQcxPTERsdJwFV9oflZPlYaMnA1r8T6B1G2pt5pchIfadc5Ss4wbM72WcBIXyR3LF6gi6x+or8RBR/5UesNRt8lfZ7VnKhQysluPtdteKLc/egPQsiwA' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
