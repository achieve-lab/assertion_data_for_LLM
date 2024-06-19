# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:00:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 932191
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40859' '-nowindow' '-style' 'windows' '-data' 'AAABMHicbY5BC4JQEITnFUl06Fd0CooiunnuahF0lShLo3xiWtClfmr/xD4lA6Fd3u6+mdlljCT3WRSFqmg/KI48LchfmPd3cI2aUf5bTWT1anSpUy/XEofX10ixrHwdlSsCGYJsdSat7uA5/JWakFapMgXag3tao+6iPsDcmAd4XWoDF6AK6SmXYtRWF43BdlyVeuwkcFYnfpO/6tJPAu5rxuacPsVFCJdV3j8GGScx' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
