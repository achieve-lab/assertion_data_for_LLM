# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 10:47:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 43713
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36719' '-nowindow' '-style' 'windows' '-data' 'AAABXniclY/BCsIwEERfFUU8+CGCgp577rWK4LWEqlWppthWwYt+qn9Sp9EKPbpLNtmZ2UniAf6jqipcdO8qfUIC5S+81/fge7Sj7jttZPls7dBrhhtJX2vEhDOWiISSg5CxEEOqtNyEl+Jz1UxpuVCwZSM8ZCX1QOqdmKszDliwFpfLKdHcR3nSdKq5iFgOtVt9Nk4VM1UXi4ehvDLdYDmqC/5yidyLjVSGubqZ8L10hfvpG5NFMVY=' '-proj' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_llama/arithmetic_core_2d_fht/signed_mult_const_asic/signed_mult_const_asic_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_signed_mult_const_asic.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/signed_mult_const_asic.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

# Elaborate design and properties
elaborate -top signed_mult_const_asic

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report



exit
