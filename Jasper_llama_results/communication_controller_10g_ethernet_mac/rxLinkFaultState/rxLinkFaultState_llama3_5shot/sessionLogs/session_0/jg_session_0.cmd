# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:52:30 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 34611
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46231' '-nowindow' '-style' 'windows' '-data' 'AAABRnichY+9CsJAEIS/KAax8EEERRAbSW0lRAnYhuC/xlzQRMVGH9U3ieNhhFTusn+zM8eeA3iPoiiwVr8rufiM5T9zXt/Gc6jaZ65VkdmzUqFRikuKq2jTJcEQsiFnJ6QjJCKWG67Cc+3PyqnccCJjxVK4TyB2U+y1Nhf1fd06Za7diRsTvZZwEBZJHUsXKCKr7ykvhEFL+lR8w17T6K8ytJdFHBUDTUPdtpU6sz96A8+OK+0=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxLinkFaultState/rxLinkFaultState_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_rxLinkFaultState.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxLinkFaultState.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

# Elaborate design and properties
elaborate -top rxLinkFaultState

# Set up Clocks and Resets
clock rxclk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
