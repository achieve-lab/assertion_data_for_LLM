# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 15:19:20 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 103276
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46111' '-nowindow' '-style' 'windows' '-data' 'AAABJHicfY5LCsJAEETfKAZx4Qk8gagnyNptFMGtSIw/ghNiouJGj+pNxhoxwmysZvpTXdWMAeKHc44P2neliISp4gfz+jaxIYSfWyEzfwYVOo25kUR6fcacsKzYUXMQMxSzJldYruJr7c/KhcJSUpGxEZ+wkLor9Vabi/qR/jpjqV0m1V614kYql7/hfaUuTdSlug49eQtxlqOmwV+XxxtZyyX0' '-proj' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top eth_txcounters

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
