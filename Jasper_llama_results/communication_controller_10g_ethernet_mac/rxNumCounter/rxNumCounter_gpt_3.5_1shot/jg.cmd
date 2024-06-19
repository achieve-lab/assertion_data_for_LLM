# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 16:49:32 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 736679
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38063' '-nowindow' '-style' 'windows' '-data' 'AAABOHicdY/NDsFQEIW/Eo1YeA6RkAh23UkslUhsG0H9BLepFrHhUb1JnduopAszufNz5pzJXAfwnlmWkVv1oeDiM5b/zHl/C8+hbLavlJHZq5ShVogLiqvXpMMZQ8CWlL2QtpAlR7nhJjzV/KIYyQ0xCRvWwn3mYtfFDjW5qm7p1ikLzWLuTKQ5MZLGbrCqmK7ySpuhIV0kxHBQN/irsHdFqgP6Ug+Ve7pmJ06S/+EDYbIo6w==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5.sva

# Elaborate design and properties
elaborate -top rxNumCounter

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
