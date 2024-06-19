# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-29 13:25:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 24446
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46023' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5LCsJAEERrFIO48AQ5gagnyNptFCFbkRh/RCdoouBGj+pNxpdghNlYxfSnuroZIyl6OufUoPsgBIo1gz+Y97eIjHzUfcdXFi8vS712ubUEvKEmOstqpZ0qHVBGKGvl0OqOXjG/EgtodVGpTBv0WEvcfdxbJjfqMX+dK2GW4dqTT1xKoeVGya7l6pQqJUsDdotGPdKFf7dqfABJGSWa' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_maccontrol/eth_maccontrol/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_maccontrol/eth_maccontrol/.tmp/.initCmds.tcl' 'FPV_eth_maccontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_maccontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva
exit
