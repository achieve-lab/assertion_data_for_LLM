# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:59:36 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 870652
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46073' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY69CsJAEITnFINY+BCWgmkkXWo7jT9gGyRqVMQLMVGw0Uf1TeKXYISAu9zu7MzssUaS/yyKQlW0HxRHgSbkL8z7C3yjZpRzq8ksXo0uderl2uLw+hrpIqtQsXIdYYYwG51Jqzt8jn6lJqRVqkw7beEDrXB3ce9RbuABt861Rltqij4DRfhT/nLpEV3qsZHAWZ2Y3D/e8pYEHGqM7tE9LjiwkVV3fwAmpiWP' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
