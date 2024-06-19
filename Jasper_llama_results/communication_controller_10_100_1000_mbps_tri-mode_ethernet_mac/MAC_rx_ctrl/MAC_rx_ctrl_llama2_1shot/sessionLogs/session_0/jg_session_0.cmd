# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 22:28:41 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 88750
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45343' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/Uwxi4WNYCIpapxHBTqIItiHEf9QLMVGx0Uf1TeIYjJDCXW5nd3bmWAO4jyzLyKN6V3HwGCt/YV7fxjWU4zNXyszsWUKoFeZC4ug16XDC4rMhZSemLSbgoLRcxafan1UjpSUmYcVSvMdc6rrUa20u6lu6dcpCuwlDRsKYm2ooT6z/usJQCA25InGWvabeH72fXxFw1Bto6uuOrTxJfv0bLicnRg==' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_ctrl/MAC_rx_ctrl_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_ctrl/MAC_rx_ctrl_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_MAC_rx_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_rx_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top MAC_rx_ctrl

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
