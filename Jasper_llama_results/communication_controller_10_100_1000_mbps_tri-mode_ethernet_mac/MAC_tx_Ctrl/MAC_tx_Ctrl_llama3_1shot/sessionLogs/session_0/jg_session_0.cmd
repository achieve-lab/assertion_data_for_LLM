# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:49:30 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 47443
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39353' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/KAax8DEsBEWxTSMBO4ki2Ibgv6gXYqJio4/qm8QxGOEKd7md3dnZYxzAe+R5ThHVu4pLwEj5C+f1bTwHOz5zxWamTwuhVh6XElevSYcThpANGTsxbTERB6XhKj7T/qwaKw0JKSuW4gNmUtelXmtzUd+S1wlz7cYM8YUpN1VfmOi/rnAhhIauYnGGvabeH31YuIg46g009eVjq5u0cP8GH8knCw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_tx_Ctrl/MAC_tx_Ctrl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_MAC_tx_Ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_tx_Ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top MAC_tx_ctrl

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
