# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 21:44:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 174831
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35001' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY/NCoJQEIXPLZJo0YNEBRG0ct3WImgrYpZFdcW0ok09am9in5KBm2a483PmnGGukeQ+i6JQZe0HwZGnOf4z8/4WrlHTyr7VRJavRpY6tbimOLy+RjrLytdOufYgA5BAR9zqBp4zvxAT3CpVpkgbcE8r2F3YWyZX6iG3LrRmFsGKyZnuClGVO0pdyqYxVch2qYc2AbM60M3+qvzqokAn3pRuAhbDyaqffACSsyr1' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top eth_txcounters

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
