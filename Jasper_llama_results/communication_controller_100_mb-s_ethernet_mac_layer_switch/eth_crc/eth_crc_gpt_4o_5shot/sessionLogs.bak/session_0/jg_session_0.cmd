# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:49:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 923350
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44243' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7NDsFAFIW/IRqx8AjWImHFrmvbEoltI1VKxDS0JDY8qjcZpxOV1L2Z+3POmZljgPDpnMNH+6ESEDFX/sK8v0NoaEa1t5rI8tXo0Kkv15JAp8+YM5aYPSUHISMhG05Ky114Kf6qmistFwpStsIjVlJ3pd6JuWkeyOuCtbhUqkw9kT5hoi3Re9CTOhdmOWob/ukqD7mQmKl3NNO/mabCu/0A0WAkog==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_crc/eth_crc_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_crc.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
