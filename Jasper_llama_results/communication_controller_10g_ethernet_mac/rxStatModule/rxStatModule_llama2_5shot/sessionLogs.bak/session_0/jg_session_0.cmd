# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:06:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 28394
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41647' '-nowindow' '-style' 'windows' '-data' 'AAABNnicdY9NC4JAEIZfiyQ69DsiqIPQzXO3sAi6imQfhrVia0WX+qn9E3uSDDw0w87OvB/LrCPJf5RlqSrad4qrQFPyF87r2/iOmvGZW01k8WzcUqc21xKX09dIJxmF2qlQAjIEiZSSRlfwAv5MzUijXFYbxeCBlqi7qLcwF/oBu861gst1g7W8YzXDFeNP8Y2Z13RSD1+GzujA5P11hNUmkY4cj2nCLnt4W/3gDQ6kKMo=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxStatModule/rxStatModule_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_rxStatModule.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxStatModule.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top rxStatModule

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
