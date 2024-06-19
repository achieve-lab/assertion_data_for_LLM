# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-04 19:25:21 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 70222
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:33769' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY7NDsFQEIW/SzRi4QGsrSQkrLu2LZHYNjf+pdyiJbHhUb1JHTcqOpP5OWfOZMYA4aMoCrzV70oBEWP5z8zr24SGqn1wrcpMn5UKjXK5lASKNn2OOGI25OzE9MRYErnjJj7X/KKcyh1nMlYsxUfMpG5Kvdbkqr6jXyfMNTtx0EYi7UCxUActKVPtO/ZC3T9N7K9ZYctIaKh7W+ky/+Ubr8MjOA==' '-proj' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama2_1shot/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper_llama/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_llama2_1shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_llama2_1shot.sva

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
