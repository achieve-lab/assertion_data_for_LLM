# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:38:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 703007
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34229' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/KAax8DEsBMVCu9S2UQTbEOJfVLwQEwUbfVTf5JwLRkjhLrc/szPHeEDwtNZSRfuh4hMyV/7Ce3+HwKMZbm81keWr0aFTi2uKr9dnxAVDxJ6SVMhQSMxZabgLL3W/qmZKQ07Blo3wkJXYXbF3utw0D+R1wVq3mISTeiKF0ztNzlg90b/QkyoTYjhqm/zhO0+Z5ohp5XAmHwdNReX+A2YRKB4=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/ack_counter/ack_counter_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_ack_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ack_counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
