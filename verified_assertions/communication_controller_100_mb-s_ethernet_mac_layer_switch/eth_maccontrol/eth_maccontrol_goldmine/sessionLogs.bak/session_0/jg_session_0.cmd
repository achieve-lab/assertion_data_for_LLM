# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 17:07:43 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 52674
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42233' '-nowindow' '-style' 'windows' '-data' 'AAABNnicfY9BCsJADEV/FYu48CCiPUHXbqsIbkXaUSvWKdoquNGjepPxdbBCNyZMfvJ/EjKBpPjpnJO3/oMQKtEc/1nw/iZxoK41da/LLF8dlAbtcNsS8saa6SyrjfaqlcNMYLY64VZ3+Br9Sixxq4sqGWXwiVZ0D+neodzIp9y60BrN0HUACzaluGVHxaxla0SWgtKI2dKzR6ro71RzX4MZag5v/A8+JQIpWg==' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_maccontrol/eth_maccontrol_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_maccontrol/eth_maccontrol_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_maccontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_maccontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_maccontrol
exit
