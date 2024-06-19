# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:40:46 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 37762
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36571' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYC9qIXTrBNopgG4LGf70QExUbfVTfJI6HEeIut7c7M/tjAP9RFAXO6ncFj4Cx/Gfm9U18Q9U+da2KTJ+VHxplcynx9Nr0OGEJWZOzFdIVEnGQW67Cc/FnxURuScmIWQoPmEndlHol5qK8o1snzMWl3Bhpwl5TY/X31bVQDS3pE/GWndv1rwzd5oij3kDVULs3Umfu4jdtPSVf' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
