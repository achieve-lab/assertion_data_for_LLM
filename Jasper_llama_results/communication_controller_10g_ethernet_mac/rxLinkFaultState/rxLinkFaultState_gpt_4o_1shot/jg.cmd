# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 16:00:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 722451
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45405' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIS/KAax8EEERcFKUlsJUQK2IfivIRdiomKjj+qbxMmhQip32b252ZljzwG8R1mW2Gje1Vx8pspfOK8P8BzqUd0bdWbxrJ3Q+pq/ElfVpU+CIWRHwUFMT0xErDRcxRean9VTpSEjZ8NavE8gdVvqrSYX4aF2nbPULOPGTK8lnMRFcsfyBarI+gfqK3HQkT+V3nDUbfLXWe2ZCoWM7dYj7bYXyu2P3tB6K/w=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
