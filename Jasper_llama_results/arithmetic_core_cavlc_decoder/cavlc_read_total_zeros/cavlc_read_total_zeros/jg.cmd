# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-30 12:28:09 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 23439
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41723' '-nowindow' '-style' 'windows' '-data' 'AAABRHiclYxNCsJADIW/KhZx4UFEPUHX3VYR3JZSf1DElum0Qjd6VG8yvg5W6NIXJpN8SV4ARE/nHF7jVikkIVb8FLy/RRQwVNePhmT7Gvww6Y/7lVBvzoo7BSlnai4iC5GMm6LgIV5rXimXigKD5chBPGGn7am2T5o03jhmw16zXA6NHHLVRvuZv7C6t947pRU16ivWYrkYzORVenpVt/zLpdMHqEIsSA==' '-proj' '/data/vpulav2/Work/Jasper/cavlc_read_total_zeros/cavlc_read_total_zeros/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/cavlc_read_total_zeros/cavlc_read_total_zeros/.tmp/.initCmds.tcl' 'FPV_cavlc_read_total_zeros.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/cavlc_read_total_zeros.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
