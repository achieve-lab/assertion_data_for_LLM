# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:46:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 917964
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39681' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY87C8JAEIS/KAax8IcIigELi9S2UQSxCz7iC/FCHio2+lP9J3FyGCGVO9ze3uzssOcA/rMoCmw0H0ouARPhF877W/gO9SjfjToze9VuaFXDlcTV6dLngiFkT85RTE/MirNguInP1U+VY8GQkBGxFR8wl7ot9U6dq+qBdp2ysF6RssfQYi2/VMxSXMJduoyN/KGj6Vic4aTX+M9c6RtrNmRkN/bUPajK7G8+iSspXg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_rx/ge_1000baseX_rx_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_rx.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_rx.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
