# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 11:01:10 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 49829
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:39419' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/NCoJAFIWPRREtepCgNtHOtVuLoK2IlRXWSGpBm3rU3sS+mTJw2b04M/f8zehJ8h91XctV987SV6iA/pX3+h58T+2yc6eNLJ+tXeo15kbS5xtporOMIqWqdAAZg8TKaKMbeAVfsOa00UWlttqAh1qhHqDewVxdcKCF1nAFSSm+j/KEO8MXKSHBptmzdaXcNGVK4KUhWTk3GB2Zgr9SIvfiGFWsGdMcfo+udH/6BpKfMVc=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_llama3_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_fpga/signed_mult_const_fpga_llama3_5shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_fpga.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_fpga.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_5shot.sva

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
