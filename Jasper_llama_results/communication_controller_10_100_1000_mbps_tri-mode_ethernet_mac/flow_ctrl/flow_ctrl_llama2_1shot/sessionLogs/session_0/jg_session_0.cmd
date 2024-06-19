# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:05:54 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 51408
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45103' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NCoJQEIU/iyRa9BAto4Jau25rEbQVseyH6oppQZt61N7kdpIULjTD/JwzZ5jxgOBpraWy9kPJJ2Qub8x7/5rAw7UvbrnM8uVU6NTLtcRX9BlzwRCxo+QgZigm5iQ33MWXml+VM7khp2DLRnzISuqu1KkmN/UD/bpgrVnabCfS50IT1UQVetrIxBmOQqM/2qi6HnNWzISmur+Xpqi+/gAgGCZ6' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/flow_ctrl/flow_ctrl_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_flow_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/flow_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top flow_ctrl 

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
