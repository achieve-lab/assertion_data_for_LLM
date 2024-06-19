# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 10:19:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 520898
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34663' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7NDsFQEIVPiUYsPIO1hBW7rm1LJLaN0KsacW9oSWx4VG9SX29UUjOZvzNnfgJJ0bOqKnnpPnChYi3QnwTvbxIFaktdd9rI6tWKUq8ZbighNtREZ1klOqjUEWQMstUJtbqDl/SveIdaXVQo1R481hp2H7ahcyMf8etSG3oprIxo2GiYmlLv2CgN4Du2WOX+1j+z/sOBJZr5as7tjKzwH38AcP0lfg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_fifo/eth_fifo_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva
exit
