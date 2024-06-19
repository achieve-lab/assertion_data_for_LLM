# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 13:00:46 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 11036
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:41881' '-nowindow' '-style' 'windows' '-data' 'AAABHHicdY5NCsIwEIW/KBZx4dojiKAn6NptFcGtSP2rFFNaq9iNHtWbxNdihSx8QyYz7yfEAOHTOUeDbqUWEDFX/WDe3yE0+Kj3js8sX94NvTbcWgKdIVMuWDYcKUnETMRsSVWWu/hSeqGeqSw5V/bsxEes5O7LfZBy0zzWXxespRU8lIo5yW81JVRK5cyUjvUyDJTLGvWsbfQ3UeMDJBokSg==' '-proj' '/data/vpulav2/Work/Jasper/synchronizer/synchronizer/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/synchronizer/synchronizer/.tmp/.initCmds.tcl' 'FPV_synchronizer.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/synchronizer.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top synchronizer

# Set up Clocks and Resets
clock clk
reset rst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
