# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 12:26:29 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 36877
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41449' '-nowindow' '-style' 'windows' '-data' 'AAABJnicXY69CsJAEIS/Uwxi4TNYC1oIdukE2yiCbQga//VCTFRs9FF9kzgeRoi73N7uzOyPAfxHURQ4q98VPALG8p+Z1zfxDVX71LUqMn1WfmiUzaXE02vT44QlZE3OVkhXSMRBbrkKz8WfFRO5JSUjZik8YCZ1U+qVmIvyjm6dMBeXcmOkCXtNjdXfV9dCNbSkT8Rbdm7XvzJ0myOOegNVQ+3eSJ25i99tKyVe' '-proj' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/communication_controller_10g_ethernet_mac/rxClkgen/rxClkgen_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_rxClkgen.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/rxClkgen.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top rxClkgen

# Set up Clocks and Resets
clock rxclk_in
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
