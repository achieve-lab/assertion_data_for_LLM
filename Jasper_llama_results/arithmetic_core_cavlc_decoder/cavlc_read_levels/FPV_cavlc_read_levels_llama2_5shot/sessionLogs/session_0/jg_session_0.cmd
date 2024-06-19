# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 15:55:34 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 84138
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39519' '-nowindow' '-style' 'windows' '-data' 'AAABUniclY+9CsJAEITnFINY+CCCFgG7lGIbRbANIf4TvRCTCDb6qL5J/DyMkNJddm92dm64M5KCR13XctG90zyFmpO/MK8vCIza8Zk7bWb5bJ1Sr7ncSDxqqLEusoq0V6kjzAgmVkpa3eBL9ld6RlrlKrTVBj7UCnUf9Y5NBfZ560JrdgkOFQ4JOEcfuxspqKJS/Cb4JCBpgEOGyurENPvDI3KvjHWmfKYp3AGfwv3uDfd0LjU=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_levels/FPV_cavlc_read_levels_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_levels.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_levels.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
