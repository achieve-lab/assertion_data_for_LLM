# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-06-03 18:25:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 836114
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:34721' '-nowindow' '-style' 'windows' '-data' 'AAABGnicVY7NDsFQEIW/SzRi4QGsrSSs2HVtWyKxFfFbKbdoSWx4VG9Spzcq7kxm5syZM5kxQPgsigJn9YdSQMRY/jPz/oLQ4FvZ13xm+vIqNKrlShIo2vQ5YVmwIycW0xOzJJFb7uJzza/KqdxyIWPDWnzETOqm1FtNbsId/TphrtmZozYSaQeKlRC0pEy1bzmo6/5pytupq0P3yUj39kKZ+/IDsTEjUA==' '-proj' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_4o_5shot/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper_corrected/arithmetic_core_fixed_point_arithmetic_modules/qmult/qmult_gpt_4o_5shot/.tmp/.initCmds.tcl' 'FPV_qmult.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/qmult.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_gpt_4o_5shot.sva

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
