# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:09:49 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 52778
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44749' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY7NDsFQEIVPiUYsPIdIWBC7rm1LJLZNw0UFt9GWxIZH9Sb1tVHJXZjJ/J1z5t7xJAXPsixVW/tB8hVqjv/Me3+bwJNr1dxykeXLqVKnWW4kPtHXSBdZRdqrUAIyBIl1wq3u4AV8Rk5xq6tyGW3BQ61Qd1HvYG70A25daA1nUB2oGTmBz9kz/DCm2/Cy1GMvBbU6Mk3+bkT1JbHOxJRpVissfGUfFlIo6w==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/eth_shiftreg/eth_shiftreg_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_eth_shiftreg.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_shiftreg.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top eth_shiftreg

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
