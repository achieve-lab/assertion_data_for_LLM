# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 15:26:30 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 688544
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38237' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY7BCsJADETfKhbx4Dd4FvSkt569VhG8FqlWLdIt2ip40U/1T+p0scKasEl2MpnEAOGzrmucdR8KAREL+c/M+1uEBt+af8dHVi8vQ68dbimB3pAJOZaYAxUnIWMhW85yy114pf5VsZBbLpTs2QmPWIvdFztV56Z6pFuXbNRLpJArp1JMNTXVVCJFGIhfSMWSuV3/zOaOQuyYmfvNtfuoqnQXfwBpPyVg' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_can_protocol_controller/can_fifo/can_fifo_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_can_fifo.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_fifo.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -bbox_m can_fifo

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
