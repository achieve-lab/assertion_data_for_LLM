# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:18:49 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 51066
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39103' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NDsFQEIW/Eo1YeBAJwcqia9sSidg1Rf0Ft+kPYsOjepM6blTSlTmZuTNnzkzmOoD3KIoCa/W7govPWPiZ8/omnkPVPnWtykyflRca5XApceVtupwxBGzJ2YvpiAk5Coar+Fz9VDEWDAkZEWvxPjOpm1Jv1Lko7+nWCXO7K1Ic0LdYal8qZiEu4SZdxkr7oaXpWJzhoGr0Zy6wV4Wc5EOrS9lpNrO/eQOH9SlK' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
