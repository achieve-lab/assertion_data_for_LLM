# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:55:38 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 84221
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43753' '-nowindow' '-style' 'windows' '-data' 'AAABUniclY+9CsJAEIQnikEsfBBBQW1Tim0UwTaE+E/0QkxOsNFH9U3i52GElO6ye7Ozc8OdJyl4VFUlF+07zVeoOfkL7/UFgadmfOZWk1k+G6fUqS/XEp/qa6iLjCLtVeoIM4CJlZJGN/iS/ZWekUa5Cm21gQ+1Qt1FvWNjwRPeutCaXYKDxSEB5+hjdyMFWSrFb4RPApJ6OGSojE5Msz88IvfKWGdqyjSGO+BTuN+9AfdOLjI=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_levels

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
