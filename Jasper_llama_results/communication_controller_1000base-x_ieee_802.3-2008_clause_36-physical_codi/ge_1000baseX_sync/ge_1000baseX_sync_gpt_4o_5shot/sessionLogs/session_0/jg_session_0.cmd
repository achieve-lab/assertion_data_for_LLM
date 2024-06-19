# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:20:20 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 893949
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42787' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY9PD8FAEMV/JRpx8EEkBOHWs2uJRNwaqv5FbKMt4cJH9U3qdaOSnszLzsy+mXk76wDeM89zrNUfci4+E+FnzvubeA5VK+61KjN7VSI0yuGyxdVp0+WMIWBHxkFMR8yKk2C4ic9UT+RjwXAhJWIj3meu7qa6t6pclQ+165SF1YrkB/Qt1tJLxCzFJdylF9KTTqg3oCWFWLqGo13u/2yhH2s+YGQ3H6uyV5baX30A9KYrEA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
