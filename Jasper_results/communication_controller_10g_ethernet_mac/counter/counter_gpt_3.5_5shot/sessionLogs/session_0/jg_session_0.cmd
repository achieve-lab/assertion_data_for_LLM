# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-01 17:32:01 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 291690
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37213' '-nowindow' '-style' 'windows' '-data' 'AAABJHicVY5NCsIwEEZfFIu48AgeQNCNdNe12yqC2yL1HzGltgpu9KjepH4JVsgMmZl88yYZAySvpmnw1n0qRKTM5X8zn1+RGEJz906oLN9Bhl473CKRzpAJVywZB2pOUsZSNlzklof0Wv2bYiG3lFTs2EpPWYnui96rc1c90q4L1urlIt2cY0umyrneg4HoQorl7H8KObdDoTpjpplYOdbPRzGV3/cLJyMk5w==' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/counter/counter_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10g_ethernet_mac/counter/counter_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_counter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/counter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

# Elaborate design and properties
elaborate -top counter

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
