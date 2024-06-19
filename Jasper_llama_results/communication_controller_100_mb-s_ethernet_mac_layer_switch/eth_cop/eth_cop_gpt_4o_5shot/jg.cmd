# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:48:18 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 920224
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38983' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY5PD8FAEMV/JRpx8BGcRcKJW8+uJRLXRqqUiN3QkrjwUX2Tet2oZM1k58+bN7MvAKJnVVU4az8UQmLm8p8F728RBfhW9y0fWb68DJ1muaGEen3GnDEk7Ck5CBkJ2XCSG+7CS82vilZuuFCQsRUesxK7K/ZOk5vqgbQuWGuWiZUrp9qwTNSlugc9sa1uGI7qhn+8WoMVkjB1imb6N1dVOLUf1WQktg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
