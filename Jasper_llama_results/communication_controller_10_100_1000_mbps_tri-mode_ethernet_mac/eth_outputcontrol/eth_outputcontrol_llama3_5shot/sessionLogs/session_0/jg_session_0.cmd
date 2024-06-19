# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:02:43 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 44914
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42833' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCoJQEIWPRRItepCgFkU7120tgrYiZZmYV0wL2tSj9ib2ecnAVTPM3zlzLnMdSd6zrmtZ6z9Irnyt8J8572/jOepaM/e6yObVqdKgFbcrLjHWVJmMAp1U6QwyAQmV4kZ38Ar+Ss5xo0KlIh3AfW3ZHrJ9hLnRz7l1rR1cxFZMNehK2CbvmTJqQU01s0iKasQLuUUTe9x/bWCvC3UhFkxL7othSvurD9FNLas=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_outputcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_outputcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top eth_outputcontrol

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
