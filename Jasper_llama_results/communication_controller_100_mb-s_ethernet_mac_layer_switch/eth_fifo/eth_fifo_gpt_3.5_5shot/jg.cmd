# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:19:19 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 520708
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45649' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY69CsJAEIQnikEsfAZrURtJl9o2imAbRHMmIl7QRMFGH9U3iV+CEQ53uf2Zmd1bT1L4rKpKjXUfBF+RFvjPvPe3CD25VvcdF1m9nCz12uFW4vOGmuosq1gHlcpAxiBbnXCrO3gJfyXmuNVFhRLtwSOtUfdRG5gb9Yhbl9rAJahSsmGjYWpGv2OjNECfs8XqSDf5U9Z35GCx5kwF5IDfU5iiufkDtkklcw==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
