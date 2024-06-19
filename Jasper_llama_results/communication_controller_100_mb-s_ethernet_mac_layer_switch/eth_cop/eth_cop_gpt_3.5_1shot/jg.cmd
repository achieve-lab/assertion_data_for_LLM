# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:48:00 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 919170
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35635' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5LCsJAEERrFIO48AgeQFAQcZe12yiC2yAxmog4gyYKbvSo3iS+BCNMN9PdU1X9MZLCV1VVaqz7JASKtMT/Zj6/IjTyrf53fGT99rLUa5tbScAbaqKLrGIdVSoHGYPsdMatHuAl/I3ocKurCqXag0faoO6jPsDcqUfcutIWLkWVkRM6nKb8EuZJA9SOGVanZpOvq29wILHm9CzIMzZncEVz7xcY8ySn' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_cop/eth_cop_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_cop.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_cop.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
