# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:02:24 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 57607
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35681' '-nowindow' '-style' 'windows' '-data' 'AAABTnicjY/BCoJQEEWvRRIt+pCgFlE7adnWImgrYpZG9cS0oE19an9ix0cG7pphZu7cO2+Y50jynlVVyVr3QXLla4n/zHl/geeobXXfaTPrV6tKveZxM+ISQ411kVGgg0qlMCOYUCfc6A5fol/JGW6Uq1CsHbyvDdN9pvcoN/CMW1faosVMJdQcFBEpeo0MuwpYw/YJKKJKA3Zklj3SLf56HdgLQ52JKd2cGxOUwv7sA28wLhI=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_receivecontrol/eth_receivecontrol_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_receivecontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_receivecontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top eth_receivecontrol

# Set up Clocks and Resets
clock MRxClk
reset RxReset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
