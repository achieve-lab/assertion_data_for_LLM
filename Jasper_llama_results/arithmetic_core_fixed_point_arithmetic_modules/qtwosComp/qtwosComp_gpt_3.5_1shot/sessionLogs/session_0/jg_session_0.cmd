# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:28:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 836997
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46075' '-nowindow' '-style' 'windows' '-data' 'AAABLHicbY7LCoJgEIWPRRIteoiWQUJEO3dBW4ugrUQ3i+q31IQ29ai9yd+nZCA0w9zOOTOMI8l/WmtVWvNBchVoiv/MeX8b31HdirlRR+avWpVa1XIlcYmuBrrIKNRemQ4gfZCVTrhRDp7BJ+QYN7op1VYb8EAL1G3UO5g7fY9fZ1rCXVHlqBNNyGd4D2TNTanDRswdoyOT90db/BKDhhrBj6lD2Ag2Lf/+AGsaJoU=' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_3.5_1shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qtwosComp/qtwosComp_gpt_3.5_1shot/.tmp/.initCmds.tcl' 'FPV_qtwosComp.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qtwosComp.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_3.5_1shot.sva

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
