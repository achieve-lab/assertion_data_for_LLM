# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:29:32 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 30880
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34065' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIS/KAax8DlE0EKwSydYGkWwDcF/US+ciYqNPqpvEueCEVK4y+3P7Myy5wHBM89zCqs/FHxCxvKfee9vEXhUzfW1KjJ7VTI0SnFJ8fXa9DhjiNiSsRfSFRJzlBtuwjPNL4qJ3GBJWbMSHjIXuyn2RpOr6o5unbLQzHJnIs2JkTRug1NZ+spLbYaWdIkQw0Hd4K8iKi6JhcdiRQx1y06MtPjBBxRgKOY=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
