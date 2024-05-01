# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-23 23:21:17 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 45087
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43957' '-nowindow' '-style' 'windows' '-data' 'AAABMnicVY69CsJAEIQnikEsfAorQQvr1LZRBFuRJP5x5kJMFGz0UX2T+N1hhOxy+zMzu7eBpOjVNI289Z+EULGW+N+Cz6+IAnXN9b0usn53sjRoh1tJyBtrplxWOx1V6wwyBdnL4FYP8Br+Rixwq1KVMqXgsTaoh6gPMHfqBbeutIXLUJ3IlrkK1sWELieXZKO5RwxTIzYUHr3QTdjW/px4tfG3uZlUVy7M2e7sC6D5KNA=' '-proj' '/data/vpulav2/Work/Jasper/eth_outputcontrol/flow_ctrl_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_outputcontrol/flow_ctrl_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_outputcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_outputcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva
exit
