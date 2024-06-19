# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:27:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 897820
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39109' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY/NCsIwEIS/Khbx4IMIij94Kx69VhHEW/GnakVNsa2CF31U36ROgwq9uUM2m9nZSeIA3iPPc2xU70ouPmPhF87rU3gO5SjOlTIzfZZ2qH2HvxJXq0mbM4aAHRmRmJaYJUfBcBOfqZ8ox4LhQkrIRrzPTOq61Ft1rqr7euuEufUKlXt0LVbyS8QsxJ00G8mnI5+17oCGHGL5Gg46jf6YLfxjzQcM5DO06oS9Oqn91xs6DSrZ' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
