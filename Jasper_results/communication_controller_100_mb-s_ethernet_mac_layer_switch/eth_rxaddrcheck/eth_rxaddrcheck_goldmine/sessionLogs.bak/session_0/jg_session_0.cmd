# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 12:29:41 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 80225
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43717' '-nowindow' '-style' 'windows' '-data' 'AAABOnichY7LDsFAFIb/IRqx8CAS4gG6ti2R2IpoXavTjBax4VG9yfgqKunKOZlz+S+TYySFD++9PtG+UwJFmpC/MK/vEBo1o9pbTWT2bHSpU5trScDra6hMVkttVWoPMgBZKSWtruAl/Jmak1ZOhRLF4JHmqLuoNzAX5hG3TrWAS1Dt6E43/opJpzVIQj2iK+gpjh7uHM7qwDb+46tutPhinbg0A63iDcxYKgA=' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_rxaddrcheck/eth_rxaddrcheck_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_rxaddrcheck.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_rxaddrcheck.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
