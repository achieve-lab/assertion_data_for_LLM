# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 23:18:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 338541
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35273' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIU/iyRa9CBRQRCtXLcLi6CthP1ohFfsWtGmHrU3saNk4KYZ7vycc2aY6wDesygKKms/FFx85vKfOe9v4Tk0rexbTWT1amTo1MO1xNXrMyLBEHAkJxYyELLlLDfchOfiL4qp3JBh2bMT7rOWuiv1QcxV9VC3LtmIy7iLtdpTqhfKIZG2J+rGwkJth55mU2kNJ3Wzv1PlfanwgGl17UQ3Raps9ZMPYjkqSg==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
