# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:12:13 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 53821
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39843' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIXPJRqx8AzWEjZi17VticS2aehVgtvQktjwqN6kPjcqqZnM35kzP0ZS+KiqSl7ad1ygSDP0J+b1TUKjpnzqVhNZPBtR6tTDNSXA+hrpJKdYW5XagQxBEh1Qpxt4Sf+Cz1Gnswql2oBHWsLuwrZ0ruQDfp1rRS+FlREtGy1TY+o1G6Ue/JwtTnt/658Z+8uJjtiEasrtDLzwH78Bb9klaw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
