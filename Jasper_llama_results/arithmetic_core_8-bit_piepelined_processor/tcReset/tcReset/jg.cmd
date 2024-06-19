# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2024.03
# platform  : Linux 4.18.0-513.9.1.el8_9.x86_64
# version   : 2024.03 FCS 64 bits
# build date: 2024.03.27 15:42:27 UTC
# ----------------------------------------
# started   : 2024-04-20 20:52:31 CDT
# hostname  : pal-achieve-06.(none)
# pid       : 337568
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40837' '-nowindow' '-style' 'windows' '-data' 'AAABCHicVY5NCsIwEIW/KBZx4RE8gKAn6NptrYJbEf9Qiik2reBGj+pN4muwQt6QycybLz8GSF/ee4L6T6WEjIXiL/P5FakhVtv3Yid/RzsMusMdkmiNmXHDsuVMzUXOVM6OQmF5yK81r5RLheWO48hBfsZa9FD0SZNG9UR/XbLRzLFnJa7ScsxDX4gYiS51h+Ua3o65Vl8/Cx+O' '-proj' '/data/vpulav2/Work/Jasper/tcReset/tcReset/sessionLogs/session_0' '-init' '-hidden' '/data/vpulav2/Work/Jasper/tcReset/tcReset/.tmp/.initCmds.tcl' 'FPV_tcReset.tcl'


# Analyze design under verification files
set ROOT_PATH ./
set RTL_PATH ${ROOT_PATH}
set PROP_PATH ${ROOT_PATH}

analyze -v2k \
  ${RTL_PATH}/tcReset.v

# Analyze property files
analyze -sva \
  ${RTL_PATH}/bindings.sva \
  ${RTL_PATH}/property.sva

# Elaborate design and properties
elaborate -top tcReset

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
