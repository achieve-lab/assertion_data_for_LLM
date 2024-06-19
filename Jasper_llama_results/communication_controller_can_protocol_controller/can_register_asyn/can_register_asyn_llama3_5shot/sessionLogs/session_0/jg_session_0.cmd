# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:03:02 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 27955
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45245' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NDsFQEIVPiUYsPIiEBbHr2rZEYts0RWnobfpD2PCo3qQ+Nyrpykzm75yZuXMdSd6jrmtZ6d5xrnwt0J84r2/iOWrLp+60kdWzFaVeM9y0uNhQY6UyChSr0hFkBBLqhBpdwSv4Ap+hRrlK7bQF97Wmu0/3HuZCPuXWpTZwERtSYk5vzNbCTuUgIfkNbgIS8YY0YEMGZ5TY4/7PBva6UGdsRjUHPzBf2l+9AacFLSc=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva
exit
