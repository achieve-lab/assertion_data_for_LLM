# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 20:53:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 1046122
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35551' '-nowindow' '-style' 'windows' '-data' 'AAABPnicfY9BD8FAEIW/Eo04+CGCE049u5ZIXBupUiK2qRZx4af6J/V2o5JezGRn3ryZN5n1gOBZVRXO2g8Fn5C5/Gfe+wsCj6bZutVklq9Ghk4trkd8vT4jzhgi9pQcxAzEbDjJDTfxpfoXxUxuyClI2IoPWWm6q+mdOlfhoW5dsFYv0VSqXHAnlsrusLpcm8ZCsbZDT9pMnOGoavZXZe/LVEVM3LVTcalQ4X7yAZQPKww=' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_100_mb-s_ethernet_mac_layer_switch/eth_txcounters/eth_txcounters_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_eth_txcounters.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_txcounters.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top eth_txcounters

# Set up Clocks and Resets
clock MTxClk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
