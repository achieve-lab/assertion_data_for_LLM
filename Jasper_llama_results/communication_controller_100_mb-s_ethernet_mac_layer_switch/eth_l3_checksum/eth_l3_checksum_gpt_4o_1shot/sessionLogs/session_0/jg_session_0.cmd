# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:59:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 931144
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41085' '-nowindow' '-style' 'windows' '-data' 'AAABQnichY9BD8FAEIVfiUYc/BAJiXBw6Nm1ROLaCKUo29CSuPBT/ZP1daOSnsxk38y8eTOZ9SQFT2utnDUfgK9QU/xn3vubBJ7qVtaNOjN/1aLUqoYric/rqq+zjCLtVGgP04NZKcWN7vAF/SuY4UYX5Yq1gQ+1QN1GvaVzIx9w60xLejGqhJhqBK7JY/Do9pzQ5VQpEx2mM3YaHagmf+bKGzMUkcbu4iF8Qpa733wABG4q8A==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
