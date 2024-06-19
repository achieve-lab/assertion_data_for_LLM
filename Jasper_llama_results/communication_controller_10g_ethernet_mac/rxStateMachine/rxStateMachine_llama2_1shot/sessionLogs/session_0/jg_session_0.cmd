# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:26:10 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 29833
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42269' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIWPRRItepCooBatXLcLi6CtiP1olFdMK9rUo/Ym9ikZuGmGOz/nnBnmWpKcZ1EUqqz9INhyNcd/Zr2/hWOpaWXfaiKrVyNLnXq4lti8vkaKZeTpoFwRyADE1wk3uoHn8BdighulyrTTFtzVGnUX9R7mSj3k1qU2cKnusBl7SvWCHChke0w3BgvYLvWYTdAaHelmf6e86iJfZ96UbsJNIZNZ9ZMPYQMqNg==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStateMachine/rxStateMachine_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rxStateMachine.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStateMachine.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top rxStateMachine

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
