# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 14:50:44 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 643558
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38423' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY7LCsJADEVPFYu48BP8AEE30l3XbusD3JZSXxVxirYKbvRT/ZPxdrDCJMxMcnMySQDEL2stzrpPXSEJc/nfgs8viAN8a/KOryzf3gu9trlFQp0hEy4YUg7UFFLGUjLOcsNDeq36TXcpN1yp2LGVnrAW3Re9V+WueKRdF2xcT+bIldicqaJc/8FAdKmK4eQm+VyzQ6ksZaaeSG+kyUfRldv3CxULJJM=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_8-bit_piepelined_processor/uartRec/uartRec_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_uartRec.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/uartRec.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva
exit
