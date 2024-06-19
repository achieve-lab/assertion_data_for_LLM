# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:31:03 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 46936
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37543' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/KAax8DEsBEWt00jATqIItiH4L+qFmKjY6KP6JnEMRrjCXW5nd3b2GAfwHnmeU0T1ruISMFL+wnl9G8/Bjs9csZnp00KolcelxNVr0uGEIWRDxk5MW0zEQWm4is+0P6vGSkNCyoql+ICZ1HWp19pc1LfkdcJcuzFDfGHKTdUXJvqvK1wIoaGrWJxhr6n3Rx8WLiKOegNNffnY6iYt3L8BH7cnCg==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_MAC_tx_Ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_tx_Ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva
exit
