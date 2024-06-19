# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:25:27 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 835753
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41069' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY7NCsJADIS/VSziwQfw7ElQEDz27LWK4FXE30p1q7YKXvRRfZM6Xay4CUkmkwmJAcJnURQ4qz+UAiLG8p+Z9xeEBt/KvuYz05dXoVEtV5JA0abPCcuCHTmxmJ6YJYncchefa35VTuWWCxkb1uIjZlI3pd5qchPu6NcJc83OHLWRSDtQrISgJWWqfctBXfdPU95OXR25T4a6txfK3JcfsPkjTA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top qmult

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
