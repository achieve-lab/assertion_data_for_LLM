# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:16:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 886726
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34061' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY9NC4JAEIZfiyQ69EOCog+8SceuFkF0kzL7IlJSi7rUT+2f2OOSgbdm2Jndd2ae3bUkuc88z2Ws/iDY8jTBf2a9vxvXUtWKc62qzF6VLDXK4bLFZrXV1VmRfO2U6YDSQVnphEe6oWfUE2KMR7ooVagNuqc53U26t1Su7Ie8daqFYYXEgfrG1/ASlCVaoju8QD04AXdILQgx3EhHTuM/Zgt+zLyvERyH7FDbQ0jNvz5FSSsF' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_sync/ge_1000baseX_sync_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_sync.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_sync.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_sync

# Set up Clocks and Resets
clock ck
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
