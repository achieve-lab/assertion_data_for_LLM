# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:08:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 941118
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45285' '-nowindow' '-style' 'windows' '-data' 'AAABVHicjY/NCoJQEIWPRRItepCgNmErVy3aWgRtRcqyMJW6FrSpR+1N7POSgbtmuPNz5sxhriPJf1ZVJWvdB8FVoAX+M+f9LXxHbav7ThtZvVpZ6jXLDcXlDTVWplyhDip1BBmBRErxXHfwkvmVWOC5LjKKtQMPtIbdh71ncqOecetSG2YxrIRs4Ed2/4y20RaFzKI5+hOLpGwOUCkseqKb/7lf31zQhZqi5ZE9mAkzY//3Aaa3Lz0=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
eixt
exit
