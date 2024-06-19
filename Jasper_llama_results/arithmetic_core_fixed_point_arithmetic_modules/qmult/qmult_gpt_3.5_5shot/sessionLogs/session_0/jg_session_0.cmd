# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:25:22 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 835422
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41029' '-nowindow' '-style' 'windows' '-data' 'AAABHHicVY5NCsJADEa/USziwgN4ABeCbqS7rt1WEdyK+C/VqdoquNGjepPxtVhxEibJfHkhMZKip3NOpdUfhECxRvjPzPtbREa+Ff+ar0xeXpYa1XCFBLy2+jrJaq6tcu1ReigLJbjVHT2nfyWmuNVFmdZaoceaQjehN3Ru1B1uHWtG76wjEwnsgLekklqQKfNWB37dP6bYnZZ5CB+SQzbuILPyzg/yFSNF' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_3.5_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_3.5_5shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_5shot.sva

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
