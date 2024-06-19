# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:23:56 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 69469
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:32773' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIQnikEsfAhLUUFs0wm2UQTbcPgv6kWTGLDRR/VN4udhhIC73P7MzO6tJyl4FEUhZ/U7wVeoCf4z7/UtAk9V+/S1KjJ7VrLUKIdLic9rq6+zrCJtlWkP0gUxOuJWOXgGnxBj3OqqVGutwEPNUTdRb2Bu1B1unWoBd0GVo040Jp7gByBLdkotJmL2WB3oen+0kfvdUBuN6IZwO7jUXf0GInomfQ==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama3_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama3_1shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama3_1shot.sva

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
