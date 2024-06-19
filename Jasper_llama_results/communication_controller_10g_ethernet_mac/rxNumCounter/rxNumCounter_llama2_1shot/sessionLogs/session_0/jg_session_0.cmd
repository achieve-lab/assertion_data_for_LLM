# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:29:27 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 30691
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40853' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY+9CsJAEIS/KAax8DlEUNA6nWBpFME2BP9FvXAmKjb6qL5JnAtGSOEutz+zM8ueBwTPPM8prP5Q8AkZy3/mvb9F4FE119eqyOxVydAoxSXF12vT44whYkvGXkhXSMxRbrgJzzS/KCZygyVlzUp4yFzsptgbTa6qO7p1ykIzy52JNCdG0rgNTmXpKy+1GVrSJUIMB3XDv4qouCQWHosVMdAtOzHS4gcfFCgo4g==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxNumCounter/rxNumCounter_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_rxNumCounter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxNumCounter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
