# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:08:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 940505
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36197' '-nowindow' '-style' 'windows' '-data' 'AAABVHicjY/NCoJQEIWPRRItepCgIKJWrlq0tQjaipRlYSp1LWhTj9qb2OclA3fNcOfnzJnDXEeS9yzLUtbaD4IrXwv8Z877W3iOmlb1rSayejWy1KmXa4rL62uoVJkCHVToCDIACZXgme7gBfMrMcczXWQUaQfuaw27C3vP5EY949alNswiWDHZwA/t/hltoy0KqUUz9EcWSdjsoZJb9EQ3/3O/ujmnCzRBa0oew4yZGfu/D6Z/Lzk=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_transmitcontrol/eth_transmitcontrol_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_transmitcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_transmitcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
