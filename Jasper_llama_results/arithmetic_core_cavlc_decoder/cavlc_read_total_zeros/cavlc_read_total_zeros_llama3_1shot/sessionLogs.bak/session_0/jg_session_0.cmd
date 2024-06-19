# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 18:27:49 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 136115
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36219' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY67CsJAEEVPFINY+CGCgthap40i2IYQ36gJeQlp9FP9k3gzGCGlM+zszpk7l3WA5bOuayz6lYqLj6f8hfP+PpYO3Wj6XpesX50bBu1yK3F1xky5ExNwpOAsMhEJuSpjHuKF5plqooxJydmzE/fZSD2U+qBJacYeK7aaRXIo5RDpnUof2kau/dy8AyrRVH3GTCwSg5G8EqMXdd5fLoH9OOSms1A3FzuZsokPh2ExSQ==' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_cavlc_decoder/cavlc_read_total_zeros/cavlc_read_total_zeros_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

# Elaborate design and properties
elaborate -top cavlc_read_total_zeros

# Set up Clocks and Resets
clock -infer
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
