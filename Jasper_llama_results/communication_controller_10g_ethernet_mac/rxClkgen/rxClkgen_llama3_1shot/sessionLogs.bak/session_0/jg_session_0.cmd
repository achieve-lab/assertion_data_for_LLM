# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:26:33 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 36956
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42757' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYCwpim06wjSLYhqDxXy/ERMVGH9U3ieNhhLjL7e3OzP4YwH8URYGz+l3BI2As/5l5fRPfULVPXasi02flh0bZXEo8vTY9TlhC1uRshXSFRBzklqvwXPxZMZFbUjJilsIDZlI3pV6JuSjv6NYJc3EpN0aasNfUWP19dS1UQ0v6RLxl53b9K0O3OeKoN1Q10O6N1Jm7+A1tBSVb' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top rxClkgen

# Set up Clocks and Resets
clock rxclk_in
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
