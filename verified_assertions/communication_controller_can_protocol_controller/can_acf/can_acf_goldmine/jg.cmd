# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-28 19:39:40 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 181791
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46391' '-nowindow' '-style' 'windows' '-data' 'AAABGnicXY5LDgFREEVPEyIGliDGElZgbIpITKXTPiH06/gmJizVTtppQdJu5dXn1q16FQGDe57nvFG96eqMGGo/RM9PMogoo6grZWbyKEWofYe/krqvRY+UwJw1ZzYyXZmYnRa4yp/tH/WZFjhwYslCfsRUdUP1ys7FvO2tY2b2EjekxthsRd+ZxH3QVJ25I7C16vzpihuCugV7L0n9p8ALoYkjEA==' '-proj' '/home/vpulav2/Work/Jasper/can_acf/can_acf_goldmine/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/can_acf/can_acf_goldmine/.tmp/.initCmds.tcl' 'FPV_can_acf.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/can_acf.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property_goldmine.sva

# Elaborate design and properties
elaborate -top can_acf

# Set up Clocks and Resets
clock clk
reset rst

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
