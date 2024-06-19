# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-29 17:43:29 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 4043
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41107' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY69CsJAEIS/Uwxi4TNYC4oPkMrCNopgGyRRiQQvJEbBRh/VNznnghFSOcvtz+zMcgYIn845GvQfSgERK8UP5v1tQkMXfu51mc2rU2HQmltJoDdmxgVLzImaTMxUzJ5cYbmLr7WvlAuFpeTKgVR8xFbqodRHbW7qF/rrmp12S+msrqQkypU8sVSZbnp3yVw10QQj+YtGfdY0+ev0+AB5ICbu' '-proj' '/data/vpulav2/Work/Jasper/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Broadcast_filter/Broadcast_filter/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/Broadcast_filter/Broadcast_filter/.tmp/.initCmds.tcl' 'FPV_Broadcast_filter.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/Broadcast_filter.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top Broadcast_filter

# Set up Clocks and Resets
clock Clk
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
