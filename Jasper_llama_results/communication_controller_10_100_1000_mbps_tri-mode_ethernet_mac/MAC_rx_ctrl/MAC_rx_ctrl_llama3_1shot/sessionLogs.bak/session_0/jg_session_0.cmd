# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:54:47 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 49355
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46779' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIS/Uwxi4WNYCIpim0YEO4ki2IYQ/1EvxETFRh/VN4ljMEIKd7md3dmZYw3gPrIsI4/qXcXBY6z8hXl9G9dQjs9cKTOzZwmhVpgLiaPXpMMJi8+GlJ2YtpiAg9JyFZ9qf1aNlJaYhBVL8R5zqetSr7W5qG/p1ikL7SYMGQljbqqhPLH+6wpDITTkisRZ9pp6f/R+fkXAUW+gqa87tvIk+fVvLjknRw==' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_ctrl/MAC_rx_ctrl_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/MAC_rx_ctrl/MAC_rx_ctrl_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_MAC_rx_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/MAC_rx_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
