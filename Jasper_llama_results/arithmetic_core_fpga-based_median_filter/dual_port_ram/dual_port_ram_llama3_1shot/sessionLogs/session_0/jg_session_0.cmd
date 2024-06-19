# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:27:50 CDT
# hostname  : pal-achieve-08.(none)
# pid       : 82531
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34673' '-nowindow' '-style' 'windows' '-data' 'AAABOnicfY9NC4JAEIYfiyQ69EOCgqijZ68WQddFsi+pVkoLutRP7Z/Y65KCl2bY2Zn3Y5n1gOBVliUuuk8Vn4hQ2YT3+TWBRzuqudNGlu/WDb3aXEt8nSFjLlgMewqOQkZCYk5Ky0N4If6mmiktV3K2JMIjVlL3pd6JuTtnyIK1uET66g3TeIxqzJmJ+o0YGMiZCbWkmuZ/PMZtU3UxM01T7XOQJne/+ALHwCnF' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dual_port_ram/dual_port_ram_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_fpga-based_median_filter/dual_port_ram/dual_port_ram_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_dual_port_ram.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/dual_port_ram.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -bbox_m dual_port_ram

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all
