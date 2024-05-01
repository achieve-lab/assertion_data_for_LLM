# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-29 13:30:31 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 5123
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42203' '-nowindow' '-style' 'windows' '-data' 'AAABKHichY5NCsIwFIQnikVceAQPIOgJunZbRXArYuNvMSW2Km70qN4kfhUrdOUMee9lZl6IkRQ/Qgj6oH2nREo0gT+Y13eIjZqo7q2mMns2utSpl+tIxOlrpJOcltqq1B5liLJSBp2u6CX+mZpDJ69CVil6ojnpLukNzoV5zF+nWuBZUju61423Uui1RrHUI7mCnrHRYzvHczpwG/zZq/AG5J8mQA==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck/.tmp/.initCmds.tcl' 'FPV_eth_rxaddrcheck.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxaddrcheck.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
