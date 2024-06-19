# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-24 19:47:28 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 8066
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46551' '-nowindow' '-style' 'windows' '-data' 'AAABRHiclY3BCsJADETfKhbx4IeI+gU991pF8Fqk6qLUbrFWwYt+qn9SZ6sVejRhs8lMZmKA8FHXNU307yoBMZHyF+b1bUJDN/zc6yLLZ+eHQStuVwK9MTNyHAmWioOQiZANmdJxE16JL1ULpePMhR1b4TErbQ+1vRdzbYwjFqzFlXKy0n02T1Jn0iWkcvBuvvcqq0tzTal4GMmr0AXHUdP0Lxcfb7JELFI=' '-proj' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

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
