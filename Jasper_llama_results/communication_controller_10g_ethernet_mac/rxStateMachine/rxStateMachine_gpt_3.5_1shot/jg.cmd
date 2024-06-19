# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:18:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 337475
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37861' '-nowindow' '-style' 'windows' '-data' 'AAABQHicfY/NCoJQEIWPRRItepCoICJo4bpdWARtJezHIrxiWtGmHrU3se9KBm6a4c7POWeGuY4k71kUhUprPgiufM3wnznvb+E5qpvtG3Vk+aplqVUNVxKX19VAsYwCHZTrCNID2eiMG93Ac/gLMcGNUmXaaQvua4W6jXoPc6Xuc+tCa7hUd9iMPVY9J4eK2B7TDcFCtksdZhO0Rie66d8pe18CHmjMhgl5xFURs1n5lw+xPSo/' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
