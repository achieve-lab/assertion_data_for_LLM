# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:40:34 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 37509
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:37453' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYCwpapxNsowi2IWj81wsxUbHRR/VN4ngYIe5ye7szsz8G8B9FUeCsflfwCBjLf2Ze38Q3VO1T16rI9Fn5oVE2lxJPr02PE5aQNTlbIV0hEQe55So8F39WTOSWlIyYpfCAmdRNqVdiLso7unXCXFzKjZEm7DU1Vn9fXQvV0JI+EW/ZuV3/ytBtjjjqDVUNtHsjdeYufgNs8yVa' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
