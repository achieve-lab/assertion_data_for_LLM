# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:32:21 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 36358
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41979' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY7NDsFQEIW/Eo1YeAhLQUIisejatkRi2zRoS3AbWsSGR/UmddyopImZ3Llzzpz5cQDvURQF1up3BRefqfxnzuubeA5V++BalZk/Kz80yuZS4uq16XPEEBCTsxXTFROylxuu4nPVz4qp3HAiY8NavM9C6qbUkSoX5R3dOmOpWkQiXcDQKm9MGAivNBNa6kg1x7AT6v3RBnZ7yEFvJDTW/kT6zF79BuIRJXA=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/fht_1d_x8/fht_1d_x8_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_fht_1d_x8.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/fht_1d_x8.v \
  ${RTL_PATH}/fht_bfly_noFF.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

  

# Elaborate design and properties
elaborate -top fht_1d_x8

# Set up Clocks and Resets
clock sclk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report

exit
