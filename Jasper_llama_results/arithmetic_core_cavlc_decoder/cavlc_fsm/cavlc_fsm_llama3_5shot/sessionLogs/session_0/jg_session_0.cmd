# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:23:29 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 134140
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34895' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY5BD8FAEIVfiUYc/AhHwUXcenYtkbg2TSkVbENbiQs/1T+pz0Ylm5jJzr55897sepKCR13XstG+U3yFmpO/8F5fEHhy49O3XGb5dG6p05gbic/pa6yzjCLtVCqDGcLEOpJGN/iS+ZWak0YXFdpqAx9qhbqLOmVSgQf8daE1s4QNFRsScIr7pAm+BEbq4cjZY3SgG/3RRvb1GBRrSjeD3aMv7K/fEZYmQw==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_fsm/cavlc_fsm_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_fsm.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_fsm.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
