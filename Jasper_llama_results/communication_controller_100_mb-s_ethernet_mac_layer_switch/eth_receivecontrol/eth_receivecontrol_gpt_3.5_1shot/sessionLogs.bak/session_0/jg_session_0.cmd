# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:04:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 934869
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32867' '-nowindow' '-style' 'windows' '-data' 'AAABUHicjY/BCoJQEEXvK5Jo0YcEBVHuXLRqaxG0lTBLI3piWtCmPrU/saNk4K4Z3syde2eGeUaS9yzLUrV1HwRHvpb4z8z7CzyjtlV1p82sX60s9ZrhpsXhDTXWRVaBjiqUwIxgdjrjVnf4Av1KTHGrTLki7eF9beju031AuYHn3LrSFi2iKyZnoJCXoFfIsiuHtWyfgEKyNGBHWrMnqsVf09W9KVWgGZtc8pQrY7S8/tsHxvIuFw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
