# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:17:35 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 951863
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39877' '-nowindow' '-style' 'windows' '-data' 'AAABQHicfY/NCoJQEIWPRRItepCoICJo4bqtRdBWwiyN6IppRZt61N7EvisZuGmGOz9nzhnmOpK8Z1mWqqz9ILjytcB/5ry/heeoabZvNZHVq5GlTi2uKS6vr5HOMgp0UKEEZACy1Qk3uoEXzC/EFDfKlCvSDtzXGnYX9p7JlXrIrUttmEWwYnKuu0JUdofVZWwaU4Vsl3poUzCjI938r8rel9IFmrJhRp6AxrDy6i8f5Fcq/Q==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
