# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-18 17:29:17 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 231123
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:45855' '-nowindow' '-style' 'windows' '-data' 'AAABIHicfY9LCsIwGIS/KBZx4QE8gqAn6LrbKoLb4qs+KKaoVXSjR/UmcVKskI3zk/8x/0xCDBA/nXPUaD+UIlISxQ/m/W1iQwg/t0Jm+goqdBpzI4l0+ow4YsnYUrEXMxSzoFBYbuIr7c/KpcJy4sKGtfiUmdRdqXNtrrUzYcJcu5yddBlLdQV3df4N/5ex+JU46MlZ6j7LQdPgj8fjA5bgJB4=' '-proj' '/data/vpulav2/Work/Jasper/fht_bfly_noFF/fht_bfly_noFF/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/fht_bfly_noFF/fht_bfly_noFF/.tmp/.initCmds.tcl' 'FPV_fht_bfly_noFF.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top fht_bfly_noFF

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


ls
 exit
