# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 13:52:14 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 601105
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32991' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY9BD8FAEIW/Eo04+CESTtx67rVE4tpIUaRsoy2JCz/VP6m3SyU9msnuzrw37+2uBwSPuq5x0b1r84kIlb/wXt8i8GiH7TttZPFsndBrxM2IrzVkzBlDTErFQchIyJpMabgJr8QX2nOl4ULJlo3wiKWm+5reibk645A5K3GFnFLpPpMnqTPpYhI5WDdbW1WqmybqEvEwkFeuGwxHdeFfLvb9uUOm7jcz8XtVpfvpG5PDMWo=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

# Elaborate design and properties
elaborate -top signed_mult_const_fpga

# Set up Clocks and Resets
clock clk
reset rstn

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
