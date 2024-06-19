# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 11:26:18 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 56687
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44341' '-nowindow' '-style' 'windows' '-data' 'AAABHnicZY7NDsFAFIXPEI1YeAaxlPAEXduWSGxFtKjQaVASGx7Vm4xvGpVMnJu5P+ecublGUvx0zqlG+0GKlGhK/GDe3yY2CuHnVsjMX0GVOs3nxhLx+hqrkNVKO1XKYUYwax0Jqzt8hX4hl4TVWVdlSuETLXB3cW9RbvQDbp1piZbh2lNPbMzJE+YNG6Ue/pItVgem4Z/T32FxpjVToHt8AEj2JDY=' '-proj' '/data/vpulav2/Work/Jasper/eth_miim/eth_miim_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/eth_miim/eth_miim_goldmine/.tmp/.initCmds.tcl' 'FPV_eth_miim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/eth_miim.v \
  ${RTL_PATH}/eth_shiftreg.v \
  ${RTL_PATH}/eth_outputcontrol.v
  

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top eth_miim

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
