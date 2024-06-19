# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 19:02:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 876055
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36515' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEITnFINY+BCWolbapbbT+AO2QeI/4oWYKNjoo/om8cthhIC73O7czOzdGkn+M89zuag/KJ4CjclfmPcX+EbVKO61KjN/VbrUKIdLi8dpq6+LrELtlekI04VZ60xa3eEz9Cs1Jq0SpdpqAx9oibuJe4dyA3fYdaYV2kIT9Ckowp/w1oAe0aUWEzGc1Ylb74+32CUGhxq6zUb8fwClbusP4Q8lmg==' '-proj' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/RMON_ctrl/RMON_ctrl_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_RMON_ctrl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/RMON_ctrl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top RMON_CTRL

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
