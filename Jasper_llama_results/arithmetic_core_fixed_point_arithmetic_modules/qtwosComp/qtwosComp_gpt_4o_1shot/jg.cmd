# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:28:57 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 837851
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43755' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIQnikEsfAhLUUGwTCfYRhFsg/gv6p0mMWCjj+qbxC+HEQLucnu7M7PLeJKCZ57nclF/UHyFmpC/8N7fJvBUjWKuVZHZq/JLjXK5lPi8tvq6yCjSTqkOIF2QpU6kUQaewsdUSxrdlGijNXioOeom6i3Mnb6D16kWcFdUGepYY+oZfgCy4qbUYsNyx+jI1PujLbxY0Egj52wIt6dLnOsPI54mkA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_4o_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_4o_1shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_1shot.sva

# Elaborate design and properties
elaborate -top qtwosComp

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
