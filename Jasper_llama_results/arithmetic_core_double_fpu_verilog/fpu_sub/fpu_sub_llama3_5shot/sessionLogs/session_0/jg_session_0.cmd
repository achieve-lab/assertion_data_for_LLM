# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:54:02 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 150704
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:44559' '-nowindow' '-style' 'windows' '-data' 'AAABInicXY7LDsFQEIa/Eo1YeARrkbARu65tSyS2Td0JTkMPiQ2P6k2O/zQqqZnM7Z9/LgEQPZ1zFFJ/yIXEjKU/Cd7fJAqoiq9rVWT6qkRolMMlJZS16XPGkLDFshfSE5JylBruwq36V/lMariQs2YlPGYmdlPsjTo35R39OmGunkesop9bMNDMUvugJXamHYaDqu4fLymuppxkQ1Uj4Ttx8+LbD9zAJMc=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_double_fpu_verilog/fpu_sub/fpu_sub_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_fpu_sub.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fpu_sub.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
