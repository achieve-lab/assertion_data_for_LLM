# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:32:50 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 92098
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42849' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY5PD8FAEMVfiUYcfAZnCQeJW8+uJRLXZkNpBdvQkrjwUX2T9bNRSc1k5897b2cmkBQ9nHPy1r4TQsWa4T8LXt8iCtS0T99qIotnI0ud+nMtCXl9jXSSVaKdKuUgQxCjA251A6/gL8QCtzqrVKoNeKwl6i7qLcyVesCtc63gUlQZ+cjEnDimXzNR6qEvmGK197v+lYnfbKiMJnRTdmeoS3/xG3N3JXo=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_miim/eth_miim_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_miim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_miim.v \
  ${RTL_PATH}/eth_shiftreg.v \
  ${RTL_PATH}/eth_outputcontrol.v
  

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva
exit
