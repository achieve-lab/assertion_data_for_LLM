# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:56:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 929299
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42617' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY9BD8FAEIVfiUYc/BAJFyQOPbuWSFwboRRlG1oSF36qf7K+blTSk5nsm5k3byaznqTgaa2Vs+YD8BVqiv/Me3+TwFPdyrpRZ+avWpRa1XAl8Xld9XWWUaSdCu1hejArpbjRHb6gfwUz3OiiXLE28KEWqNuot3Ru5ANunWlJL0aVEFMNwTV5DB7dnhO6nCplosN0xk6jA9Xkz1x5Y4Yi0shdPIZPyHL3mw8Epir0' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
