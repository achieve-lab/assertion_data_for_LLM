# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 16:19:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 101366
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46191' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY67CsJAEEVPFINY+AnWIiiIbWrbKIJtiG9F3aBZBRv9VP9kvRuMEGeY1507jwCIns45Cqk/5EJixtKfBO9vEgVUxde1KjJ9VSI0yuGSEsra9DljSNhi2QvpCUk5Sg134Vb9q3wmNVzIWbMSHjMTuyn2Rp2b8o5+nTBXzyNW0c8tGGhmqX3QEjvTDsNBVfePlxRXU06ykaqh8J24efHtB9yIJMM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_fpu_sub.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_sub.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top fpu_sub

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
