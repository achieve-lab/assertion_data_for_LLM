# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:19:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 520583
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35199' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY69CsJAEITnFINY+AzWooKIXWrbKIJtEE1MRLygiYKNPqpvcn4JRgjucvszM7u3RpL/dM6psvaD4CnQAv+ZeX8L36hpZd9qIqtXI0uderiWeLy+xjrLKtRBhVKQIchWJ9zqDl7AX4kZbnVRrkh78EBr1F3UMcyNesCtS23gIlQJOWZjzNSEfsdGqYc+Y4vVkW70pyzvyMBCzZiak6f8nsDk1c0fthElbw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
