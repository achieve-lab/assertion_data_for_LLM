# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.24.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-05-13 18:52:51 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 153044
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:38679' '-nowindow' '-style' 'windows' '-data' 'AAABLHichY5LCsIwEIb/KBZx4RlcC4oH6NptFcGtSHxQEVO0VXCjR/Um8Wu0QlbOkHn8jyFGUvrw3itE+05JlGlK/sK8vkNqFEe9t2Jk/oy61GnMjSTh9TXSSU4r7VUpBxmCrHUknW7gFfyFWpBOZ5XaagOeaYG6i3oHc2We8NeZlnAWnQ3d4S7ZHPc+t3L2Mc+CSD38ReAPbIO/zjrelFonbA==' '-proj' '/data/vpulav2/Work/Jasper/crc_control_unit/crc_control_unit/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/crc_control_unit/crc_control_unit/.tmp/.initCmds.tcl' 'FPV_crc_control_unit.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/crc_control_unit.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top crc_control_unit

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
