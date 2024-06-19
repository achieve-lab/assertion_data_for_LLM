# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 14:36:15 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 94458
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44353' '-nowindow' '-style' 'windows' '-data' 'AAABLnicdY7NDsFAFIW/IRqx8Bwi4Qm6ti2R2Iq0gwqmKUVseFRvMk6bVtKFezP355xz71wDhC/vPZV1nwoBETP5z8ynLkJD28q+00YW71aGXjPcSAK9IRPOONbsKEiFjIVsOModd+GF+ItiJnfkXLEkwiOWUvel3oq5qR7p1jkrcVaqvXLOo65P2hkzVR1rMww0l4l3HKo//02UdzlNJOpTXWKry7/RHCem' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxethmac/eth_rxethmac_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxethmac/eth_rxethmac_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_rxethmac.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxethmac.v \
  ${RTL_PATH}/eth_rxstatem.v \
  ${RTL_PATH}/eth_rxcounters.v \
  ${RTL_PATH}/eth_rxaddrcheck.v \
  ${RTL_PATH}/eth_crc.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_rxethmac
exit
