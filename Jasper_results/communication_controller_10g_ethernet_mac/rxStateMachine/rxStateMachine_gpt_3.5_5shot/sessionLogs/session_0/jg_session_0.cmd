# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:18:39 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 338104
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39135' '-nowindow' '-style' 'windows' '-data' 'AAABQHicfY/NCoJQEIWPRRItepCoNiG0cN0uLIK2EvZjEV6xa0WbetTexD4lAzfNcOfnnDPDXEeS/yyKQpW1HwRXgWb4z5z3t/AdNa3sW01k+WpkqVMP1xKX19dIiYxCHZTrCDIA2eiMG93Ac/gLMcWNMlnttAUPtELdRb2HuVIPuXWhNVymO6xlT6mekyPFbE/oxmAR26UesylaoxPd9O9UeV8KHmrCBo/scVXMrK3+8gGxdSpD' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
