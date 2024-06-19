# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:02:34 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 44553
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42747' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY/NCoJQEIWPRRItepCgFkI7120tgrYiZVmoV0wL2tSj9ib2ecnAVTPM3zlzLnMdSf6zaRpZGz5IrgKt8J8572/jO+pbOw/6yObVq9KoE3crLjHVXLmMQp1U6wwyA4mU4kZ38Br+Si5wo1KVYh3AA23ZHrN9hLnRe9y61g4uZiuhGnQVbJv3TDm1pKZaWCRFNeGFwqIXe9x/bWivi5QRHtOS+xKYyv7qA9E7Lao=' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_outputcontrol/eth_outputcontrol_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_eth_outputcontrol.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_outputcontrol.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
