# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:26:24 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 30411
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46777' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIWPRRItepCoNlEr1+3CImgrYj8a5RXTijb1qL2JfUoGbprhzs85Z4a5liTnWRSFKms/CLZczfGfWe9v4VhqWtm3msjq1chSpx6uJTavr5FiGXk6KFcEMgDxdcKNbuA5/IWY4EapMu20BXe1Rt1FvYe5Ug+5dakNXKo7bMaeUr0gBwrZHtONwQK2Sz1mE7RGR7rZ3ymvusjXmTehm3JTyGRW/eQDYU0qOw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
