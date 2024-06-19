# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:44:37 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 714315
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37643' '-nowindow' '-style' 'windows' '-data' 'AAABSHichY/NCoJQEIU/iyRa9CBBUUQ7160CC6GtSP8lXjGtaFOP2pvY8VKBq2aYn3vmnGGuA3iPsiyx1rwrufhM5T9zXp/Gc6hb9W7UkcWzVqH1FX8prqJLnwRDyI6Cg5CekIhYbrgKLzQ/K6dyQ0bOhrVwn0DstthbTS7qh7p1zlKzjBszbUs4CYukjqULFJHVD5RXwqAjfSq+4WhP+6es7kzVhYy1ZaI60nV76XP7pzci+Svx' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva
exit
