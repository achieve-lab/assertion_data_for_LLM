# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:49:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 921784
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34477' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5BCsJADEX/KBZx4RE8gKAg4q5rt1UEt0VqtRVxBm0V3OhRvUl9LVaYhEkmP28mMZLCV1VVaqz7JASKtMT/Zj6/S2jkW113fGX99rLUax+3SMAZaqKLrGIdVSpHGaPsdMatHugl/RvR4VZXFUq1R4+0ge5DH+jcuY/YdaUtvRQqIyfwiaZUCf9JA2iHZnVqJvlcvYNDiTXnzYI8Y3IGXTT7fgEUxyST' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
