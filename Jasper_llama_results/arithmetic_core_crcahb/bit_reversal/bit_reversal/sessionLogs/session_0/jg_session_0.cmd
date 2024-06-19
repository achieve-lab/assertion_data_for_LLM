# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 16:47:33 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 137683
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38769' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY7NCgFhFIafIZKFtUuQ4gqsbZGylf9IvmmYUTZcqjsZzwg1C+/p/L3nPacTAYN7nue8Ub0Z6owYaj9Ez08xiCij6CtlZvIoZah9l7+Sut6ix4nAnB0pe5muzIKjFrjKp87PxlgLJFzYsJYfMVXdUL11kll3/HXMzNnSSxdzojbTEy8UN/uyKzM03YvlAwe79t+NAi8UXiPy' '-proj' '/data/vpulav2/Work/Jasper/bit_reversal/bit_reversal/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/bit_reversal/bit_reversal/.tmp/.initCmds.tcl' 'FPV_bit_reversal.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/bit_reversal.sv

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top bit_reversal

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
