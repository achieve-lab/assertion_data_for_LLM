# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:57:04 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 85111
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34769' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY+7CsJAEEVvFINY+CGCFoJdOiFWkohgG4Jv0WzIQ8FGP9U/icfFCCmdYXdnzp297DqSvEdVVbLRvrO5CuSTv3Be38Jz1IxP32qSxbNxSp36cj3isvoaKpFRpL1KHSEDSKwzaXSDl+g5e0oaZSq01QYeaMl0l+kdytUa+wq1QgvRZprjk9v5DGpwLHWhm1In8MyyEdWaU+rhlVp6ovP/consi2OUWGO6CXcOKIX96RszyzB4' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_common_files/PSGMasterVolumeControl/PSGMasterVolumeControl_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_PSGMasterVolumeControl.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/PSGMasterVolumeControl.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top PSGMasterVolumeControl

# Set up Clocks and Resets
clock clk_i
reset rst_i

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
