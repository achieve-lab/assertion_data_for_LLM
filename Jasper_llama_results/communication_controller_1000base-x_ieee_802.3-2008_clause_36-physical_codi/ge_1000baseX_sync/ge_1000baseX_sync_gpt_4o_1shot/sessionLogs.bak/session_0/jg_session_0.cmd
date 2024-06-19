# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:16:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 886959
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44699' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCsJADIS/Khbx4IMIihWPPXutIoi3orX+IW6xraIXfVTfpE4XK/Rkhk2yk2Q26wD+sygKrDUfci4BE+Fnzvub+A51K++NOjN71SK0quGqxdXp0ueMIWRHzkFMT8yKk2C4ic9VT+UTwXAhI2YjPmCu7ra6t6pclY+065SF1YrlPYYWa+mlYpbiUu7SixhIJ9Ib0JFCIl3D0S73f7bUTzQfMrabe6rslWX2Vx/0bisM' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
