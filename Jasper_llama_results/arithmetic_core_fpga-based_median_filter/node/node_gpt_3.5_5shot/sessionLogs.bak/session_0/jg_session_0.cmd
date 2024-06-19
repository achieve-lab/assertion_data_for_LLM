# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:34:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 843369
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41045' '-nowindow' '-style' 'windows' '-data' 'AAABGHicVY69CsIwFIVPFYs4OPsAToIu0q2zaxXBtYj1pyImaKvgoo/qm8QvxRZ6L7m5OedLcgNJ8ds5pyq6L0qoRAuyieD7b+JA7fDnTltZfVq71Ksv10jIGmqqq4xSHVUqR5mgbHUhjZ7oJf6dakmjmwrtlaEnWkP3oQ84D/oRsy61wfMvZnAz6B0vSQM4y22jM6dxQ/h/LVSqOXTEHvHbCbeoZvwBTIsiJw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fpga-based_median_filter/node/node_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_node.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/node.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
