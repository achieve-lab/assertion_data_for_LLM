# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:30:14 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 694530
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43471' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIQnikEsfBBBUbCS1LZRBNsgUWNEciE/ijb6qL5J/HIYIZW73P7MzN7tOZK8Z1VVstZ9EFz5WuI/c97fwnPUtrrvtJH1q5WlXjPcSFzOUGMlMgoUqVQMMgLZ6YIb3cBL+JyY4kaZCh20B/e1Qd1HfYS5Uk/ZdaUtXMgNCTlDG3FrbqcykFx3mAl9yAvSgPkUxuhMt/g7We+ZggWa261n4Ceqwv7oA+7yLHA=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_register_syn/can_register_syn_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_can_register_syn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_syn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva
exit
