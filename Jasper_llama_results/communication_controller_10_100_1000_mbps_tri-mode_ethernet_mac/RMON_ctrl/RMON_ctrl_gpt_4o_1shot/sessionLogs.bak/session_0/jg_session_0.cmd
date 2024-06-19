# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:59:42 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 871074
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36585' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEITnFINY+BCWooJgmdpO4w/YBon/iBdiomCjj+qbxC+HEQLucrtzM7N3ayT5zzzP5aL+oHgKNCZ/Yd5f4BtVo7jXqsz8VelSoxwuLR6nrb4usgq1V6YjTBdmrTNpdYfP0K/UmLRKlGqrDXygJe4m7h3KDdxh15lWaAtN0KegCH/CWwN6RJdaTMRwViduvT/eYpcYHGrkNhvy/wGUuq0/4Ncllg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
