# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:59:23 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 930142
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40413' '-nowindow' '-style' 'windows' '-data' 'AAABRHichY/LCoJAFIZ/iyRa9CBBQkSbcN3WImgrUZaWNVJa0KYetTeZPiUDV53DnMt/GWYcSf7TWqsq2g+Kq0Az8hfO+zv4jppR7q0msng1utSpzbXE5fQ11FlGofYqlIAMQNZKSaM7eAF/pWak0UW5Im3BAy1Rd1HvYG7MHm+dawUXoYrpqcbUDXNEPVb3nNDlbCmOHu6MO40ObNM/vvKNGYoQ1tOEPoKJcefVfz5Uwirl' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_l3_checksum/eth_l3_checksum_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_l3_checksum.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_l3_checksum.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
