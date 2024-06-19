# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:44:07 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 913070
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45959' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/JCsJAEERfFIN48EMERUHBQ85eowjiLbjEDXFCFhUv+qn+SawMRsjJLqanp7q66HEA75nnOTbqDyUXn4nwC+f9LTyHahTvWpWZvSo3NMrhUuLqtOlywRCwJ+MopiNmxVkw3MRn6ifKkWCISQnZiveZS92UeqfOVXVPu05ZWK9QeUDfYi2/RMxSXMxdupSN/KGl6Uic4aTX+M9c4RtpNmBoNx6pe1CV2t98AIljKWI=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
