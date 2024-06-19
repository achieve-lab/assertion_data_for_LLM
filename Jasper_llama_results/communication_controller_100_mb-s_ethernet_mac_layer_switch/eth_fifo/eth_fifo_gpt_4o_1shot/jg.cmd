# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:19:25 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 520812
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40801' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY67CsJAEEVvFINY+A3WgoJgmdo2imAbRLPGIO6iiYKNfqp/Ek8WI8QZ5nXnziOQFD2rqpKX7gMXKtYC/Unw/iZRoLbUdaeNrF6tKPWa4YYSYkNNdJZVooNKHUHGIFudUKs7eEn/ineo1UWFUu3BY61h92EbOjfyEb8utaGXwsqIho2GqSn1jo3SAL5ji1Xub/0z6z8cWKK5r2bczsgK//EHcMUleg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
