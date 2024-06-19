# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-01 16:56:38 CDT
# hostname  : pal-achieve-07.(none)
# pid       : 123940
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38295' '-nowindow' '-style' 'windows' '-data' 'AAABEHicbY5NCsIwFIS/KBZx4aJHcCnoCbrutorQrYhWUaQptVVwo0f1JnEiVgg4j/c3bybEAMnDOccH/btKREaq+MG8vkNiCOH3Xsgsn0GHQWfuJJFyzIwSy5oDLUcxUzEbzgrLTXyr+0W1UlhqGgp24jNWUg+l3uty1TzRXxfkum3lLvRKqbmWu2Gu9CyM5KjEWk7a4j9ajzdWniFY' '-proj' '/home/vpulav2/Work/Jasper/clean_rst/clean_rst/sessionLogs/session_0' '-init' '-hidden' '/home/vpulav2/Work/Jasper/clean_rst/clean_rst/.tmp/.initCmds.tcl' 'FPV_clean_rst.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/clean_rst.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top clean_rst

# Set up Clocks and Resets
clock clk
reset -none

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report


exit
