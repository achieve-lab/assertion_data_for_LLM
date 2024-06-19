# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:04:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 878289
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34009' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY+7CsJAEEVvFINY+CGCVtqlTqfxAbYhmPhC3KCJgo1+qn+yng1GSOMMuztzH8OsJyl4WmtVRfvB5StSSP7Ce3+LwFMzXN9qIotX45U6tbmW+Jy+hjrLKNZOpQ4gA5BEJ9LoDl7CX7lz0uiiQplS8Egr1F3UW5hb5Qw11xpuqSn8jCpBm+Jy8zMmjfBvmC31cOYwRke68R+Pe3N8MSq36YR99lRF9YsPbeAoqA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_addr_gen/RMON_addr_gen_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_addr_gen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_addr_gen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
