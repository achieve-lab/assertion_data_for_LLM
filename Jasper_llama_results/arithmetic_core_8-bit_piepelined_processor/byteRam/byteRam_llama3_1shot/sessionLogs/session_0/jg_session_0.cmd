# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 14:08:41 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 63105
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42037' '-nowindow' '-style' 'windows' '-data' 'AAABInicVY7LCsJADEVPFYu48BNci6Agbrty4bY+wG2pb0WdUltFN/qp/km9HVqhCZNJbs4k4wDeO8syrNVfCi4+E/nfnG+ReA5Vy+taVZl9Kjc0yscl4uq06XPFELAn5SilJyXkLDc8pKfq3xQjuSEmYctGus9CdFP0Tp278o7+OmWpXqwJF8Y8LT1QXGsetERH6hpOqrqsCmJu+cBuzbOQkaqh9h7EJva3P85EJIM=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_8-bit_piepelined_processor/byteRam/byteRam_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_ramByte.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/ramByte.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -bbox_m byteRam

# Set up Clocks and Resets
clock clk
reset reset

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
