# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-22 22:32:15 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 11786
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:43999' '-nowindow' '-style' 'windows' '-data' 'AAABDnicVY7NDgFRDIW/IUQsrMUjSHgCa9shElsRjBDmTvwmNjyqNxnfCJNMT9rbnp62NwJGzzzP+Vr9YWgSMxalRe9fMoqoWlHXqsz0VXmh8R/+S5p6hwEpgQVbruxk+jJLDiJwl7/aPxszEThxYcNaPmamuqU6sXMz7/rXCXN7Fz0RQ7OVm6CtLnM6sLfqlYriblCx5uj11N2FfQD60yDM' '-proj' '/data/vpulav2/Work/Jasper/t_ff/t_ff_goldmine/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/t_ff/t_ff_goldmine/.tmp/.initCmds.tcl' 'FPV_t_ff.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/t_ff.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top T_flipflop

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
