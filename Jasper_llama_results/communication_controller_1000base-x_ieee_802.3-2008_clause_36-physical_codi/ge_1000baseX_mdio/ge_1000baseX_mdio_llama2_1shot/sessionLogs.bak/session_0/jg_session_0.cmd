# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:25:54 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 68599
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40005' '-nowindow' '-style' 'windows' '-data' 'AAABSnichY9BD8FAEIVfiUYc/BAJwbln1xKJuDVFaQXbaEviwk/1T+rrRiU9mZednX0z82bWkeQ9y7KUtfYD58rXDPzMeX8Dz1HTqnerySxejVvq1M11icvpa6iLjAIdVCiBGcCEOgGjO3xBPsOnwOiqXJF28L6WVHep3pO5EU/Zda6V1YrwE40tNuhlMGu4M70JOiN0tsyQeiik6Bod7XL/ewO7Xcg7ZGZVmymGz+2vPuiEKtA=' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_1000base-x_ieee_802.3-2008_clause_36-physical_codi/ge_1000baseX_mdio/ge_1000baseX_mdio_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_ge_1000baseX_mdio.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ge_1000baseX_mdio.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top ge_1000baseX_mdio

# Set up Clocks and Resets
clock mdc
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
