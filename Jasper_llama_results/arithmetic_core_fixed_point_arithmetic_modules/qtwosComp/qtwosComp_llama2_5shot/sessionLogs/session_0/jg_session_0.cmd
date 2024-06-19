# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:23:51 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 69235
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35445' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIQnikEsfAhLUQvBLp1gG0WwDYf/ol40iQEbfVTfJH4eRgi4y+3PzOzeepKCR1EUcla/E3yFmuA/817fIvBUtU9fqyKzZyVLjXK4lPi8tvo6yyrSVpn2IF0QoyNulYNn8Akxxq2uSrXWCjzUHHUT9QbmRt3h1qkWcBdUOepEY+IJfgCyZKfUYiJmj9WBrvdHG7nfDbXRkG4Et4NL3dVvIqAmgA==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama2_5shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama2_5shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_5shot.sva

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
