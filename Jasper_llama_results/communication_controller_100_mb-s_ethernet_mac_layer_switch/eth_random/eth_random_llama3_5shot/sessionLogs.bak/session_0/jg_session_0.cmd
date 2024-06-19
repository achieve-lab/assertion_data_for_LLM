# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:13:49 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 54617
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33381' '-nowindow' '-style' 'windows' '-data' 'AAABLnicbY69CsJAEIS/KAax8CmsBNOIXWrbKIJtCBqNorkQEwUbfVTf5BwPIwTc5fZnZvYYDwgf1lpcdO8qPhFz5S+813cIPdrx2TttZPlsdeg1x43E1xsyIccQs6fmIGQsJOGkNNyE1+IvqoXSUFKRshUesZK6L/VOzFXzSF4XrMWlUmXqpX7KpTacCYRt9CsMdFOIMxy1BX/VsXOQaEqYapvJQyamcs7fvEYnLQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_random/eth_random_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_random.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_random.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
eixt
exit
