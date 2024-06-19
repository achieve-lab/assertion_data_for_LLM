# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:06:55 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 59370
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45223' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NDsFQEIVPiUYsPIiERGwsurYtkdg2jZai3KZuERse1ZvUp1FJV2Yyf2fOuZnrSPIeZVmqsvad5MrXDP+Z8/o2nqOmfeZWE1k8G1Xq1OKa4hJ9DXWSUaCtCu1ABiChUtzoCl6wP5Mz3CiXVawI3NcSdhf2hs2FfsStc63YxbASaq4bb0V4rjVITD7As9QURQ91xs5ozzT9owuqq0IdiQnTmLsStLb6zRslgitB' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_rxaddrcheck.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxaddrcheck.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva
exit
