# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:49:16 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 1045321
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46115' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/BCsJADERfFYt48ENEBUE89ey1iuC1SK1WEbfUVsWLfqp/UmcXK/RiwiaTSSZkPSB4VlWFs/ZDwSdkLv+Z9/6CwKNptm41meWrkaFTi+sRX6/PiDOGiD0lBzEDMRtOcsNNfKn+RTGTG3IKErbiQ1aa7mp6p85VeKhbF6zVSzSVKhfciaWyO6wu16axUKzt0JM2E2c4qpr9Vdn7MlURU3ftRFwqVLiffACT1ysI' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
