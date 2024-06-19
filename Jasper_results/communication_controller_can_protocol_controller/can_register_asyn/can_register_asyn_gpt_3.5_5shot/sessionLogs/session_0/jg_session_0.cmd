# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 15:41:13 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 248984
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41899' '-nowindow' '-style' 'windows' '-data' 'AAABTHicjY/NCoJQEIWPRRItepCgFoU7adnWImgrYmVGeMWfojb1qL2JfUoG7prhzsw9Z+bcuZYk91lVlRrrPwi2PK3wn1nvb+Fa6lp973WRzauTpUE73LbYnLGmSmTkK1KpGGQCEuiCG93AS/icmOJGmQodtAf3tKV7SPcR5ko9Z9e1dnAhCgk5ozdCNW+mMpCA+g43Awl5QxqhkMIZnbkt/5itd01BfS3QccgOzAmFovnXB/0RLS8=' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_can_protocol_controller/can_register_asyn/can_register_asyn_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_can_register_asyn.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_register_asyn.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top can_register_asyn

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
