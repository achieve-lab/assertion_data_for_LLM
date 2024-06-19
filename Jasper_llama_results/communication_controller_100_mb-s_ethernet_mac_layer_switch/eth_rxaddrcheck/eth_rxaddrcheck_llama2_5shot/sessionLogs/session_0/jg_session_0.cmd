# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:06:51 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 59291
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45287' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY/NCoJQEIWPRRItepCgFkHQwnVbi6CtSFpW1hW7VrSpR+1N7EsycNUM83fmnMtcR5L3KMtSlbXvJFe+ZvjPnNe38Rw17TO3msji2ahSpxbXFJfoa6iTjAJtVWgHMgAJleJGV/CC/Zmc4Ua5rGJF4L6WsLuwN2wu9CNunWvFLoaVUHPdeCvCc61BYvIBnqWmKHqoM3ZGe6bpH11QXRXqSIyZJtyVoLXVb94lqCtE' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_rxaddrcheck.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxaddrcheck.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top eth_rxaddrcheck

# Set up Clocks and Resets
clock MRxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
