# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:04:40 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 936152
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45115' '-nowindow' '-style' 'windows' '-data' 'AAABTnicjY/NCoJQEIWPRRItepCgVrWTlm0tgrYSZqlEV0wL2tSj9ia370oG7pphZs6c+blzPUnB01qrRvoPnK9QK/Qn3vsLAk9dcXmvy2xenSgN2uG2xcfGmuoio0gn1cpgJjB7nVGjO3xN/YovUKNSlRId4ENt6R7SfaRyA8+5da0dtYSulFiCYiyj7pBhVwVr2D4DxURpxI6iYXOy5V/T7t6CLOJVd/2CG1NQ1fzsA3BmLiY=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
