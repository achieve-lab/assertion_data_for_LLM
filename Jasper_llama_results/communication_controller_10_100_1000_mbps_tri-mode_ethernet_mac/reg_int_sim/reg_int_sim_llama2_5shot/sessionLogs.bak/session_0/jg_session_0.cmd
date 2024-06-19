# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 13:05:19 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 37756
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42965' '-nowindow' '-style' 'windows' '-data' 'AAABMnicdY69CsJAEIQnikEsfAwLQRHBLrVtFME2BH9iRL2QXBRs9FF9k/MzGCGFu9zu7OzMsZ6k4OGcUxXtO8VXqDn5C+/1BYGnZnzmVpNZPhtd6tTmWuLz+hrpIqNIiUqlMEOYWCfS6AZfsi+oGWmUy2qnLXyoFeou6j2bK3jArQut2eVoEnqK19IL0Flj8IZ/pR6uDJXRkWnyRx9VV8SgWFOmGfwBj62ufwNn6ygO' '-proj' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int_sim/reg_int_sim_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/communication_controller_10_100_1000_mbps_tri-mode_ethernet_mac/reg_int_sim/reg_int_sim_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_reg_int_sim.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/reg_int_sim.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

# Elaborate design and properties
elaborate -top reg_int_sim

# Set up Clocks and Resets
clock Clk_reg
reset Reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
