# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 14:52:53 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 204467
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38653' '-nowindow' '-style' 'windows' '-data' 'AAABKHicZY69CsJAEIQnikEsfAZrUUHELrVtFME2SPSMIrmgiYKNPqpvEr8EIxzucvszM7u3nqTgWZalams/CL5CLfCfee9vEXhyrepbLrJ6OVnqNMONxOf1NVYqq0gHFTqCDEG2OuNWd/AC/krMcKuLcu21Aw+1Rt1FbWBu1ANuXWoDF7MhJRs2GqYmTMVslHroM7ZYnehGf8rqjgx1pBlTc/KU3xOYvL75A64XJVE=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva
exit
