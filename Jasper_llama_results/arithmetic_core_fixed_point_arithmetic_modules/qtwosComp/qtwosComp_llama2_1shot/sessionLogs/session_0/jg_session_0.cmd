# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:23:46 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 68935
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:42675' '-nowindow' '-style' 'windows' '-data' 'AAABKnicbY69CsJAEIQnikEsfAhLUUHrdIJtFME2HP6LetEkBmz0UX2T+HkYIeAutz8zs3vrSQoeRVHIWf1O8BVqgv/Me32LwFPVPn2tisyelSw1yuFS4vPa6ussq0hbZdqDdEGMjrhVDp7BJ8QYt7oq1Vor8FBz1E3UG5gbdYdbp1rAXVDlqBONiSf4AciSnVKLiZg9Vge63h9t5H431EYjuiHcDi51V78BImgmfA==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
